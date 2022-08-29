import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuraHeaderItem extends StatelessWidget{
 String suraName='';

  SuraHeaderItem(this.suraName);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(

        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
              suraName,style: TextStyle(fontSize: 22,
            color:Theme.of(context).accentColor)


          ),
        ),


    );
  }




}