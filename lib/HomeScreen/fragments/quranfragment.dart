import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled11/HomeScreen/fragments/SuraHeaderItem.dart';
import 'package:untitled11/Screens/SurahDetails.dart';
import 'package:untitled11/Services/ApiServices.dart';

import '../../shared/components/Constants.dart';
import '../../Models/Surah.dart';
import '../../Widgets/SurahCustomListTitle.dart';

class QuranFragment extends StatefulWidget{
  @override
  State<QuranFragment> createState() => _QuranFragmentState();
}

class _QuranFragmentState extends State<QuranFragment> {
  ApiServices apiServices =ApiServices();

   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      FutureBuilder(
                    future: apiServices.getSurah(),
                    builder: (BuildContext context,AsyncSnapshot<List<Surah>> snapshot){
                      if(snapshot.hasData){
                        List<Surah>? surah =snapshot.data;
                        return ListView.builder(
                            itemCount: surah!.length,
                            itemBuilder: (context,index)=>SurahCustomListTitle(surah:surah[index],
                       context:context,ontap:(){
                              setState(() {
                                Constants.surahIndex=(index+1);
                              });
           Navigator.pushNamed(context, SurahDetailes.Route_Name);
                                }
                        ),   );
                      }
 return Center(
  child:
 CircularProgressIndicator(),
 );
                    });
    //          Expanded(
    //            child: ListView.separated(
    //             separatorBuilder:(context,index){
    //
    //               return Container(
    //               color:Theme.of(context).accentColor
    //
    //
    //               );
    // },
    //             itemCount: names.length,
    //             itemBuilder: (context,index){
    //       return SuraHeaderItem(names[index]);
    //     }),

           // ),
   //   ],),),],),);
  }
}