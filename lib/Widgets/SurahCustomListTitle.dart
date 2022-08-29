import 'package:flutter/material.dart';

import '../Models/Surah.dart';

Widget SurahCustomListTitle({
  required Surah surah ,
required BuildContext context,
required VoidCallback ontap,})
{

return GestureDetector(
  onTap: ontap,
child: Container(
  padding: EdgeInsets.all(16),
  decoration: BoxDecoration(color: Colors.white,
  boxShadow:[BoxShadow( color: Colors.black,
    blurRadius: 20
  ),
  ],),

  child: Column(
    children: [
Row(
  children: [
    Container(
      alignment: Alignment.center,
      height: 30,
      width: 40,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,

      ),
      
      child:Text((surah.number).toString() ,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 10,
      ),),
    ),
    SizedBox(width: 20,),
    Column(crossAxisAlignment: CrossAxisAlignment.start,

      children: [Text(surah.englishName! ,
        style: TextStyle(
          fontWeight: FontWeight.bold,),
      ),
  ],

),
Spacer(),
    Text(surah.name! ,
      style: TextStyle(
        fontWeight: FontWeight.bold,
      fontSize: 15,color: Colors.black),
    ),
    ],

  ),
],
),
),);
}