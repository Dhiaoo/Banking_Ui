import 'package:banking_ui/widgets/card.dart';
import 'package:banking_ui/widgets/my_button.dart';
import 'package:banking_ui/widgets/my_lis_Tile.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 70,),
                      Row(
                        children: [
                          Text("My",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold
                            ),),
                          Text("Cards",
                            style: TextStyle(
                              fontSize: 28,

                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 190,),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.grey[400],
                            shape: BoxShape.circle
                        ),
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25,),
            Container(
              height: 170,
              width: 400,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(balance: 1245.15, cardNumber: 186756789, expiryMounth: 12,expiryYear: 2015, color: Colors.grey,),
                  MyCard(balance: 1965.15, cardNumber: 129745489, expiryMounth: 12,expiryYear: 2015, color: Colors.amber,),
                  MyCard(balance: 3052.15, cardNumber: 123000859, expiryMounth: 12,expiryYear: 2015, color: Colors.deepPurple,),
                ],
              ),
            ),
            SizedBox(height: 25,),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                 My_Button(ImagePath: 'lib/icons/send-money.png', Txt: "Send"),
                  My_Button(ImagePath: 'lib/icons/credit-card.png', Txt: "Pay"),
                  My_Button(ImagePath: 'lib/icons/bill.png', Txt: "Bills")
                ],
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  MyLisTile(iconImagePath: "lib/icons/static.png", tileTitle: "Statics", tileSubTitle: "Payemnt and income"),
                  MyLisTile(iconImagePath: "lib/icons/transaction.png", tileTitle: "Transaction", tileSubTitle: "Transaction History")
                ],
              ),
            )
                    ],
                  )
              ),
      floatingActionButton: FloatingActionButton(onPressed: () { },
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on,
          size: 25,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[300],
        child: Padding(
          padding: EdgeInsets.only(top: 8, bottom: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround, 
            children: [
              IconButton(
                  onPressed: (){ },
                  icon: Icon(Icons.home,
                  size: 32,
                    color: Colors.pink,
                  )
              ),
              IconButton(
                  onPressed: (){ },
                  icon: Icon(Icons.settings,
                    size: 32,
                    color: Colors.pink,
                  )
              )
            ],
          ),
        ),
      ),

    );

  }
}
