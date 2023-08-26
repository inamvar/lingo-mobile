import 'package:flutter/material.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/CommonWidgets/BaseScreen.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return BaseScreen(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 200),
          child: Wrap(
            runSpacing: 10,
            children: [
              Row(
                children: [
                  Text(
                    "سوالات متداول دوره بزرگسال",
                    style: const TextStyle().withIranSans(
                        color: colorScheme.background,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              buildExpandable(context, "چگونه ثبت‌نام کنم؟",
                  '''برای تهیه پکیج های آموزشی لینگو4030 ابتدا می‌بایست از قسمت منوی عضویت ، عضو‌ شوید و برای احراز هویت شماره تلفن همراه خود را وارد نمایید، پس از انتخاب پکیج آموزشی و مطالعه توضیحات و شرایط آن، اقدام به خرید نمایید.'''),
              buildExpandable(
                  context,
                  "نحوه ی دسترسی به محصولات آموزشی از چه طریقی است؟",
                  """از طریق سایت مجموعه (LINGO4030.COM) شما می توانید از طریق اپلیکیشن های موبایل برای گوشی های اندروید و I.O.S نیز به محصولات دسترسی پیدا کنید."""),
              buildExpandable(
                  context,
                  "اگر بخواهم از پایه شروع کنم آیا باید تعیین سطح شوم؟",
                  """خیر، نیازی نیست. شما می توانید بدون پیشینه آموزش زبان، یادگیری خود را شروع کنید. از اینرو برای افراد مبتدی، ما کتاب speak now1 و مجموعه lingo1 را تهیه کردیم."""),
              buildExpandable(
                  context,
                  "برای تحصیل در دوره‌ی بزرگسالان چه کتاب‌هایی باید تهیه کنم؟",
                  """PDF کتاب برای تمامی دوره هایی که از روی کتاب تدریس شده است، بعد از خرید دوره برای شما قابل دانلود می باشد."""),
              buildExpandable(context,
                  "نحوه‌ی سطح‌بندی سیستم LINGO4030 چگونه است؟", "از A1 تا C2"),
              Row(
                children: [
                  Text(
                    "سوالات متداول دوره نوجوان  ۸ الی ۱۴ سال ",
                    style: const TextStyle().withIranSans(
                        color: colorScheme.background,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              buildExpandable(context, "هدف از یادگیری/آموزش چیست؟",
                  """هدف نهایی در دوره‌های نوجوانان لینگو4030، تربیت زبان‌آموزانی است که روان و صحیح، انگلیسی صحبت می‌کنند و می‌توانند از دانسته‌های خود به بهترین شکل برای ساختن جملات انگلیسی و برقراری ارتباط در موقعیت‌های مختلف استفاده نمایند.مهمترین ویژگی بعد از تمرین دوره‌ها، توانایی آن‌ها در شرکت در مکالمات روزمره انگلیسی بدون مشکل و استرس است."""),
              buildExpandable(
                  context,
                  " فرزند من از چه سنی می تواند در این دوره‌ها شرکت کند؟",
                  "دوره آموزش مکالمه نوجوانان لینگو4030 مخصوص رده سنی 8 تا 14 سال است."),
              Row(
                children: [
                  Text(
                    "سوالات متداول دوره کودک  ۳ الی ۷ سال",
                    style: const TextStyle().withIranSans(
                        color: colorScheme.background,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              buildExpandable(
                  context,
                  "چگونه می‌توانم فرزندم را آنلاین ثبت‌نام کنم؟",
                  """برای تهیه پکیج های آموزشی لینگو4030 ابتدا می‌بایست از قسمت منوی عضویت ، عضو‌ شوید و برای احراز هویت شماره تلفن همراه خود را وارد نمایید، پس از انتخاب پکیج آموزشی و مطالعه توضیحات و شرایط آن، اقدام به خرید نمایید. سیستم آموزشی در این گروه سنی بسیار پویا و به‌روز بوده و از اساتید مجربی بهره می‌برد که کلاس‌های ویژه‌ی آموزش و کار با کودکان را فراگرفته‌اند و مسئولیت برگزاری این کلاس‌ها را دارند."""),
              buildExpandable(
                  context,
                  "بعد از دیدن ویدیوها و تمرین آن در منزل چه اتفاقاتی می‌افتد؟",
                  "عموما در ویدیئوها کودکان به شکل بازی و سرگرمی، سرود و نمایش به این رده ی سنی ارائه می‌شود.")
            ],
          ),
        ),
      ),
    );
  }

  buildExpandable(BuildContext context, String title, String content) {
    var colorScheme = Theme.of(context).colorScheme;
    return ExpansionTile(
      collapsedBackgroundColor: colorScheme.background,
      backgroundColor: colorScheme.background,
      collapsedShape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      iconColor: Colors.white,
      childrenPadding: EdgeInsets.all(5),
      title: Text(
        title,
        style: const TextStyle().withIranSans(color: Colors.white),
      ),
      collapsedIconColor: Colors.white,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(6)),
          padding: EdgeInsets.all(10),
          child: Text(
            content,
            style: const TextStyle().withIranSans(color: Color(0xff525252)),
          ),
        )
      ],
    );
  }
}
