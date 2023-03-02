import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random=Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Lottery App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Lottery winning number is 5',
              style:  TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height:400,
            width: 320,
            decoration: BoxDecoration(
              color:x==5?Colors.blue.shade100: Colors.red.shade100,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child:x==5 ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                 const Icon(Icons.done_all, color: Colors.green, size: 35),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Congratulation you have won the lottery.you number is $x ',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 25),
                  )
                ],
              ): Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                 const Icon(Icons.error, color: Colors.red, size: 35),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Better Luck Time your number is $x \n try again',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 25),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
           const  Text(
                    'made by JayeshPanchasara',
                    textAlign: TextAlign.left,
                    style:  TextStyle(fontSize:20),
                  )
          
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x=random.nextInt(6);
          print(x);
          setState(() {
            
          });
        },
        child: const Icon(Icons.refresh),
      ),
    ));
  }
}
