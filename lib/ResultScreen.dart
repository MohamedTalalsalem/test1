import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
final double result;
final bool ismMale;
final int age;
//helo
  const Result({Key? key, required this.result, required this.ismMale, required this.age}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI RESULT'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/body.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('images/fitness.png'),
                fit: BoxFit.cover,
              ),
            ),
            height: 150.0,
            width: 300.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Gender: ${ismMale ? 'Male' : 'Female'}',style:
                TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.red),),
                Text('Result: ${result.round()}',style:
                TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.red),),
                Text('Age: $age',style:
                TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.red),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
