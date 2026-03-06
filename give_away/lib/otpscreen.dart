import 'package:flutter/material.dart';
class Otpscreen extends StatefulWidget {
  const Otpscreen({super.key});

  @override
  State<Otpscreen> createState() => _OtpscreenState();
}

class _OtpscreenState extends State<Otpscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color(0xff1C1C1C),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Transform.scale(scale:0.4,child: Image.asset('assets/images/backarrow.png')),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50,),
          Center(
            child: Text('Enter Verificcation code',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Laila',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text("Enter the 6 digit code that sent to",
            style: TextStyle(
              color: Color(0xff1C1C1C),
              fontSize: 15,
              fontFamily: 'Kurale',
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(0.3),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Color(0xff1C1C1C),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child:TextField(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.3),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Color(0xff1C1C1C),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.3),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Color(0xff1C1C1C),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.3),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Color(0xff1C1C1C),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.3),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Color(0xff1C1C1C),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.3),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Color(0xff1C1C1C),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(),
                ),
              ),


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
                child: Text("Didn’t receive a code?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Kurale',
                  ),
                ),
              ),
              TextButton(onPressed: (){

              }, child: Text('Resend',
                style: TextStyle(
                  color: Color(0xff254E30),
                  fontSize: 15,
                  fontFamily: 'Kurale',
                ),
              )
              ),
            ],
          ),

        ],
      ) ),
    );
  }
}
