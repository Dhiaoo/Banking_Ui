import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMounth;
  final int expiryYear;
  final color;
   MyCard({Key? key,
     required this.balance,
     required this.cardNumber,
     required this.expiryMounth,
     required this.expiryYear,
     required this.color
   } ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
                Text("Balance",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
            SizedBox(height: 10,),
            Text("\$"+ balance.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(cardNumber.toString(),
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                Text("$expiryMounth/$expiryYear",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
