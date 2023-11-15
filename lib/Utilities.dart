import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget SignUpOptions(height, width, image, String text ) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
    child: Container(
      height:height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.black,
            width: 2,
          )

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image ,scale: 3.5,),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(text ,style: const TextStyle(
              fontSize: 15,
            ),),
          ),
        ],
      ),


    ),
  );
}




//Sign in or sign up text
Widget SignInSignUpText(context , text1 , text2 , page){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(text1 ,style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),),

      GestureDetector(
        onTap: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> page));
        },
        child:  Padding(
          padding:  EdgeInsets.all(6.0),
          child: Text(text2 ,style: const TextStyle(
            color: Color(0xff50A5AE),
            fontSize: 18,
          ),
          ),
        ),
      ),
    ],
  );

}




//different icon button at the homepage
Widget IconOptions(image , text){
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xffEEF6F7),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(image,scale: 3.7,),
          )),
      Padding(
        padding:const EdgeInsets.all(10.0),
        child: Text(text ,style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey,
        ),),
      )
    ],
  );
}



Widget DoctorsInfo(ContainerHeight , ContainerWidth , image, intro, name, dividerWidth) {
  return Container(
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: ContainerHeight,
            height: ContainerWidth,
            child: Image.asset(image),
            decoration: const BoxDecoration(
              color: Color(0xffEEF6F7),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(15, 8, 0, 3),
            child: Text(intro,
              style: const TextStyle(
                color: Colors.blueGrey,
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
            child: Text(name,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
            child: Container(
                width: dividerWidth,
                child: Divider(thickness: 2,)),
          ),


        ]
    ),
  );
}

Widget GoogleSignUp (height , image, text, width){
  return Container(
      height:height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.black,
            width: 2,
          )
      ),

      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image ,scale: 4,),



          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(text ,style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black87
            ),),
          )
        ],

      )
  );
}



Widget DateBox( day , date , height , width){
  return   Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: Colors.black54,
      ),
    ),

    child:  Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Text(day ,style: const TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 15,
          ),),

          Text(date ,style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),)
        ],
      ),
    ),
  );
}




//appointment time block
Widget TimeBox(height , width , time, backgroundColor, borderColor, textcolor){
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(17),
      border: Border.all(
        color: borderColor,
      ),
    ),
    child : Center(
      child: Text(time ,style:  TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 15,
        color: textcolor,
      ),),
    ),
  );
}

//nearby scrollable elements
Widget NearbySlider(height, width,color1, color2, text, color3 ){
  return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color1,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color:color2,
            width: 2,
          )
      ),

      child:Center(
        child: Text(text,style: TextStyle(
          fontSize: 12,
          color: color3,
        ),),
      )
  );
}



//doctor short summary details
Widget DoctorDetailsBlock(height, context, page ){
  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>page));
    },
    child: Container(
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color:Colors.black54,
            width: 2,
          )
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFFEEF6F7),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color(0xFFEEF6F7),
                          width: 2,
                        )
                    ),

                    child: Image.asset('assets/Rectangle 63.png',scale: 6,)
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:  EdgeInsets.fromLTRB(0, 0, 0, 5),
                        child: Text('Dr. Manas Jha',style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15
                        ),),
                      ),



                      const Padding(
                        padding:  EdgeInsets.fromLTRB(0, 0, 0, 3),
                        child: Text('General Practitioner',style: TextStyle(
                            color: Colors.black45,
                            fontSize: 13
                        ),),
                      ),



                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                        child: Row(
                          children: [
                            Image.asset('assets/icon_suitcase_.png',scale: 3,),



                            const Padding(
                              padding:  EdgeInsets.fromLTRB(10, 0, 8, 0),
                              child: Text('2 Years',style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w500
                              ),),
                            ),


                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 9, 0),
                              child: Image.asset('assets/icon_suitcase_.png',scale: 3,),
                            ),


                            const Text('4.8',style: TextStyle(
                                fontSize: 14,
                                color: Colors.black45,
                                fontWeight: FontWeight.w500
                            ),)
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),

           const  Divider(
              color: Colors.black45,
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text('\$32,400',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18
                    ),),
                  ),



                  Row(
                    children: [
                      GestureDetector(
                          onTap: (){
                            Image.asset('assets/Frame 24(2).png',scale: 3.5,);
                          },
                          child: Image.asset('assets/Frame 24.png',scale: 3.5,)),



                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Container(
                          // height: size.height*0.04,
                          // width: size.width*0.2,
                            decoration: BoxDecoration(
                                color:const Color(0xFF50A5AE) ,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: const Color(0xFF50A5AE),
                                  width: 2,
                                )
                            ),

                            child: const Padding(
                              padding:  EdgeInsets.fromLTRB(22, 7, 22, 7),
                              child: Center(
                                child: Text('Chat',style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),),
                              ),
                            )
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}