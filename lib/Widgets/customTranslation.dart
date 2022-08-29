import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled11/Models/Translation.dart';

class TranslationTile extends StatelessWidget{
  late final int index;
 late final SurahTranslation surahTranslation;
 TranslationTile({required this.index,required this.surahTranslation});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Padding(padding: EdgeInsets.all(8),
   child: Container(
       decoration: BoxDecoration(
         shape: BoxShape.rectangle,
         color: Colors.white,
         borderRadius: BorderRadius.all(Radius.circular(8)),
boxShadow: [BoxShadow(


  blurRadius: 1,
)],

       ),
child: Column(crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    Stack(
      children: [Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8))),
padding: EdgeInsets.all(16),
        width: double.infinity,
      ),
      Positioned(
          left: 12,
          top: 3,
          child: Container(
            padding: EdgeInsets.all(6),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.black,
            ),
child: Text(surahTranslation.aya!,style: TextStyle(
  color: Colors.white,
  fontSize: 16,


),),
          ),)
      ],


    ),
Container(
  padding: EdgeInsets.all(8),

  child:Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Text(surahTranslation.arabic_text!,
        textAlign: TextAlign.end,
        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
      ),
      // Text(surahTranslation.translation!,
      //   textAlign: TextAlign.end,
      //   style: TextStyle(fontSize: 18,color: Colors.black),
      // ),
      //

    ],

  ) ,),
  ],


),
   ),


   );
  }



  
}