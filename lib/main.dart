import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
//setup class
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Homepage());
  }
}
class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
  
  
  bool visible = true;
  bool  isHover = false;
  bool  isHover1 = false;
  bool  isHover2 = false; 
  bool  isHover3 =  false ;
  bool  isHover4 = false;
  bool  isHover5 = false;
  bool  showMore = false;
  
  @override 
  void initState(){
     super.initState();
      
      Timer.periodic( const Duration (milliseconds:  500), (timer){
           setState((){
             visible = !visible;

           });

      });
  }
  
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
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
                              SizedBox(height: 80),
                             
                              Text(
                                "START",
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

                        // Start  TextButton
                        SizedBox(width: 10),
                 MouseRegion(
                             onEnter: (event){
                                  setState((){
                                      isHover = true;
                                  });
                                },
                              onExit:(event){
                                       setState((){
                                          isHover = false;
                                       });
                                    },
                       child:Column(
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
                                   color: Color.fromARGB(255, 93, 155, 162),
                                 ),
                              ),
                            ],
                            
                          ),
                        ),    
                  
                    AnimatedContainer(
                           duration:const Duration(milliseconds:300),
                           width:isHover ? 50: 0,
                           height:isHover ? 6:0 ,
                           color:Color.fromARGB(255, 13, 124, 136),
                        ),  
                        
                    ],
                    
                    ),

                  ),
                SizedBox(width: 10),
                        MouseRegion(
                             onEnter: (event){
                                  setState((){
                                      isHover2 = true;
                                  });
                                },
                              onExit:(event){
                                       setState((){
                                          isHover2 = false;
                                       });
                                    },
                       child:Column(
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
                                   color: Color.fromARGB(255, 93, 155, 162),
                                 ),
                              ),
                            ],
                            
                          ),
                        ),    
                  
                    AnimatedContainer(
                           duration:const Duration(milliseconds:300),
                           width:isHover2 ? 50: 0,
                           height:isHover2 ? 6:0 ,
                           color:Color.fromARGB(255, 13, 124, 136),
                        ),  
                        
                    ],
                    
                    ),

                  ),



                  // Save TextButton
                    SizedBox(width: 10),     
                    
                       MouseRegion(
                             onEnter: (event){
                                  setState((){
                                      isHover3 = true;
                                  });
                                },
                              onExit:(event){
                                       setState((){
                                          isHover3 = false;
                                       });
                                    },
                       child:Column(
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
                                "OPTION",
                                style: GoogleFonts.spaceMono(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                   color: Color.fromARGB(255, 93, 155, 162),
                                 ),
                              ),
                            ],
                            
                          ),
                        ),    
                  
                    AnimatedContainer(
                           duration:const Duration(milliseconds:300),
                           width:isHover3 ? 50: 0,
                           height:isHover3 ? 6:0 ,
                           color:Color.fromARGB(255, 13, 124, 136),
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
        //outside header
            Container(
                    padding: EdgeInsets.only(left: 40),
                    width: double.infinity,
                    height: 780,
                    decoration: BoxDecoration(
                            color: Color.fromARGB(255, 32, 22, 22),
                    ),
             child: Row(
               children: [
              
                Container( 
                  
                  child:Column(

                    children:[
                     
                    SizedBox( height: 170,), 
                      Container(
                          width: 500,
                          height: 400,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 32, 22, 22),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 95, 184, 194),
                                offset: Offset(5, 5),
                                spreadRadius: 4,
                              ),
                            ],
                            border: Border.all(
                              color: Color(0xFF474646),
                              style: BorderStyle.solid,
                              width: 4,
                            ),
                          ),
                       child:Column(
                                  children:[
                                    Container(
                                          width:double.infinity,
                                          height:340, 
                                     ),

                                     Container( 
                                          width:double.infinity,
                                          height:50 , 
                                          padding:EdgeInsets.only(left: 10),
                                          decoration:BoxDecoration(
                                          color: Color.fromARGB(255, 0, 229, 255),
                                          //upload file  pic 
                                          //level display
                                             ), 
                                        ),
                                 ],
                                  
                                  
                        ),
                      
                       ),
                    SizedBox(height: 50,),
                    
                    Container( 
                         
                            child:Row(
                              children:[
                                MouseRegion( 
                                      onEnter:((event) => {
                                         setState((){
                                            isHover1 = true;
                                         })
                                      }),
                                      onExit:(event) =>{
                                         setState((){
                                            isHover1 = false;
                                         })
                                      }, 
                                      child:AnimatedContainer(
                                        alignment:Alignment.center,
                                         duration: const Duration(milliseconds:  300),
                                         width:200,
                                         height:100,
                                         decoration:BoxDecoration(
                                            color:isHover1 ?  Color(0xFFD2F7FF): Color.fromARGB(255, 32, 22, 22) ,
                                            border:Border.all(
                                                color: Color(0xFFD2F7FF),
                                                width: 4,
                                            ),
                                         ),
                                       child:Text("HiRE_PLAYER" ,
                                         style:GoogleFonts.spaceMono(
                                            fontSize:20,
                                            fontWeight: FontWeight.w700,
                                            color: isHover1 ?  Color.fromARGB(255, 32, 22, 22) :  Color(0xFFD2F7FF) ,
                                         ),
                                      ),
                                    ), 
                              ),  

                                    SizedBox( width: 50, ),

                                MouseRegion(
                                     onEnter:((event) => {
                                         setState((){
                                            isHover4 = true;
                                         })
                                      }),
                                      onExit:(event) =>{
                                         setState((){
                                            isHover4 = false;
                                         })
                                      }, 
                                      child:AnimatedContainer(
                                        alignment:Alignment.center,
                                         duration: const Duration(milliseconds:  300),
                                         width:200,
                                         height:100,
                                          
                                         decoration:BoxDecoration(
                                          color:isHover4 ?  Colors.red: Color.fromARGB(255, 32, 22, 22) ,
                                            border:Border.all(
                                                color: Color(0xFFD05BFF),
                                                width: 4,
                                            ),
                                         ),
                                      child:Text("VIEW_REEL" ,
                                         style:GoogleFonts.spaceMono(
                                            fontSize:20,
                                            fontWeight: FontWeight.w900,
                                            color: isHover4 ?   Color.fromARGB(255, 32, 22, 22) :  Color.fromARGB(255, 219, 97, 203),
                                            

                                         ),
                                      ),
                                    ), 
                                      

                                    ),

                                 ],
                              ),
                        ),


                   ],
                ),
                       
            ),

            SizedBox(width: 50 , height:double.infinity),
                  Container(
                    width: 900,
                    height:double.infinity,
                    decoration:BoxDecoration(     
                        color: Color.fromARGB(255, 32, 22, 22),
                        ),
                   child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                          SizedBox(width:double.infinity ,  height:160),
                          Text( "ID : ",
                              style:GoogleFonts.spaceMono(
                                fontSize: 20,
                                color: Color(0xFFD05BFF),
                                height:4
                              )
                            ),
                            Text("FULL-STACK",    
                               style:GoogleFonts.inter(
                                fontSize: 70,
                                fontWeight: FontWeight.w700,
                                height: 0.3,
                                color: Color(0xFF9CF0FF),
                              )),
                            Text("DIGITAL ARCHITECT",
                             style:GoogleFonts.spaceMono(
                                fontSize: 70,
                                height:1.5,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFCBFFB6),
                              )

                            ),
                    SizedBox(width:double.infinity ,  height:10),
                        Container(
                            padding:EdgeInsets.only(left:30, top:30 , right:39),
                            width:800,
                            height:300,

                            decoration:BoxDecoration(
                              color:const Color.fromARGB(255, 59, 58, 52),
                               boxShadow: [
                                   BoxShadow(
                                    offset:Offset(5,5),
                                    color:Color.fromARGB(255, 45, 233, 45),
                                   ),
                               ],
                              border:Border.all(
                                 color:Color.fromARGB(255, 94, 85, 85),
                                 width:5,
                              ),
                            ) ,
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                               
                                  children: [
                                    
                                     Text( "STORY",
                                        style:GoogleFonts.spaceMono(
                                        fontSize:25, 
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromARGB(255, 91, 199, 58),      
                                        ),
                                     ),
                                    Container(
                                      
                                      width:double.infinity,
                                      height:4,
                                        decoration:BoxDecoration(
                                           color:Color.fromARGB(255, 94, 85, 85),
                                            ),
   
                                    ),
                                      SizedBox(width:double.infinity, height:10),
                                    Text(
                                      "In the year 20XX, a developer emerged from the neon-lit corridors of the digital frontier. Elias Vance doesn't just build websites; he engineers immersive dimensions. Specialized in pixel-perfect precision and high-performance logic systems. Current mission: Redefining the user experience through the lens of retro-futuristic excellence.",
                                    style:GoogleFonts.spaceMono(
                                        fontSize:17,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromARGB(255, 220, 253, 210),      
                                        ), 
                                  
                                   ),
                                     //blink text
                                    SizedBox(height:4),
                                     AnimatedOpacity( 
                                        opacity: visible ?  1.0 :  0.0, 
                                        duration: Duration(milliseconds:2),
                                        child: Text("_WAITING FOR INPUT...", 
                                           style:GoogleFonts.spaceMono(
                                               fontSize:20,
                                               color:Colors.green,
                                           ),
                                      ),
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
              height:500,
              color: Color.fromARGB(255, 32, 22, 22),
              padding:EdgeInsets.only(top:30,  left:40,  right:10),
              child:Column(
                   crossAxisAlignment: CrossAxisAlignment.start,

                  children:[
                    
                     Container(
                         width:double.infinity,
                         height:80,
                        padding:EdgeInsets.only(left:40),
                         child:Row(

                            children: [
                                 Icon(Icons.bar_chart, color:Colors.blue, size: 50,),
                                 SizedBox(width:10),
                                 Text("CHARACTER_STATS",
                                style:GoogleFonts.spaceMono(
                                fontSize:30, 
                                fontWeight: FontWeight.w700,
                               color:Color.fromARGB(255, 133, 189, 198),
                    ),

                    ),
                            ],
                         ),
                  ),
                  
                SizedBox(width:double.infinity, height:80),
                  Container(

                    child:Row(
                      children:[
                        
                   SizedBox(width:40),
                      Container(
                        alignment: Alignment.topLeft,
                        width:400,
                        height:260 ,
                        padding:EdgeInsets.only(left:50, top:50, right:50),
                        decoration:BoxDecoration(
                           boxShadow: [
                                         BoxShadow(
                                             color: Color.fromARGB(255, 14, 176, 194),
                                               offset: Offset(5, 5),
                                                 spreadRadius: 4,
                                             ),
                                          ],
                          color:Color(0xff313030),
                          border:Border.all(
                                 color:Color.fromARGB(255, 94, 85, 85),
                                  width:5 ,
                          ), 
                      

                        ),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                        
                            children:[
                                Text("FRONTEND",
                                        style:GoogleFonts.spaceMono(
                                        color:Color.fromARGB(255, 133, 189, 198),
                                        fontSize:20,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                                 SizedBox(height:10, ),
                                 Text("INT: 94",
                                    style:GoogleFonts.spaceMono(
                                       color:Color(0xFF9CF0FF),
                                        fontSize:40,
                                        fontWeight: FontWeight.w700,

                                     ),
                                 
                                 ),
                                SizedBox(height:20, ),

                                Container(
                                     width:double.infinity,
                                     height:27,
                                     decoration:BoxDecoration(
                                       color:Color(0xFF9CF0FF),
                                        border:Border.all(
                                           color:Color.fromARGB(255, 165, 163, 163),
                                           width:5,
                                        )
                                     ),
                                    child:Column( 
                                         mainAxisAlignment: MainAxisAlignment.end,
                                         crossAxisAlignment: CrossAxisAlignment.end,
                                         children:[ 
                                               Container( 
                                                width:50 ,
                                                height:17,
                                                color:Color(0xFF5F5E5E),


                                               
                                               ),  
                                         ], 
                                    
                                    )
                              
                              
                                ),
                            ],

                        ),

                     ),
                     SizedBox(width:30),

                     Container(
                        alignment: Alignment.topLeft,
                        width:400,
                        height:260 ,
                        padding:EdgeInsets.only(left:50, top:50, right:50),
                        decoration:BoxDecoration(
                           boxShadow: [
                                         BoxShadow(
                                             color: Color.fromARGB(255, 173, 77, 148),
                                               offset: Offset(5, 5),
                                                 spreadRadius: 4,
                                             ),
                                          ],
                          color:Color(0xff313030),
                          border:Border.all(
                                 color:Color.fromARGB(255, 94, 85, 85),
                                  width:5 ,
                          ), 
                      

                        ),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                        
                            children:[
                               
                                Text("BACKEND",
                                        style:GoogleFonts.spaceMono(
                                       color:Color.fromARGB(255, 162, 78, 152),
                                        fontSize:20,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                                 SizedBox(height:10, ),
                                 Text("STR: 88",
                                    style:GoogleFonts.spaceMono(
                                      color:Color.fromARGB(255, 227, 105, 213),
                                        fontSize:40,
                                        fontWeight: FontWeight.w700,

                                     ),
                                 
                                 ),
                                SizedBox(height:20, ),

                                Container(
                                     width:double.infinity,
                                     height:27,
                                     decoration:BoxDecoration(
                                       color:Color.fromARGB(255, 227, 105, 213),
                                        border:Border.all(
                                           color:Color.fromARGB(255, 165, 163, 163),
                                           width:5,
                                        )
                                     ),
                                    child:Column( 
                                         mainAxisAlignment: MainAxisAlignment.end,
                                         crossAxisAlignment: CrossAxisAlignment.end,
                                         children:[ 
                                               Container( 
                                                width:70 ,
                                                height:17,
                                                color:Color(0xFF5F5E5E),


                                               
                                               ),  
                                         ], 
                                    
                                    )
                              
                              
                                ),
                            ],

                        ),

                     ),

                     SizedBox(width:30),
                     
                     
                     
                     Container(
                        alignment: Alignment.topLeft,
                        width:400,
                        height:260 ,
                        padding:EdgeInsets.only(left:50, top:50, right:50),
                        decoration:BoxDecoration(
                           boxShadow: [
                                         BoxShadow(
                                                color:Color.fromARGB(255, 32, 183, 200),
                                               offset: Offset(5, 5),
                                                 spreadRadius: 4,
                                             ),
                                          ],
                          color:Color(0xff313030),
                          border:Border.all(
                                 color:Color.fromARGB(255, 94, 85, 85),
                                  width:5 ,
                          ), 
                      

                        ),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                        
                            children:[
                               
                                Text("SPEED",
                                        style:GoogleFonts.spaceMono(
                                        color:Color.fromARGB(183, 61, 201, 217),
                                        fontSize:20,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                                 SizedBox(height:10, ),
                                 Text("SPD: 99",
                                    style:GoogleFonts.spaceMono(
                                      color:Color.fromARGB(255, 32, 183, 200),
                                        fontSize:40,
                                        fontWeight: FontWeight.w700,

                                     ),
                                 
                                 ),
                                SizedBox(height:20, ),

                                Container(
                                     width:double.infinity,
                                     height:27,
                                     decoration:BoxDecoration(
                                       color:Color.fromARGB(255, 32, 183, 200),
                                        border:Border.all(
                                           color:Color.fromARGB(255, 165, 163, 163),
                                           width:5,
                                        )
                                     ),
                                    child:Column( 
                                         mainAxisAlignment: MainAxisAlignment.end,
                                         crossAxisAlignment: CrossAxisAlignment.end,
                                         children:[ 
                                               Container( 
                                                width:10 ,
                                                height:17,
                                                color:Color(0xFF5F5E5E),


                                               
                                               ),  
                                         ], 
                                    
                                    )
                              
                              
                                ),
                            ],

                        ),

                     ),


                     SizedBox(width:30),
                     
                   Container(
                        alignment: Alignment.topLeft,
                        width:400,
                        height:260 ,
                        padding:EdgeInsets.only(left:50, top:50, right:50),
                        decoration:BoxDecoration(
                           boxShadow: [
                                         BoxShadow(
                                             color: Color.fromARGB(255, 59, 230, 73),
                                               offset: Offset(5, 5),
                                                 spreadRadius: 4,
                                             ),
                                          ],
                          color:Color(0xff313030),
                          border:Border.all(
                                 color:Color.fromARGB(255, 94, 85, 85),
                                  width:5 ,
                          ), 
                      

                        ),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                        
                            children:[
                               
                                Text("DESIGN",
                                        style:GoogleFonts.spaceMono(
                                       color:Color.fromARGB(255, 62, 123, 66),
                                        fontSize:20,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                                 SizedBox(height:10, ),
                                 Text("DEX: 91",
                                    style:GoogleFonts.spaceMono(
                                      color:Color.fromARGB(255, 101, 218, 88),
                                        fontSize:40,
                                        fontWeight: FontWeight.w700,

                                     ),
                                 
                                 ),
                                SizedBox(height:20, ),

                                Container(
                                     width:double.infinity,
                                     height:27,
                                     decoration:BoxDecoration(
                                       color:Color.fromARGB(255, 114, 232, 101),
                                        border:Border.all(
                                           color:Color.fromARGB(255, 165, 163, 163),
                                           width:5,
                                        )
                                     ),
                                    child:Column( 
                                         mainAxisAlignment: MainAxisAlignment.end,
                                         crossAxisAlignment: CrossAxisAlignment.end,
                                         children:[ 
                                               Container( 
                                                width:50 ,
                                                height:17,
                                                color:Color(0xFF5F5E5E),


                                               
                                               ),  
                                         ], 
                                    
                                    )
                              
                              
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
                        height:900, 
                        alignment: Alignment.topLeft,
                        padding:EdgeInsets.only(left:50 ,  top:50, right:50),
                        decoration:BoxDecoration( 
                        color: Color.fromARGB(255, 32, 22, 22),
                        ),
                        
                        child:Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Container(
                                width:double.infinity,
                                height:70,
                                padding:EdgeInsets.only(left:27),
                                decoration:BoxDecoration(
                                ),
                                child:Row(children: [
                                Icon(Icons.menu_book,   color:Color.fromARGB(255, 223, 100, 223), size: 50,),
                                SizedBox(width:20),
                                Text("QUEST_LOG",
                                style:GoogleFonts.spaceMono(
                                fontSize:30, 
                                fontWeight: FontWeight.w700,
                                color:Color.fromARGB(255, 226, 161, 226),
                              
                              
                                ),
                             ), 

                           

                             ],
                               ),
                           ),
                           SizedBox(height:30 ,  width:double.infinity),


                             MouseRegion(
                                 onEnter: ((event) => {
                                    setState((){
                                      isHover5 = true;

                                    }),
                                 }),
                                 onExit: ((event) => {
                                    setState((){
                                      isHover5 = false;
                                    }),
                                 }),

                                 child: Row(
                                    children:[    
                                          SizedBox(width:40),
    
                                        AnimatedContainer(
                                          duration:Duration(milliseconds:500),
                                          width:1500, 
                                          height:350,
                                          decoration:BoxDecoration( 
                                            boxShadow: [
                                                BoxShadow(
                                                  color:Color.fromARGB(255, 226, 161, 226),
                                                  offset: Offset(5,5),
                                                  spreadRadius: 2,
                                                   ),
                                               ],
                                          color: Color.fromARGB(255, 32, 22, 22),
                                            border:Border.all(
                                            color:Color.fromARGB(255, 94, 85, 85),
                                            width:5,
                                   ),
                                  ),
                                     child :Row(
                                             mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,

                                              children:[
                                                   Container(
                                                      width:400,
                                                      height:280,
                                                      decoration:BoxDecoration(
                                                          color:Color.fromARGB(255, 114, 232, 101),
                                                           border:Border(
                                                                  right:BorderSide(width:5.0, color:Color.fromARGB(255, 94, 85, 85)),
                                                            ),
                                                      ), 
                                                     
                                                     child: Image.asset(
                                                        'assets/images/image1.jpg',
                                                        fit: BoxFit.cover,
                                                      ),
                                                      
                                                    ),

                                                  
                                                   
                                              ],

                                          )
                                  ),




                               ],
                              ),

                           
                           
                             ),



                            SizedBox(height:30 ,  width:double.infinity), 

                            MouseRegion(
                                 onEnter: ((event) => {
                                    setState((){
                                      isHover5 = true;

                                    }),
                                 }),
                                 onExit: ((event) => {
                                    setState((){
                                      isHover5 = false;
                                    }),
                                 }),

                                 child: Row(
                                    children:[    
                                          SizedBox(width:40),

                                  AnimatedContainer(
                                          width:1500, 
                                          height:350,
                                          alignment: Alignment.topLeft,
                                           decoration:BoxDecoration( 
                                            boxShadow: [
                                                BoxShadow(
                                                  color:Color.fromARGB(255, 226, 161, 226),
                                                  offset: Offset(5,5),
                                                  spreadRadius: 2,
                                                   ),
                                               ],
                                            color: Color.fromARGB(255, 32, 22, 22),
                                            border:Border.all(
                                            color:Color.fromARGB(255, 94, 85, 85),
                                            width:5,
                                     ),
                                  ),

                                  duration:Duration(milliseconds:500),
                                  
                                          child :Row(
                                             mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,

                                              children:[
                                                   Container(
                                                      width:400,
                                                      height:280,
                                                      decoration:BoxDecoration(
                                                          color:Color.fromARGB(255, 114, 232, 101),
                                                           border:Border(
                                                                  right:BorderSide(width:5.0, color:Color.fromARGB(255, 94, 85, 85)),
                                                            ),
                                                      ), 
                                                       
                                                       child: Image.asset(
                                                        'assets/images/image2.jpg',
                                                        fit: BoxFit.cover,
                                                      ),

                                                      
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

              // Container( 
              //   child:Column(children:[




              //   ]),
              // )
          ],
        ),
      
      ),
    );
  }
}

class profilepage extends StatelessWidget {
  const profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("profile page")),
      body: Container(child: Column(children:[
            
 
          ]
            
        )),
    );
  }
}
