
import 'package:get_it/get_it.dart';
import 'package:lingo/Core/Helpers/BaseBrain.dart';
import 'package:lingo/Core/Helpers/BaseDio.dart';

final appSingleton = GetIt.instance;

initInjections() async{
  BaseBrain.dio = BaseDio().dio;
}