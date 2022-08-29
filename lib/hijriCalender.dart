import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:hijri_picker/hijri_picker.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
class HijriCalender extends StatefulWidget {
  @override
  State<HijriCalender> createState() => _HijriCalenderState();
}

class _HijriCalenderState extends State<HijriCalender> {

  @override
  Widget build(BuildContext context) {

    HijriCalendar.setLocal("ar");
    var _hijri = HijriCalendar.now();
    var day=DateTime.now();
var format=DateFormat.yMMMd("ar_SA");
var formatted= format.format(day);
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: RichText(
                  text: TextSpan(

                    children: <InlineSpan>[
                      WidgetSpan(
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(_hijri.hDay.toString(),
                            style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,

                            fontSize: 25,
                          ),),
                        ),
                      ),
                      WidgetSpan(
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(

                              _hijri.longMonthName.toString(),
                            style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,

                            fontSize: 25,
                          ),


                          ),
                        ),
                      ),  WidgetSpan(
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text('${_hijri.hYear}', style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,

                            fontSize: 25,
                          ),),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Expanded(child:Text(formatted,style: TextStyle(color: Colors.black, fontSize: 30),) ,),
            Expanded(
              flex: 5,
              child: SfHijriDateRangePicker(
                  // view: HijriDatePickerView.month,

                  ),
            ),
          ],
        ),
      ),
    );
  }
}
