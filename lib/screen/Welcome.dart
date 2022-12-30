import 'package:flutter/material.dart';

import 'dashboard.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: const Color(0xff29313C),
            image: DecorationImage(
                image: const AssetImage('assets/images/wall.jpg'),
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstATop),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 180,
              ),
              SizedBox(
                height: 40,
                child: Image.asset('assets/images/logo.png'),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'OLACUT FASHION DESIGNER 2020',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Colors.pinkAccent,
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                  Text(
                    'No 195 Station Road Ede osun state',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  Text(
                    '+2348036636949',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  Text(
                    'olascut88@gmail.com',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              MaterialButton(
                  minWidth: double.infinity,
                  height: 60.0,
                  color: const Color(0xFF293655),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Text(
                    'FASHION SHOWCASE 2023',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () async {
                    bool shouldNavigate = true;
                    // await FlutterFire.signin(_email.text, _password.text);

                    if (shouldNavigate) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Dashboard()));
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
