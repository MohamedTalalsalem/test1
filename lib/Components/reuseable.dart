import 'package:flutter/material.dart';

Widget buildStoryItem()=>Container(
  width: 60.0,
  child: Column(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
                'https://th.bing.com/th/id/R.d0f4c222d365ae7601658f6e7aa4848f?rik=TAIhx6rhEQ0kJQ&pid=ImgRaw&r=0'),
          ),
          CircleAvatar(
            radius: 7.0,
            backgroundColor: Colors.green,
          ),
        ],
      ),
      Text(
        'Scarlet johansen talal',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      )
    ],
  ),
);
Widget buildChatItem()=>Row(
  children: [
    Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage(
              'https://th.bing.com/th/id/R.d0f4c222d365ae7601658f6e7aa4848f?rik=TAIhx6rhEQ0kJQ&pid=ImgRaw&r=0'),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(
            bottom: 3.0,
            end: 3.0,
          ),
          child: CircleAvatar(
            radius: 7.0,
            backgroundColor: Colors.green,
          ),
        ),
      ],
    ),
    SizedBox(
      width: 20.0,
    ),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Mohamed Talal salem farg hmod',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  'hello my name is Mohamed talal salem farg ',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Container(
                  width: 7.0,
                  height: 7.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Text(
                '02:00 pm',
              ),
            ],
          ),
        ],
      ),
    ),
  ],
);