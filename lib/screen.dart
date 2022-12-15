// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/widgets/list_one.dart';
import 'package:ui/widgets/list_two.dart';

class UIScreen extends StatefulWidget {
  const UIScreen({super.key});

  @override
  State<UIScreen> createState() => _UIScreenState();
}

class _UIScreenState extends State<UIScreen> {
  int _selectedIndex = 0, _selectedIndex1 = 0;
  var lst = ['Calming Sounds', 'Insomnia', 'For Children', 'Tips for Sleeping'];
  var ics = [
    'assets/icons/headphone.svg',
    'assets/icons/tape.svg',
    'assets/icons/headphone.svg',
    'assets/icons/tape.svg'
  ];
  var paths = ["assets/images/bg1.jpg", "assets/images/bg2.jpg"];
  var cls = [
    'assets/images/green.jpg',
    'assets/images/red.jpg',
    'assets/images/yellow.jpg',
    'assets/images/bg1.jpg',
  ];
  var lst1 = ['Insomnia', 'Depression', 'Baby Sleep'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 21, 33),
      appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Color.fromARGB(255, 19, 21, 33),
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light,
          ),
          backgroundColor: Color.fromARGB(255, 19, 21, 33),
          elevation: 0,
          toolbarHeight: MediaQuery.of(context).size.height / 5.3,
          flexibleSpace: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Discover",
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'SF Pro',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 32,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 25,
                    height: 5,
                    color: Color.fromARGB(255, 6, 80, 208),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 45,
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, index) {
                          return ListOne(title: lst1[index].toString());
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Recommended",
                    style: TextStyle(color: Color.fromARGB(255, 81, 89, 121)),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "See All",
                          style: TextStyle(
                              color: Color.fromARGB(255, 74, 128, 240)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 180,
                      child: ListView.builder(
                          itemCount: 2,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: ((context, index) {
                            return ListTwo(aPath: paths[index].toString());
                          })),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Recent",
                    style: TextStyle(color: Color.fromARGB(255, 81, 89, 121)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 380,
                      child: GridView.builder(
                        itemCount: 4,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                        ),
                        itemBuilder: ((context, index) {
                          return Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image: AssetImage(cls[index].toString()),
                                  fit: BoxFit.fill,
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    lst[index].toString(),
                                    style: TextStyle(
                                        fontFamily: 'SF Pro',
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Expanded(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        SvgPicture.asset(
                                          ics[index].toString(),
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color.fromARGB(255, 233, 233, 236),
        backgroundColor: Color.fromARGB(255, 28, 32, 49),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/discover.svg',
              width: 30,
              height: 30,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/chart.svg',
              width: 30,
              height: 30,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/profile.svg',
              width: 30,
              height: 30,
            ),
            label: "",
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(index);
    });
  }

  void _onItemTapped1(int index) {
    setState(() {
      _selectedIndex1 = index;
      print(index);
    });
  }
}
