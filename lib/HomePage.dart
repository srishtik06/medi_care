import 'package:flutter/material.dart';
import 'package:medi_cal/DoctorsPage.dart';
import 'package:medi_cal/Utilities.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.asset('assets/hero-section.png',fit: BoxFit.cover,),
              width: MediaQuery.of(context).size.width,
            ),

            SizedBox(height: size.height*.05,),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> DoctorsPage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: IconOptions('assets/icon _Stethoscope_.png', 'Doctor',),
                    )),
                IconOptions('assets/Vector (1).png', 'Pharmacy',),
                IconOptions('assets/Vector (2).png', 'Appointment',),
                IconOptions('assets/Vector.png', 'Hospital',),

              ],
            ),

            SizedBox(height: size.height*.05,),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Image.asset('assets/Frame 16.png'),
              ),
            ),

            SizedBox(height: size.height*.04,),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Top Doctors',style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> DoctorsPage()));
                    },
                    child:  const Padding(
                      padding:  EdgeInsets.all(6.0),
                      child: Text('See all' ,style: TextStyle(
                        color: Color(0xff50A5AE),
                        fontSize: 20,
                      ),
                      ),
                    ),
                  ),
                ],
              ),
            ),


            SizedBox(height: size.height*0.04,),


            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  SizedBox(width: size.width*0.03,),


                  DoctorsInfo(size.width*.5, size.height*.15,
                    'assets/Rectangle 63.png', 'General Practitioner', 'Dr. Manas Jha', size.width*.4,),

                  SizedBox(width: size.width*0.1,),

                  DoctorsInfo(size.width*.5, size.height*.15,
                    'assets/Rectangle 64.png', 'Heart Surgeon', 'Dr. Dhruv Jha', size.width*.4,),

                  SizedBox(width: size.width*0.1,),

                  DoctorsInfo(size.width*.5, size.height*.15,
                    'assets/Rectangle 63.png', 'General Practitioner', 'Dr. Manas Jha', size.width*.4,),

                  SizedBox(width: size.width*0.1,),

                  DoctorsInfo(size.width*.5, size.height*.15,
                    'assets/Rectangle 64.png', 'Heart Surgeon', 'Dr. Dhruv Jha', size.width*.4,),

                ],
              ),
            ),

            SizedBox(height: size.height*.02,)
          ],
        ),
      ),
    );
  }
}