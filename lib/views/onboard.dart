import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olascut/views/home.dart';

import '../core/color_strings.dart';
import '../core/widgets/big_button.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int currentPage = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView(
        scrollDirection: Axis.horizontal,
        controller: _pageController,
        children: [
          onBoardPage(
            "splash02.png",
            "Get your fashion store ",
          ),
          onBoardPage(
            "splash01.png",
            "Redeem giftcard to fund your wallet account ",
          ),
          onBoardPage(
            "splash1.png",
            'Perform your banking transaction and send money to Family & friends  ',
          )
        ],
        onPageChanged: (value) => {setCurrentPage(value)},
      ),
    );
  }

  Widget onBoardPage(String image, String title) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          opacity: 1.0,
          colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.2), BlendMode.dstATop),
          image: AssetImage("assets/images/$image"),
          fit: BoxFit.cover,
        ),
      ),
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo_img.png', height: 50,),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 11.0, horizontal: 10),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.baiJamjuree(

                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontSize: 16,),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    List.generate(3, (index) => getIndicator(index)),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: BigButton(textTitle:'OlasCut Store',  onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    },),
                  )
                ],
              )),
        ],
      ),
    );
  }

  setCurrentPage(int value) {
    currentPage = value;
    setState(() {});
  }

  AnimatedContainer getIndicator(int pageNo) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 1000),
      height: 8,
      width: (currentPage == pageNo) ? 8 : 8,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          color: (currentPage == pageNo) ? primaryColor : Colors.grey),
    );
  }
}
