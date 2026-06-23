import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class Settingpage extends StatefulWidget {
  @override
  State<Settingpage> createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  bool visible = true;
  bool isHover = false;
  bool isHover1 = false;
  bool isHover2 = false;
  bool isHover3 = false;
  bool isHover4 = false;
  bool isHover5 = false;
  bool isHover6 = false;
  bool isHover7 = false;
  bool isHover8 = false;
  bool isHover9 = false;
  bool isHover10 = false;
  bool isHover11 = false;
  bool isHover12 = false;


  bool showMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 0, 0),
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xFF00E5FF),
                        width: 7,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),

                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Text(
                          "Player_one",
                          style: GoogleFonts.spaceMono(
                            fontSize: 60,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF00E5FF),
                          ),
                        ),
                      ),
                      //gapping add
                      SizedBox(width: 10),

                      Padding(
                        padding: EdgeInsets.only(left: 200),
                        child: Row(
                          children: [


                      MouseRegion(
                              onEnter: (event) {
                                setState(() {
                                  isHover1 = true;
                                });
                              },
                              onExit: (event) {
                                setState(() {
                                  isHover1 = false;
                                });
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Homepage(),
                                        ),
                                      );
                                    },
                                    child: Column(
                                      children: [
                                        Text(
                                          "START",
                                          style: GoogleFonts.spaceMono(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900,
                                            color: Color.fromARGB(
                                              255,
                                              93,
                                              155,
                                              162,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  AnimatedContainer(
                                    duration: const Duration(milliseconds: 300),
                                    width: isHover1 ? 50 : 0,
                                    height: isHover1 ? 6 : 0,
                                    color: Color.fromARGB(255, 13, 124, 136),
                                  ),
                                ],
                              ),
                            ),
              
                      
                      SizedBox(width: 10),
                      

                            SizedBox(width: 10),
                            MouseRegion(
                              onEnter: (event) {
                                setState(() {
                                  isHover = true;
                                });
                              },
                              onExit: (event) {
                                setState(() {
                                  isHover = false;
                                });
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Homepage(),
                                        ),
                                      );
                                    },
                                    child: Column(
                                      children: [
                                        Text(
                                          "SAVE",
                                          style: GoogleFonts.spaceMono(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900,
                                            color: Color.fromARGB(
                                              255,
                                              93,
                                              155,
                                              162,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  AnimatedContainer(
                                    duration: const Duration(milliseconds: 300),
                                    width: isHover ? 50 : 0,
                                    height: isHover ? 6 : 0,
                                    color: Color.fromARGB(255, 13, 124, 136),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(width: 10),
                            MouseRegion(
                              onEnter: (event) {
                                setState(() {
                                  isHover2 = true;
                                });
                              },
                              onExit: (event) {
                                setState(() {
                                  isHover2 = false;
                                });
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Homepage(),
                                        ),
                                      );
                                    },
                                    child: Column(
                                      children: [
                                        Text(
                                          "LOAD",
                                          style: GoogleFonts.spaceMono(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900,
                                            color: Color.fromARGB(
                                              255,
                                              93,
                                              155,
                                              162,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  AnimatedContainer(
                                    duration: const Duration(milliseconds: 300),
                                    width: isHover2 ? 50 : 0,
                                    height: isHover2 ? 6 : 0,
                                    color: Color.fromARGB(255, 13, 124, 136),
                                  ),
                                ],
                              ),
                            ),


                            // Save TextButton
                            SizedBox(width: 10),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Homepage(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              SizedBox(height: 20),
                             
                              Text(
                                "OPTION",
                                style: GoogleFonts.spaceMono(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xFF00E5FF),
                                ),
                              ),
                              SizedBox(height: 10),
                            
                              Container(
                                width: 50,
                                height: 4,
                                color: Color(0xFF00E5FF),
                              ),
                            ],
                          ),
                        ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container( 
                 width:double.infinity, 
                  height:100,
                   decoration:BoxDecoration(
                    color: Color.fromARGB(255, 0, 0, 0),
                   ),  
                    ),


              
              ],



            ),
          ),




        ],


      ),

      //header
    );
  }
}
