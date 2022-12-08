import 'package:flutter/material.dart';

class My_Button extends StatelessWidget {
  final String ImagePath;
  final String Txt;

  const My_Button({Key? key, required this.ImagePath, required this.Txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          height: 90,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
             // color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 10
                )
              ]
          ),
          child: Center(
            child: Image.asset(ImagePath),
          ),
        ),
        SizedBox(height: 12,),
        Text(Txt,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700]
          ),
        )
      ],
    );
  }
}
