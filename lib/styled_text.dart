// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

//  هنا سوينا متغيرات  تسهل عملية التغيير
var textSizee = 30.0;

var theColor = Colors.white;

class TextClass extends StatelessWidget {
  const TextClass(this.text, {super.key});
  final String text;

// هنا جمعنا بين كوسنت و فاينل
//   فخلينا الكلاس  كونست لانه خلاص مارح نغيره فا ينحظ جزء
//  خليناه  فاينل لانه مارح يتغير الاضمنينًا بعد الاستخدام

  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: textSizee,
        color: theColor,
      ),
    );
  }
}
