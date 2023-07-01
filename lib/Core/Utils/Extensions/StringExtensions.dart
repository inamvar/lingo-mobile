import 'package:flutter/foundation.dart';
import 'package:lingo/Core/Helpers/Tools.dart';
import 'package:url_launcher/url_launcher.dart';

extension StringExtensions on String {
  bool get isValidPass => Tools.isValidPass(this);
  openAsUrl() async {
    if (!await launchUrl(
        mode: LaunchMode.externalApplication, Uri.parse(this))) {
      if(kDebugMode){
        print("Cannot launch $this as url");
      }
    }
  }
}
