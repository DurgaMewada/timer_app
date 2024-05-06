import 'package:flutter/material.dart';
import 'package:timer_app/Global.dart';
import 'dart:math';
import 'dart:async';
class Strap extends StatefulWidget {
  const Strap({super.key});

  @override
  State<Strap> createState() => _StrapState();
}

class _StrapState extends State<Strap> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.black,
        centerTitle: true,
        title: Text('Strap Watch',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white,
        ),),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 100, bottom: 100),
                      height: 300,
                      width: 300,
                      child: CircularProgressIndicator(
                        value: dateTime.second / 60,
                        valueColor: AlwaysStoppedAnimation(Colors.black),
                        backgroundColor: Colors.grey.shade300,
                        strokeWidth: 5,

                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 100, bottom: 100),
                      height: 250,
                      width: 250,
                      child: CircularProgressIndicator(
                        value: dateTime.minute / 60,
                        valueColor: AlwaysStoppedAnimation(Colors.black),
                        backgroundColor: Colors.grey.shade300,
                        strokeWidth: 10,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 100, bottom: 100),
                      height: 200,
                      width: 200,
                      child: CircularProgressIndicator(
                        value: ((dateTime.hour % 12 + dateTime.minute / 60) / 12),
                        backgroundColor: Colors.grey.shade300,
                        valueColor: AlwaysStoppedAnimation(Color(0xff3d39ad)),
                        strokeWidth: 20,
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 150),
                          child: Row(
                            children: [
                              Text(
                                '${dateTime.hour%12}:${dateTime.minute}:${dateTime.second} ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 30),
                              ),

                            ],
                          ),
                        ),
                        Text(
                          '$month ${dateTime.day} $day',
                          style: TextStyle(
                              color :Color(0xff30353C),
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
                Text('India Standard Time | Kolkata',style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  height: -5,
                ),),
              ],
            )
          ),
          Container(
            height: 60,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap : (){
                          Navigator.of(context).pushNamed('/ana');
                        },
                        child: const Icon(
                          Icons.watch_later_outlined,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/digital');
                        },
                        child: const Icon(
                          Icons.timer_10_select,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/strap');
                        },
                        child: const Icon(
                          Icons.av_timer_outlined,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


