import 'package:flutter/material.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/CommonWidgets/BaseScreen.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return BaseScreen(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Flexible(
                    flex: 3,
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "تخفیف 50% لینگو",
                            style: TextStyle().withIranSans().withIranSans(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: colorScheme.background),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است،",
                            style: TextStyle().withIranSans().withIranSans(
                                fontSize: 12, color: colorScheme.background),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Image.asset("assets/images/offers_ic_0.png"),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Flexible(
                    flex: 3,
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "تخفیف 40% لینگو",
                            style: TextStyle().withIranSans().withIranSans(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: colorScheme.background),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است،",
                            style: TextStyle().withIranSans().withIranSans(
                                fontSize: 12, color: colorScheme.background),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Image.asset("assets/images/offers_ic_1.png"),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Flexible(
                    flex: 3,
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "تخفیف 30% لینگو",
                            style: TextStyle().withIranSans().withIranSans(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: colorScheme.background),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است،",
                            style: TextStyle().withIranSans().withIranSans(
                                fontSize: 12, color: colorScheme.background),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Image.asset("assets/images/offers_ic_2.png"),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Flexible(
                    flex: 3,
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "تخفیف 20% لینگو",
                            style: TextStyle().withIranSans().withIranSans(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: colorScheme.background),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است،",
                            style: TextStyle().withIranSans().withIranSans(
                                fontSize: 12, color: colorScheme.background),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Image.asset("assets/images/offers_ic_3.png"),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
