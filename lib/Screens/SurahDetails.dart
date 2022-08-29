import 'package:flutter/material.dart';
import 'package:untitled11/shared/components/Constants.dart';
import 'package:untitled11/Models/Translation.dart';

import '../Services/ApiServices.dart';
import '../Widgets/customTranslation.dart';


class SurahDetailes extends StatefulWidget {

static const Route_Name='Surah_detailes';
@override
State<SurahDetailes> createState() => _SurahDetailesState();
}

class _SurahDetailesState extends State<SurahDetailes> {
  ApiServices _apiServices =ApiServices();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Scaffold(
        body: FutureBuilder(
            future: _apiServices.getTranslation(Constants.surahIndex!),
            builder: (BuildContext context,AsyncSnapshot<SurahTranslationList> snapshot){
              if (snapshot.hasData){

                return ListView.builder(
                  itemCount: snapshot.data!.translationList.length,
                  itemBuilder: (context,index)=>TranslationTile(index:index,
                       surahTranslation: snapshot.data!.translationList[index],
                  ),
                   );
              }else return Center(
                  child:
                  CircularProgressIndicator(),
                );
                          }),
      );
}}
