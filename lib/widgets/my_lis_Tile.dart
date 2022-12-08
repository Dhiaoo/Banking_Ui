import 'package:flutter/material.dart';

class MyLisTile extends StatelessWidget {
  final String iconImagePath;
  final String tileTitle;
  final String tileSubTitle;


  const MyLisTile({Key? key, required this.iconImagePath, required this.tileTitle, required this.tileSubTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Row(
        children: [
          Container(
            height: 80,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12)
            ),
            child: Image.asset(iconImagePath),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tileTitle,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 8,),
              Text(tileSubTitle,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[500]
                ),
              ),
            ],
          ),
          SizedBox(width: 70,),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
