import 'package:flutter/material.dart';

class Resetscreen extends StatefulWidget {
  const Resetscreen({super.key});

  @override
  State<Resetscreen> createState() => _ResetscreenState();
}

class _ResetscreenState extends State<Resetscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color(0xff1C1C1C),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Transform.scale(
                        scale: 0.4,
                        child: Image.asset('assets/images/backarrow.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Center(
              child: Text(
                'Reset Password',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Laila',

                ),
              ),
            ),
            SizedBox(height: 50),
            Text(
              'Email',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: 'Kurale',
              ),
            ),
            Container(
              height: 56,
              width: 380,
              decoration: BoxDecoration(
                color: Color(0xff1C1C1C),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Transform.scale(
                      scale: 0.4,
                      child: Image.asset('assets/images/mail.png'),
                    ),

                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Password',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: 'Kurale',
              ),
            ),
            Container(
              height: 52,
              width: 380,
              decoration: BoxDecoration(
                color: Color(0xff1C1C1C),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Transform.scale(
                      scale: 0.4,
                      child: Image.asset('assets/images/password.png'),
                    ),

                  ),
                ),
              ),
            ),
            SizedBox(height: 60),
            InkWell(
              onTap: () {},
              child: Container(
                height: 52,
                width: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    image: DecorationImage(
                      image: AssetImage('assets/images/button.png'),
                      fit: BoxFit.fill,
                    )
                ),
                child: Center(
                  child: Text(
                    'Reset',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Laila',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
