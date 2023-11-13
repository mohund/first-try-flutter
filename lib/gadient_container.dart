// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
// import 'package:first_app/styled_text.dart';
import 'package:first_app/change_images.dart';

// --------------------------------
//  هنا سوينا متغيرات  تسهل عملية التغيير
final statredAlignment = Alignment.topLeft;
//  final is thesameas var ,
// the only difference is that it's immutable and cannot
// be updated. It can only be set once
// ----------------------------------
// A const variable is a compile-time constant. The object's entire deep state can
// be determined at compile time and will be frozen and completely immutable.

// بالمختصر الفرق انه  الفاينل  ما تنحفظ الا لمى الكود يوصلها
//  اما  لكوسنت هذي تستخدم و بعدها تنجفظ في الجهاز نسخة يصير  اذا
//  اشتغل الكود على طول يطلع الناتج ما يحتاج يوصلها عشان يخزنها  ويشتغل

var endedAlignment = Alignment.bottomRight;
//   var و final

// var allows you to assign a variable without specifying a type

// final is the same as var , the only difference is that
// it's immutable and cannot be updated

// --------------------------------

// var backgoundColors = const [
//   Color.fromARGB(255, 39, 4, 63),
//   Color.fromARGB(255, 117, 14, 220),
//   Colors.orange
// ];

// class GadientContainer extends StatelessWidget {
//   //  هنا سوينا كلاس و سميناه و بعدها عشان ياخذ خواص كلاس الستيت ويدجت  سوينا له اسكتند زي الوراثة
//   const GadientContainer(this.backgoundColors,
//       {super.key}); // عشان نشيل  الخط الازرق نسوي مرجع للكلاس الي سوينا منه وراثة  و استخدمنا كوسنت عشان نحفظ فيالجهاز نسخة و يصير يرجعها بشكل اسرع

//   final List<Color> backgoundColors;

//   // StatelessWidget  === هذي تسخدم اذا كنا رح نسوي فقط تعديل على الواجهة ما تستقبل اي تغيير
//   @override //  هنا عشان نسمح لاعادة تعريف الكلاس بكل سهوله نقول لكمبايلر ترانا غيرنا في الاعدادات
//   Widget build(context) {
//     //  هذي عشان تبني الواجهة
//     return Container // تساعدنا في التصميم و تعديلات الواجهةة

//         (
//       decoration: BoxDecoration(
//         // background (decoration) for Container using BoxDecoration.
//         //   Inside BoxDecoration,
//         //  the background of the Container is defined using a LinearGradient.
//         gradient: LinearGradient(
//           colors: backgoundColors,
//           begin: statredAlignment, // This specifier determines the starting
//           //point of the gradient from the top-left corner of the Container
//           end: endedAlignment,
//           // This specifier determines the ending point of the gradient
//           //at the bottom-right corner of the Container.
//         ),
//       ),
//       child: Center(
//         // لتوسيط النص
//         child: TextClass(
//             'hello i use class and i also \ni can pass any thing i want '),
//       ),
//     );
//   }
// }

// طريقة ثانةي للحل

// ------------------------------------

// StatelessWidget ||  تستخدم مع الاشياء الثابته الي ما تتحرك يعني تفيد اذا رح ندخل قيمة و نغير لون اما مع الويدكت الي تتغير  شكلها او صورها فهذي ما تفنع

// ------------------------------------

// StatefulWidget || هذي تنفع مع الاشياء المتغيرة

// ------------------------------------

class GadientContainer extends StatelessWidget {
  //  هنا سوينا كلاس و سميناه و بعدها عشان ياخذ خواص كلاس الستيت ويدجت  سوينا له اسكتند زي الوراثة
  GadientContainer(this.color1, this.color2, this.color3,
      {super.key}); //  عشان نشيل  الخط الازرق نسوي مرجع للكلاس الي سوينا منه وراثة  و استخدمنا كوسنت عشان نحفظ فيالجهاز نسخة و يصير يرجعها بشكل اسرع  || تعديل  شلنا  الكونستنت لانه اضفنا ميثود جديد فصار الكلاس مب ثابت متغير
  //  صار عندنا فاريبل مخصص لتغير الصور
  final Color color1;
  final Color color2;
  final Color color3;
  var activeDiceImage = 'assets/images/dice-images/dice-1.png';
  void rollDice() {
    // هنا رح نحطط  الكود الي رح يتفعل يوم نفعل الزر حقنا
    activeDiceImage = 'assets/images/dice-images/dice-3.png';
  }

  // StatelessWidget  === هذي تسخدم اذا كنا رح نسوي فقط تعديل على الواجهة ما تستقبل اي تغيير
  @override //  هنا عشان نسمح لاعادة تعريف الكلاس بكل سهوله نقول لكمبايلر ترانا غيرنا في الاعدادات
  Widget build(context) {
    //  هذي عشان تبني الواجهة
    return Container // تساعدنا في التصميم و تعديلات الواجهةة

        (
      decoration: BoxDecoration(
        // background (decoration) for Container using BoxDecoration.
        //   Inside BoxDecoration,
        //  the background of the Container is defined using a LinearGradient.
        gradient: LinearGradient(
          colors: [color1, color2, color3],
          begin: statredAlignment, // This specifier determines the starting
          //point of the gradient from the top-left corner of the Container
          end: endedAlignment,
          // This specifier determines the ending point of the gradient
          //at the bottom-right corner of the Container.
        ),
      ),
      child: Center(
        // لتوسيط النص
        child: ChangeImagesClass(),
      ),
    );
  }
}
