import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 const Row(children: [
                    Text("My ", style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),),
                    Text('Cards', style: TextStyle(
                      fontSize: 28
                    ),)
                  ],),
              
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle
                    ),
                    child:const Icon(Icons.add),
                  )
                ],
              ),
            )
      
      
            //Cards
      
      
            //3 buttons -> send + pay + bills
      
      
      
            //Column -> stats + transactions 
          ],
        ),
      ),
    );
  }
}
