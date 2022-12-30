import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:olascut/screen/order.dart';

import '../core/color_strings.dart';
import '../screen/dashboard.dart';
import '../screen/profile.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> screens = [
    const Dashboard(),
    const OrderPage(),
    const Profile(),

  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      //floating action button location to left

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 1,
        child: SizedBox(
          height: 69,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 1),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 6.0, bottom: 5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.2,

                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = const Dashboard();
                            currentTab = 0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [




                            SvgPicture.asset(
                              'assets/images/home.svg',
                              color: currentTab == 0 ? primaryColor : Colors.grey,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                ' Home',
                                style: TextStyle(
                                    color: currentTab == 0
                                        ? primaryColor
                                        : Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w800),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.2,
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = const OrderPage();
                            currentTab = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Icon(
                              FontAwesomeIcons.shop,
                              color: currentTab == 1 ? primaryColor : Colors.grey,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                                ' Order',
                                style: TextStyle(
                                    color: currentTab == 1
                                        ? primaryColor
                                        : Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w800),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),


                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.20,
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = const Profile();
                            currentTab = 2;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              FontAwesomeIcons.circleInfo,
                              color: currentTab == 2 ? primaryColor : Colors.grey,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                ' About',
                                style: TextStyle(
                                  color: currentTab == 2
                                      ? primaryColor
                                      : Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
