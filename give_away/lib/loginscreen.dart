import 'package:flutter/material.dart';
import 'package:give_away/forgetpassword.dart';
import 'package:give_away/resetscreen.dart';
import 'package:give_away/signupscreen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
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
              width: 602,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  image: DecorationImage(
                    image: AssetImage('assets/images/line 17.png'),
                    fit: BoxFit.cover,
                  )
              ),
              child: Center(child: Text('Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Laila',
                  fontWeight: FontWeight.w400,
                ),
              )),
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
            SizedBox(
              height: 10,
            ),
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
                  // controller:  _emailController,
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Resetscreen()));

                }, child: Text('Reset Password?',
                  style: TextStyle(
                    color: Color(0xffAEF31C),
                    fontSize: 17,
                    fontFamily: 'Kurale',
                  ),
                )),

                SizedBox(width: 120,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Forgetpassword()));
                }, child: Text('Forget Password?',
                  style: TextStyle(
                    color: Color(0xffAEF31C),
                    fontSize: 17,
                    fontFamily: 'Kurale',
                  ),
                )),

              ],
            ),
            SizedBox(height: 50),
            InkWell(
              onTap: (){},
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
                child: Center(child: Text('Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Laila',
                    fontWeight: FontWeight.w400,
                  ),
                )),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text("Don't have an account?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Kurale',
                    ),
                  ),
                ),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Signupscreen()));

                }, child: Text('SignUp',
                  style: TextStyle(
                    color: Color(0xffAEF31C),
                    fontSize: 17,
                    fontFamily: 'Kurale',
                  ),
                )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
