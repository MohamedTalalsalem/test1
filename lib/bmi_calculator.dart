import 'dart:math';

import 'package:flutter/material.dart';

import 'ResultScreen.dart';

class BmiScreen extends StatefulWidget {
  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool ismMale=true;
  double height=120;
  int weight=40;
  int age=20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/body.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                            ismMale=true;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('images/male.png'),
                                height: 90.0,
                                width: 90.0,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(
                                    fontSize: 25.0, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: ismMale ? Colors.blue : Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                            ismMale=false;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('images/female.png'),
                                height: 90.0,
                                width: 90.0,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(
                                    fontSize: 25.0, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: !ismMale ? Colors.blue : Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                            fontSize: 40.0, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                                fontSize: 40.0, fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'CM',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Slider(
                          value:height ,
                          max: 220.0,
                          min: 80.0,
                          onChanged: (value) {
                            setState(() {
                              height=value;
                            });
                          })
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey),
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, bottom: 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style: TextStyle(
                                fontSize: 40.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${weight}',
                            style: TextStyle(
                                fontSize: 40.0, fontWeight: FontWeight.w900),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  onPressed: () {setState(() {
                                    weight--;
                                  });},
                                  heroTag: 'weight-',
                                  mini: true,
                                  child: Icon(Icons.remove)),
                              SizedBox(
                                width: 5.0,
                              ),
                              FloatingActionButton(
                                  onPressed: () {setState(() {
                                    weight++;
                                  });},
                                  heroTag: 'weight+',
                                  mini: true,
                                  child: Icon(Icons.add)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15.0),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15.0, bottom: 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                                fontSize: 40.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${age}',
                            style: TextStyle(
                                fontSize: 40.0, fontWeight: FontWeight.w900),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  onPressed: () {setState(() {
                                    age--;
                                  });},
                                  heroTag: 'age-',
                                  mini: true,
                                  child: Icon(Icons.remove)),
                              SizedBox(
                                width: 5.0,
                              ),
                              FloatingActionButton(
                                  onPressed: () {setState(() {
                                    age++;
                                  });},
                                  heroTag: 'age+',
                                  mini: true,
                                  child: Icon(Icons.add)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )),
            Container(
                 color: Colors.blue,
                width: double.infinity,
                height: 50.0,
                child: MaterialButton(
                  onPressed: ()
                  {
                    var result =weight/pow(height/100,2);
                    print(result.round());
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context)=>Result(age: age,ismMale: ismMale,result:result ,)));
                  },
                  height: 60.0,
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
