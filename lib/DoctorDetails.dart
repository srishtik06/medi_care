import 'package:flutter/material.dart';
import 'package:medi_cal/AppAfterLogin.dart';
import 'package:medi_cal/Utilities.dart';
import 'package:medi_cal/DoctorsPage.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({Key? key}) : super(key: key);

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white10,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.height*.015,),

                  const Row(
                    children: [
                      BackButton(
                        color: Colors.black,
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                        child: Text('Doctor Details',style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),),
                      ),

                    ],
                  ),

                  SizedBox(height: size.height*.03,),

                  //doctor photo name location rating column
                  Row(
                    children: [
                      Image.asset('assets/Frame 25.png',scale: 4,),

                      SizedBox(width: size.width*0.04,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Dr. Manas Jha', style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize:25,
                          ),
                          ),

                          const Text('Delhi',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                            ),),

                          SizedBox(height: size.height*.02,),
                          Row(
                            children: [
                              Image.asset('assets/icon _star_.png', scale: 4,),

                              const Padding(
                                padding:  EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: Text('4.8',style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff50A5AE),
                                ),),
                              ),
                            ],
                          ),


                          const Padding(
                            padding:  EdgeInsets.fromLTRB(0, 3, 0, 0),
                            child:  Row(
                              children: [
                                Icon(Icons.location_on_outlined,size: 16,),
                                Text('800 m away',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14,
                                  ),)
                              ],
                            ),
                          ),




                        ],
                      ),


                    ],
                  ),

                  SizedBox(height: size.height*.03,),

                  const Text('About',style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize:25,
                  ),),

                  SizedBox(height: size.height*.01,),


                  //doctor bio
                  const Text('Dr. Jha has become known for his diagnostic '
                      'acumen and his ability to explain complex medical condition in a'
                      ' clear and approachable manner. Patients appreciate his calm and '
                      'reassuring demeanor, which helps alleviate the anxiety that oftern '
                      'accompanies visits to the doctor',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),),


                  SizedBox(height: size.height*.04,),


                  //date row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DateBox('Mon', '21', size.height*.065, size.width*.115),
                      DateBox('Tue', '22', size.height*.065, size.width*.115),
                      DateBox('Wed', '23', size.height*.065, size.width*.115),
                      DateBox('Thur', '24', size.height*.065, size.width*.115),
                      DateBox('Fri', '25', size.height*.065, size.width*.115),
                      DateBox('Sat', '26', size.height*.065, size.width*.115),
                    ],
                  ),

                  SizedBox(height: size.height*.02,),

                  const Divider(
                    color: Colors.grey,
                    thickness: 1.2,
                  ),

                  SizedBox(height: size.height*.02,),


                  //time rows
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TimeBox(size.height*0.05, size.width*.27, '09:00 AM', Colors.white, Colors.black38, Colors.black38),
                      TimeBox(size.height*0.05, size.width*.27, '10:00 AM', Colors.white, Colors.black, Colors.black),
                      TimeBox(size.height*0.05, size.width*.27, '12:00 AM', Colors.white, Colors.black38, Colors.black38),
                    ],
                  ),

                  SizedBox(height: size.height*.017,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TimeBox(size.height*0.05, size.width*.27, '01:00 PM', Colors.white, Colors.black38, Colors.black38),
                      TimeBox(size.height*0.05, size.width*.27, '02:00 PM', const Color(0xff50A5AE), const Color(0xff50A5AE), Colors.black87),
                      TimeBox(size.height*0.05, size.width*.27, '03:00 PM', Colors.white, Colors.black, Colors.black),
                    ],
                  ),

                  SizedBox(height: size.height*.017,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TimeBox(size.height*0.05, size.width*.27, '04:00 PM', Colors.white, Colors.black, Colors.black),
                      TimeBox(size.height*0.05, size.width*.27, '05:00 PM', Colors.white, Colors.black, Colors.black),
                      TimeBox(size.height*0.05, size.width*.27, '06:00 PM', Colors.white, Colors.black38, Colors.black38),
                    ],
                  ),


                  SizedBox(height: size.height*.02,),


                ],
              ),
            ),
          ),
        ),
      ),


      bottomNavigationBar: Container(
          height: size.height*.09,
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.black12
              )
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/Frame 37.png',scale: 5,),
                Container(
                  height: size.height*.057,
                  width: size.width*.68,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xff50A5AE),
                  ),

                  child: Center(
                    child: Text('Book Appointment',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                  ),
                )

              ],
            ),
          )
      ),
    );
  }
}