import 'package:flutter/material.dart';
import 'package:olascut/core/color_strings.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor: const Color(0xFF293655),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            const Text(
              'About Olascut Fashion',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.03,
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.65,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('About Olascut Fashion designer, we customizes an outfit according to the preference of the client. We are responsible for constructing, altering, repairing, or modifying garments for customers based on their specifications, needs, and preferences. They take customers\' measurements, assist in fabric selection, and arrange fittings to determine whether additional adjustments are needed ', style: TextStyle(fontSize: 17),),
                  const SizedBox(
                    height: 10,
                  ),

                  const Text('Contact Information', style: TextStyle(color: primaryColor, fontSize: 18, fontWeight: FontWeight.w800),),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      Icon(
                        Icons.location_on,
                      ),
                      SizedBox(width: 30,),
                      Text(
                        'No 195 Station Road Ede, osun state',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      Icon(
                        Icons.phone,
                      ),
                      SizedBox(width: 30,),
                      Text(
                        '+2348036636949',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      Icon(
                        Icons.mail,
                      ),
                      SizedBox(width: 30,),
                      Text(
                        'olascut88@gmail.com',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
