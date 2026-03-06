import 'package:flutter/material.dart';
import 'package:give_away/otpscreen.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Container(
              height: 192,
              width: 502,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
                image: DecorationImage(
                  image: AssetImage('assets/images/line 17.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Center(
                child: Text(
                  'SignUp',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'Laila',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            SizedBox(height: 50),
            Text(
              'Name',
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
                  // controller: _nameController ,
                  style: TextStyle(color: Colors.black),
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Transform.scale(
                      scale: 0.4,
                      child: Image.asset('assets/images/user.png'),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Email',
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
                  // controller:  _emailController,
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
                  // controller:_passwordController ,
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
            SizedBox(height: 10),
            Text(
              'Phone number',
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
                  // controller: _phoneController,
                  style: TextStyle(color: Colors.black),
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Transform.scale(
                      scale: 0.4,
                      child: Image.asset('assets/images/call.png'),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 50),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Otpscreen()),
                );
              },
              child: Container(
                height: 52,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  image: DecorationImage(
                    image: AssetImage('assets/images/button.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Center(
                  child: Text(
                    'SignUp',
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Kurale',
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Color(0xffAEF31C),
                      fontSize: 17,
                      fontFamily: 'Kurale',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
