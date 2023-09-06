import 'dart:convert';

import 'package:dartz/dartz_unsafe.dart';
import 'package:lingo/Core/Dto/Models/Banner.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Setting.dart';

import 'package:lingo/Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/General/GetBannersResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Order/CreateOrderResponseDtoUseCase.dart';

import 'package:lingo/Core/Dto/UseCases/Responses/Search/SearchResponseDtoUseCase.dart';

import '../../../Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import '../../../Core/Helpers/BaseBrain.dart';
import '../../../Core/Interfaces/DataSources/Remote/GeneralRemoteDataSource.dart';
import '../../../Core/Utils/ApiEndpoints.dart';

class GeneralRemoteDataSourceImpl implements GeneralRemoteDataSource {
  @override
  Future<BaseNetworkResponse<SearchResponseDtoUseCase>> search(
      PaginationRequestDtoUseCase requestDtoUseCase) async {
    var dio = BaseBrain.dio;
    var result = await dio
        .get(ApiEndpoints.search, queryParameters: requestDtoUseCase.toJson())
        .then((value) {
      ResponseDtoUseCase response = ResponseDtoUseCase.fromJson(value.data);
      return BaseNetworkResponse<SearchResponseDtoUseCase>(
          data: SearchResponseDtoUseCase.fromJson(response.data!),
          message: response.message);
    });

    return result;
  }

  @override
  Future<BaseNetworkResponse<CreateOrderResponseDtoUseCase>> createOrder(
      String courseId) async {
    var dio = BaseBrain.dio;
    var result = await dio
        .post(ApiEndpoints.createOrder,
            data: jsonEncode({
              "items": [
                {"courseId": int.parse(courseId)}
              ],
              "CurrencyType": 1,
              "ClientType": "MobileApp"
            }))
        .then((value) {
      ResponseDtoUseCase response = ResponseDtoUseCase.fromJson(value.data);
      return BaseNetworkResponse<CreateOrderResponseDtoUseCase>(
          data: CreateOrderResponseDtoUseCase.fromJson(response.data!),
          message: response.message);
    });

    return result;
  }

  @override
  Future<BaseNetworkResponse<GetBannersResponseDtoUseCase>> getBanners() async {
    var dio = BaseBrain.dio;
    var result = await dio.get(ApiEndpoints.banners).then((value) {
      List<Banner> banners = [];
      List<dynamic> bannersArrayObj = value.data["data"];
      bannersArrayObj.forEach((banner) {
        banners.add(Banner.fromJson(banner));
      });
      return BaseNetworkResponse<GetBannersResponseDtoUseCase>(
          data: GetBannersResponseDtoUseCase(banners: banners),
          message: value.data!["message"]);
    });

    return result;
  }

  @override
  Future<BaseNetworkResponse<SearchResponseDtoUseCase>> searchByTag(
      PaginationRequestDtoUseCase requestDtoUseCase) async {
    var dio = BaseBrain.dio;
    var result = await dio
        .get(ApiEndpoints.searchByTag, queryParameters: {
          "filter":requestDtoUseCase.filter,
      "pageNumber": requestDtoUseCase.pageNumber,
    })
        .then((value) {
      ResponseDtoUseCase response = ResponseDtoUseCase.fromJson(value.data);
      return BaseNetworkResponse<SearchResponseDtoUseCase>(
          data: SearchResponseDtoUseCase.fromJson(response.data!),
          message: response.message);
    });

    return result;
  }

  @override
  Future<BaseNetworkResponse<List<Setting>>> getSettings() async {
    var dio = BaseBrain.dio;
    var result = await dio.get(ApiEndpoints.settings).then((value) {
      List<Setting> settings = [];
      List<dynamic> settingsArrayObj = value.data["data"];
      settingsArrayObj.forEach((banner) {
        settings.add(Setting.fromJson(banner));
      });
      return BaseNetworkResponse<List<Setting>>(
          data: settings,
          message: value.data!["message"]);
    });

    return result;
  }
}
