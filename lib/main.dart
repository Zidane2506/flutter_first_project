import 'dart:ui';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'data_list.dart';
import 'detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Lol();
  }
}

class Lol extends StatelessWidget {
  const Lol({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: CurvedNavigationBar(
          index: 1,
          backgroundColor: Colors.white,
          color: Colors.black,
          animationCurve: Curves.easeIn,
          animationDuration: Duration(milliseconds: 400),
          items: [
            InkWell(
              // onTap: () {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => ))
              // },
                child: Icon(Icons.grid_view_rounded, color: Colors.white,)),
            Icon(Icons.home, color: Colors.white,),
            Icon(Icons.settings, color: Colors.white,),
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'League Of Legends',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Beaufort'),
          ),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              final champions = listChampion[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 100,
                child: Card(
                  color: Colors.black45,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                          flex: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(champions.imageChmpIcn),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Name : ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        fontFamily: 'Beaufort'),
                                  ),
                                  Text('${champions.name} | ${champions.title}',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Classes : ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        fontFamily: 'Beaufort'),
                                  ),
                                  Text(champions.classes,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Release : ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        fontFamily: 'Beaufort'),
                                  ),
                                  Text(champions.release,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Champion(champions: champions,)));
                        },
                        borderRadius: BorderRadius.circular(50),
                        child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Icon(Icons.arrow_circle_right_outlined,
                              color: Colors.white,
                              size: 40,)
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
              },
          ),
        ),
      ),
    );
  }
}

class MainLobby extends StatelessWidget {
  const MainLobby({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            'League Of Legends',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Beaufort'
                        ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text('25 Jun, 2024',
                        style: TextStyle(
                          color: Colors.white
                        ),),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Icon(Icons.notifications,
                        color: Colors.white,),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

