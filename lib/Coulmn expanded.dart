import 'package:flutter/material.dart';

class Test extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body:
       Row(
         children: [
           Expanded(
             child: Text('First Text',style: TextStyle(
               backgroundColor: Colors.green,fontSize: 30.0
             ),),
           ),
           Text('Second Text',style: TextStyle(
               backgroundColor: Colors.green,fontSize: 30.0
             ),),
         ],
        ),
    );
  }
}
