import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_wallet/util/my_button.dart';
import 'package:my_wallet/util/my_card.dart';
import 'package:my_wallet/util/my_tile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //pagecontroller

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.home,
                    size: 28,
                    color: Colors.blueAccent,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                    size: 28,
                  )),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    Color(0xffde6161),
                    Color(0xff2657eb),
                    // Color(0xffFDB99B),
                  ], transform: GradientRotation(pi / 4))),
              child: Icon(Icons.monetization_on, size: 32,),
            ),
            shape:const CircleBorder(),
            foregroundColor: Colors.white),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // bottomNavigationBar: BottomAppBar(),
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text(
                        "My ",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Cards',
                        style: TextStyle(fontSize: 28),
                      )
                    ],
                  ),

                  //Plus button
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.grey[400], shape: BoxShape.circle),
                    child: const Icon(Icons.add),
                  )
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            //Cards
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: const [
                  MyCard(
                    begin: Color(0xff43C6AC),
                    end: Color(0xff191654),
                    balance: 5250.20,
                    cardNumber: 123456,
                    exMonth: 10,
                    exYear: 24,
                  ),
                  MyCard(
                    begin: Color(0xff3494E6),
                    end: Color(0xffEC6EAD),
                    balance: 5250.20,
                    cardNumber: 123456,
                    exMonth: 10,
                    exYear: 24,
                  ),
                  MyCard(
                    begin: Color(0xffee0979),
                    end: Color(0xffff6a00),
                    balance: 5250.20,
                    cardNumber: 123456,
                    exMonth: 10,
                    exYear: 24,
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(),
            ),

            const SizedBox(
              height: 25,
            ),
            //3 buttons -> send + pay + bills

            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //send button
                children: [
                  //send button
                  MyButton(
                      textButton: 'Send', assetImage: 'assets/transfer.png'),
                  //send Pay
                  MyButton(
                      textButton: 'Pay', assetImage: 'assets/credit-card.png'),
                  // send Bills
                  MyButton(textButton: 'Bills', assetImage: 'assets/bill.png'),
                ],
              ),
            ),

            const SizedBox(
              height: 25,
            ),
            //Column -> stats + transactions

            const Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  MyTile(
                      name: 'Statistics',
                      sub: 'Payment and Income',
                      path: 'assets/analytics.png'),
                  SizedBox(
                    height: 20,
                  ),
                  MyTile(
                      name: 'Transactions',
                      sub: 'Transaction History',
                      path: 'assets/lending.png'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
