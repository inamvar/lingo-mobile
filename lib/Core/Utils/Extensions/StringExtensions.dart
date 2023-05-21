import 'package:lingo/Core/Helpers/Tools.dart';

extension StringExtensions on String{
  bool get isValidPass => Tools.isValidPass(this);
}