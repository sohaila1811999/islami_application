import 'package:flutter/cupertino.dart';
import 'package:hijri/hijri_calendar.dart';

class TasbehFragment extends StatelessWidget{
  var _hijri= HijriCalendar.now();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Column(
        children: [
        Expanded(flex: 1,
        child: RichText(text: TextSpan(children:
        [TextSpan(text: _hijri.hDay.toString()),

    TextSpan(text: _hijri.longMonthName.toString()),

        ],),),),
    ],
    );
    }


}