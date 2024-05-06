import 'package:flutter/material.dart';
import 'dart:async';
import 'package:timer_app/Global.dart';
import 'dart:math';
class Digital extends StatefulWidget {
  const Digital({super.key});

  @override
  State<Digital> createState() => _DigitalState();
}

class _DigitalState extends State<Digital> {
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
        title: Text('Digital Clock',style: TextStyle(
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
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text:'$day,' ,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                          ),
                        ),
                        TextSpan(text: ' ${dateTime.day} $month',style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ))
                      ],
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '${dateTime.hour }:${dateTime.minute}',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 50,
                            height: 1,
                          ),
                        ),
                        TextSpan(text: ':${dateTime.second}',style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        )),
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
