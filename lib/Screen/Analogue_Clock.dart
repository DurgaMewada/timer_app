import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Global.dart';
class Analogue extends StatefulWidget {
  const Analogue({super.key});

  @override
  State<Analogue> createState() => _AnalogueState();
}

class _AnalogueState extends State<Analogue> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        dateTime = DateTime.now();

        switch (dateTime.weekday) {
          case 1:
            day = 'Mon';
            break;
          case 2:
            day = 'Tue';
            break;
          case 3:
            day = 'Wed';
            break;
          case 4:
            day = 'Thurs';
            break;
          case 5:
            day = 'Fri';
            break;
          case 6:
            day = 'Sat';
            break;
          case 7:
            day = 'Sun';
        }
        switch (dateTime.month) {
          case 1:
            month = 'January';
            break;
          case 2:
            month = 'February';
            break;
          case 3:
            month = 'March';
            break;
          case 4:
            month = 'April';
            break;
          case 5:
            month = 'May';
            break;
          case 6:
            month = 'June';
            break;
          case 7:
            month = 'July';
            break;
          case 8:
            month = 'August';
            break;
          case 9:
            month = 'September';
            break;
          case 10:
            month = 'October';
            break;
          case 11:
            month = 'November';
            break;
          case 12:
            month = 'December';
            break;
        }

        if (dateTime.hour > 11) {
          time = 'PM';
        } else {
          time = 'AM';
        }
      });
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.black,
        centerTitle: true,
        title: Text('Analogue Clock',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white,
        ),),
      ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    // gradient: LinearGradient(
                    //     begin: Alignment.topCenter,
                    //     end:Alignment.bottomLeft,
                    //     colors: [
                    //       Color(0xff3d39ad),
                    //       Colors.white,
                    //     ]
                    // )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        height: 250,
                        width: 250,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white54,
                                offset: Offset(0,5),
                                spreadRadius: 1,
                                blurRadius: 6,
                              )
                            ],
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black)
                        ),
                        alignment: Alignment.center,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Center(child: Container(height:10,width: 10,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black),)),
                            ...List.generate(60, (index) => Center(
                              child: Transform.rotate(
                                  angle: ((index+1)*6*pi)/180,
                                  child: ((index+1)%5==0)?
                                  const VerticalDivider(
                                    thickness: 4,
                                    color: Color(0xff3d39ad),
                                    indent: 0,
                                    endIndent: 230,
                                  )
                                      :  const VerticalDivider(
                                    thickness: 3,
                                    color: Colors.black,
                                    indent: 0,
                                    endIndent: 240,
                                  )
                              ),
                            ),),
                            Transform.rotate(
                              angle: (dateTime.hour*30*pi)/180,
                              child: VerticalDivider(
                                thickness: 4,
                                color: Color(0xff3d39ad),
                                indent: 60,
                                endIndent: 100,
                              ),
                            ),
                            Transform.rotate(
                              angle: (dateTime.second*6*pi)/180,
                              child: VerticalDivider(
                                thickness: 3,
                                color: Colors.black,
                                indent: 40,
                                endIndent: 100,
                              ),
                            ),
                            Transform.rotate(
                              angle: (dateTime.minute*6*pi)/180,
                              child: VerticalDivider(
                                thickness: 4,
                                color: Colors.black,
                                indent: 30,
                                endIndent: 100,
                              ),
                            ),
              
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 30,),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text:'$day,' ,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                              TextSpan(text: ' ${dateTime.day} $month',style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ))
                            ],
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '${dateTime.hour}:${dateTime.minute}',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 50,
                                  height: 1,
                                ),
                              ),
                              TextSpan(text: ' $time',style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              )),
                            ],
                          ),
                        ),

                        Text('India Standard Time | Kolkata',style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),),
                      ],
                    ),
                  ],
                ),
              ),
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
