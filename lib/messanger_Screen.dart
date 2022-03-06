import 'package:flutter/material.dart';

import 'Components/reuseable.dart';

class MessangerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20.0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage(
                  'https://th.bing.com/th/id/R.d0f4c222d365ae7601658f6e7aa4848f?rik=TAIhx6rhEQ0kJQ&pid=ImgRaw&r=0'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                  radius: 18.0,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ))),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                  radius: 18.0,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ))),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.grey[300]),
                padding: EdgeInsets.all(2.0),
                child: Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text('Search')
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)=>buildStoryItem(),
                    separatorBuilder: (context,index)=> SizedBox(width: 10.0,),
                    itemCount: 8),
              ),
              SizedBox(height: 10.0,),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemBuilder: (context,index)=>buildChatItem(),
                  separatorBuilder: (context,index)=> SizedBox(height: 20.0,),
                  itemCount: 10),

            ],
          ),
        ),
      ),
    );
  }
}
