import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expandable_text/expandable_text.dart';

class detail_screen extends StatefulWidget {
  const detail_screen({super.key});

  @override
  State<detail_screen> createState() => _detail_screenState();
}

class _detail_screenState extends State<detail_screen> {
  bool isexpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 12, 52, 52),
        title: Text(
          "Event Details",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 25),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Container(
                  height: 0.1,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Text(
                    "Design Tour Sylhet 2023",
                    style: GoogleFonts.poppins(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                    maxLines: 3,
                  )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25, top: 20, bottom: 20, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Icon(Icons.timer_outlined, color: Colors.white54),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "1 - 3 January 2023",
                        style: GoogleFonts.poppins(color: Colors.white54),
                      )
                    ]),
                    SizedBox(
                      height: 15,
                    ),
                    Row(children: [
                      Icon(Icons.location_on, color: Colors.white54),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          child: Text(
                        "Balishira Resort, Thane , Mumbai ,India",
                        style: GoogleFonts.poppins(color: Colors.white54),
                        maxLines: 2,
                      ))
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Container(
                        height: 0.1,
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Description",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ExpandableText(
                      "I’m pretty sure that your app contains a lot of text: titles, descriptions, hints, etc. And not all of those texts are necessary for the user to see. So, sometimes, you want to hide part of them. A short description of a movie provides enough information for a user to decide if he wants to read more. And the common pattern is to truncate this text, maybe ellipsize it, to allow the user to expand it in some way (e.g. tapping on the whole text or on the ellipsis).",
                      style: GoogleFonts.poppins(color: Colors.white54),
                      expandText: 'more',
                      collapseText: 'less',
                      maxLines: 3,
                      linkColor: Color.fromARGB(255, 212, 176, 71),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Container(
                        height: 0.1,
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                          text: "Rs. 50.00",
                                          style: GoogleFonts.raleway(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromARGB(255, 12, 52, 52),
                                          ),
                                          children: [
                                            TextSpan(
                                                text: "/per person",
                                                style: GoogleFonts.raleway(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w300,
                                                    color: Colors.black54)),
                                          ]),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: 300,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.grey, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: RichText(
                                          text: TextSpan(
                                              text: "50",
                                              style: GoogleFonts.raleway(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromARGB(
                                                    255, 12, 52, 52),
                                              ),
                                              children: [
                                                TextSpan(
                                                    text:
                                                        "/400 tickets available",
                                                    style: GoogleFonts.raleway(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Colors.black54)),
                                              ]),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20,),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Container(
                                        height: 50,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color:
                                                Color.fromARGB(255, 212, 176, 71),
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(
                                              child: Text(
                                                "   BOOK TICKET   ",
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15,
                                                  color: Color.fromARGB(
                                                      255, 12, 52, 52),
                                                ),
                                              ),
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 212, 176, 71),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                "   GET A TICKET   ",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 12, 52, 52),
                                ),
                              ),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
