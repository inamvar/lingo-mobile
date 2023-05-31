import 'package:get/get.dart';
import 'package:lingo/Presentation/Home/HomeScreen.dart';
import 'package:lingo/Presentation/Profile/ProfileScreen.dart';

class MainScreenController extends GetxController{

  var currentIndex = 1.obs;

  final pages = [
    ProfileScreen(),
    HomeScreen(),
  ];

  changePage(int index){
    currentIndex.value = index;
    update();
  }
}