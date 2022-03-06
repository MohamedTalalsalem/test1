import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class more extends StatefulWidget {

  @override
  State<more> createState() => _moreState();
}

class _moreState extends State<more> {
  int counter=0;
  void initstate()
  {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('مسبحة اسلامية'),
        actions: [
          TextButton(onPressed: (){setState(() {
            counter=0;
          });}, child:Text('Rest',style: TextStyle(color: Colors.black,fontSize:25.0),))
        ],
      ),
      body:
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://www.sqorebda3.com/vb/Photo/2015_1412168264_820.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                setState(() {
                  counter++;
                });
                }, child: Text('استغفر الله العظيم',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.white),)),
              Text('$counter',style: TextStyle(fontSize: 30.0,color: Colors.white) ,),

            ],
          ),
        ),
      ),
    );
  }
}
