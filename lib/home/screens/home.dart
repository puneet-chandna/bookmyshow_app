import 'package:eventer/details/screens/details.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  String day = DateFormat.EEEE().format(DateTime.now());
  String date = DateFormat.d().format(DateTime.now()) +
      " " +
      DateFormat.LLLL().format(DateTime.now()) +
      " " +
      DateFormat.y().format(DateTime.now());
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            day,
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            date,
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Container(
                      height: 0.1,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Discover Events",
                      style: GoogleFonts.raleway(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white30),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      prefixIconColor: Colors.white30,
                      suffixIcon: Icon(Icons.menu),
                      suffixIconColor: Color.fromARGB(255, 212, 176, 71),
                      hintText: 'Search Events',
                      focusColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white30)),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Container(
                      height: 0.1,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: Container(
                      child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index){
                          return InkWell(
                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>detail_screen()));},
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                              height: 280,
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 8,
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(255, 12, 52, 52),
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                            child: Text(
                                          "Design Tour Sylhet 2023",
                                          style: GoogleFonts.poppins(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromARGB(255, 12, 52, 52)),
                                          maxLines: 3,
                                        )),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 18),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(children: [
                                            Icon(Icons.timer_outlined,
                                                color: Colors.black54),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "1 - 3 January 2023",
                                              style: GoogleFonts.poppins(
                                                  color: Colors.black54),
                                            )
                                          ]),
                                          Row(children: [
                                            Icon(Icons.location_on, color: Colors.black54),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Expanded(
                                                child: Text(
                                              "Balishira Resort, Thane , Mumbai ,India",
                                              style: GoogleFonts.poppins(
                                                  color: Colors.black54),
                                              maxLines: 2,
                                            ))
                                          ]),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            width: 200,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey, width: 1),
                                                borderRadius: BorderRadius.circular(20)),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: RichText(
                                                text: TextSpan(
                                                    text: "50",
                                                    style: GoogleFonts.raleway(
                                                      fontWeight: FontWeight.w600,
                                                      color:
                                                          Color.fromARGB(255, 12, 52, 52),
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                          text: "/400 tickets available",
                                                          style: GoogleFonts.raleway(
                                                              fontWeight: FontWeight.w300,
                                                              color: Colors.black54)),
                                                    ]),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 20,),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(255, 212, 176, 71),
                                                borderRadius: BorderRadius.circular(20)),
                                            child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "   GET A TICKET   ",
                                                  style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromARGB(255, 12, 52, 52),
                                                  ),
                                                )),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          );
                        }
                      ),
                    ),
                  ),
                ]),
          ),
        ));
  }
}
