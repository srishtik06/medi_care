import 'package:flutter/material.dart';
import 'package:medi_cal/AppAfterLogin.dart';
import 'package:medi_cal/DoctorDetails.dart';
import 'package:medi_cal/Utilities.dart';

class DoctorsPage extends StatefulWidget {
  const DoctorsPage({super.key});

  @override
  State<DoctorsPage> createState() => _DoctorsPageState();
}

class _DoctorsPageState extends State<DoctorsPage> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: [
                SizedBox(height: size.height*.03,),

                Row(
                  children: [
                    IconButton(
                        onPressed:(){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const AppAfterLogin()));
                        },
                        icon: const Icon(Icons.arrow_back_ios)
                    ),

                   const  Padding(
                      padding: EdgeInsets.fromLTRB(90, 0, 0, 0),
                      child: Text('Doctor',style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                      ),),
                    ),

                  ],
                ),

                SizedBox(height: size.height*.03,),


                //search bar
                Container(
                  height: size.height*0.07,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color:Colors.black54,
                        width: 2,
                      )
                  ),

                  child: Row(
                    children: [
                      IconButton(
                        iconSize:40,
                        onPressed:(){},
                        icon: const Icon(Icons.search_outlined),
                      ),

                      SizedBox(width: size.width*0.04,),

                      Text('Search a doctor',style: TextStyle(
                          fontSize: 18,
                          color: Colors.black45
                      ),),

                      SizedBox(width: size.width*0.2,),

                      Image.asset('assets/Group 4.png',scale: 3.5,),

                    ],
                  ),
                ),

                SizedBox(height: size.height*0.04,),


                //slider options
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      NearbySlider(size.height*0.06, size.width*0.45, Color(0xFF50A5AE), Color(0xFF50A5AE), 'Recommended by you', Color(0xFFFFFFFF)),

                      SizedBox(width: size.width*0.03,),

                      NearbySlider(size.height*0.06, size.width*0.3, Color(0xFFFFFFFF), Color(0xFF000000), 'Nearby you',Color(0xFF000000) ),

                      SizedBox(width: size.width*0.03,),

                      NearbySlider(size.height*0.06, size.width*0.3, Color(0xFFFFFFFF), Color(0xFF000000), 'Nearby you',Color(0xFF000000) ),

                      SizedBox(width: size.width*0.03,),

                      NearbySlider(size.height*0.06, size.width*0.3, Color(0xFFFFFFFF), Color(0xFF000000), 'Nearby you',Color(0xFF000000) ),

                      SizedBox(width: size.width*0.03,),

                      NearbySlider(size.height*0.06, size.width*0.3, Color(0xFFFFFFFF), Color(0xFF000000), 'Nearby you',Color(0xFF000000) ),

                      SizedBox(width: size.width*0.03,),

                      NearbySlider(size.height*0.06, size.width*0.3, Color(0xFFFFFFFF), Color(0xFF000000), 'Nearby you',Color(0xFF000000) ),
                    ],
                  ),
                ),

                SizedBox(height: size.height*0.04,),



                DoctorDetailsBlock(size.height*0.25, context , DoctorDetails(), ),

                SizedBox(height: size.height*0.02,),

                DoctorDetailsBlock(size.height*0.25, context , DoctorDetails(),  ),

                SizedBox(height: size.height*0.02,),

                DoctorDetailsBlock(size.height*0.25, context , DoctorDetails(), ),

                SizedBox(height: size.height*0.05,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}