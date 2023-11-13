import 'dart:math';

import 'package:flutter/material.dart';

final randomizer1 = Random();
final randomizer2 = Random();

class ChangeImagesClass extends StatefulWidget {
  const ChangeImagesClass({super.key});
  @override
  State<ChangeImagesClass> createState() {
    // TODO: implement createState

    return _activeDiceImageStae();
  }
}

class _activeDiceImageStae extends State<ChangeImagesClass> {
  var activeDiceImage1 = 'assets/images/dice-images/dice-1.png';
  var activeDiceImage2 = 'assets/images/dice-images/dice-1.png';
  void rollDice() {
    var rollDicenumber1 = randomizer1.nextInt(6) + 1;
    var rollDicenumber2 = randomizer2.nextInt(6) + 1;
    // هنا رح نحطط  الكود الي رح يتفعل يوم نفعل الزر حقنا
    setState(() {
      activeDiceImage1 = 'assets/images/dice-images/dice-$rollDicenumber1.png';
      activeDiceImage2 = 'assets/images/dice-images/dice-$rollDicenumber2.png';
    });
  }

  @override
  Widget build(contxt) {
    return Column(
      // اضفنا هنا كولم او زي بالعربي نعرف انه عامود عشان نقدر نرتب  الويدجت عليه لانه  الشايلد ياخذ قيمة واحدة فقط
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Image.asset(activeDiceImage1,
                width: 200.0, // العرض
                height: 200.00 // الارتفاع,
                ),
            Image.asset(activeDiceImage2,
                width: 200.0, // العرض
                height: 200.00 // الارتفاع,
                )
          ],
        ),
        // فلاتر يدعم ثلاث انواع من الازرار
        //   النوع  الاول
        // ElevatedButton(onPressed: onPressed, child: child)
        //  هذا النوع من الازار له خلفية ملونة و عنده ظل خفيفف

        //  النوع الثاني
        // OutlinedButton(onPressed: onPressed, child: child)
        //  في هذا النوع ليس له خلفية ولكن له حدود

        //  النوع الثالث
        // TextButton(onPressed: onPressed, child: child)
        //  هذا النوع يمثل فقط نصوص قابلة للضفط
        // const SizedBox(
        //   height: 20,    طريقة ثانية لتوسيع  المسافة
        // ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(20), // هذي عشان نضيف  مسافة
            foregroundColor: Colors.white, // هذي عشان اللون
            textStyle: const TextStyle(fontSize: 28), // هذي عشان حجم النص
          ),
          child: const Text('Roll Dice'),
        )
        //   child    ==    هنا رح نحط ايش رح نعرض على الزر
        //  onPressed == ايش ردة الفعل الي رح تصير

        //  onPressed    == هنا عندك حليين لقيم الاول انك تكتب
        //  (نخلي هذا فاضي لانه بدون اسم تكون) [ و هنا نكتب الكود الي نبيه يشتغل ]
        //تصير كذا ====== onPressed :  () []
        // الطريقة الثانية نسوي ميثود و نحطها ===  onPressed : اسم الميثود
      ],
    );
  }
}
