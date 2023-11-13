// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:first_app/gadient_container.dart';

void main() {
  //هذه الدالة هي الدخول الرئيسي للتطبيق. يتم استدعاؤها عند بدء تشغيل التطبيق.
  runApp(
    //هذه الدالة تقوم بتشغيل التطبيق وتأخذ مكون واجهة المستخدم كوسيط لعرضه في التطبيق.
    MaterialApp // الفريم حقنا الي يشتغلنا التطبيق
        (
      home: // الشاشة الرئيسية
          Scaffold // مكون يُستخدم لبناء واجهات الصفحات في التطبيق
              (
        // body: GadientContainer([
        //   Color.fromARGB(255, 39, 4, 63),
        //   Color.fromARGB(255, 117, 14, 220),
        //   Colors.orange
        // ])
        body: GadientContainer(Color.fromARGB(255, 39, 4, 63),
            Color.fromARGB(255, 117, 14, 220), Colors.orange),
      ),
    ),
  );
}
