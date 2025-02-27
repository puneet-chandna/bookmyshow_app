// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Flexible(child: Container(),flex:1),
            //svg image
            Image.asset("assets/transevent.png",height: 150,width: 150,),
            SizedBox(height: 30,),
            //text field input for email
            textfield(name: "Email",textEditingController: email,),
            SizedBox(height: 20,),
            //text field input for email
            textfield(name: "Password",textEditingController: password,),
            SizedBox(height: 40,),
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 212, 176, 71),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Center(
                child: Text("LOG IN",style: GoogleFonts.raleway(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w500),),
              )
            ),
            SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account ?",style: GoogleFonts.poppins(color: Colors.white,fontSize: 15),),
                SizedBox(width: 10,),
                Text("SIGN UP",style: GoogleFonts.poppins(fontSize: 15,color: Color.fromARGB(255, 212, 176, 71),decoration: TextDecoration.underline),)
              ],
            ),
            Flexible(child: Container(),flex: 2,),
          ],
        ),
      )),
    );
  }
}

class textfield extends StatelessWidget {
  final String name;
  final TextEditingController textEditingController;
  const textfield({
    Key? key,
    required this.name,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: TextFormField(
        cursorColor: Colors.white38,
        controller: textEditingController,
        decoration: InputDecoration(
          
          hintText: 'Enter Your $name',
          hintStyle: GoogleFonts.roboto(
            color: Colors.white38
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3),
            borderSide: BorderSide(
              color: Colors.white38,
            )
          ),
          
          
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3),
            borderSide: BorderSide(
              color: Colors.white,
            )
          )
          
          
        )
        ),
      );
  }
}
