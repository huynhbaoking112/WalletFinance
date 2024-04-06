import 'dart:math';

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {

  final Color begin;
  final Color end;
  final double balance;
  final int cardNumber;
  final int exMonth;
  final int exYear;

  const MyCard({super.key, required this.begin, required this.end, required this.balance, required this.cardNumber, required this.exMonth, required this.exYear});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
                width: 300,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  // color: Colors.purple[200],
                  gradient: LinearGradient(colors: [
                    begin,
                    end,
                  ],
                  transform:const GradientRotation(pi/4),
                  ),
                  borderRadius: BorderRadius.circular(12)
                ),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
      
                

                    //balance
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Balance', style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                        ),),
                        Image(image: AssetImage('assets/visa.png',),height: 50,)
                      ],
                    ),
                    
           
      
                    //Balance value
                    Text('\$'+balance.toString(), style:const TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w600
                    ),),
      
                     SizedBox(height: 10,),
                    //Card NUM
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(cardNumber.toString(), style:const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),),
                        Text(exMonth.toString()+'/'+exYear.toString(), style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),),
                      ],
                    )
                  ],
                ),
              ),
    );
  }
}