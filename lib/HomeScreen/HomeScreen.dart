import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:untitled11/HomeScreen/fragments/hadethfragment.dart';
import 'package:untitled11/HomeScreen/fragments/radiofragment.dart';
import 'package:untitled11/Screens/azkar_screen.dart';
import 'package:untitled11/main.dart';

import '../hijriCalender.dart';
import 'fragments/quranfragment.dart';
import 'fragments/tasbehfragment.dart';

class HomeScreen extends StatefulWidget{

  static final String ROUTE_NAME ='home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
int selectedIndex =0;
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return SafeArea(
      child:
      Scaffold(
      appBar: AppBar(
        title: getMainTitle(),
        centerTitle:true,
        backgroundColor: MythemeData.yellow,

      ),


      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Theme.of(context).primaryColor),

          child: ConvexAppBar(
height: 60,
            items:  [

              TabItem(
                title:'قرآن',
                icon:ImageIcon(AssetImage('assets/images/quran.png'),),
              ),
             TabItem(
               title: 'أذكار',

                icon:ImageIcon(AssetImage('assets/images/quran.png'),),

              ),
           TabItem(
                title: 'Tasbeh',

                icon:ImageIcon(AssetImage('assets/images/sebha.png'),),

              ),
              TabItem(
                title: 'تسبيح',

                icon:ImageIcon(AssetImage('assets/images/quran-quran-svgrepo-com.png'),),

              ),

            ],
onTap: onBottomNavigationItemSelected,

          ),
        ),

     body: Stack(
       children:[
         Container(
           height:size.height*0.2,
           decoration: BoxDecoration(
           image: DecorationImage(
             fit:BoxFit.cover,
             image: AssetImage('assets/images/background.jpg'),),
         ),),


         Container(


         child: getMainView(),
       ),
     ],),

      ),);
  }
Widget? getMainView(){
    if(selectedIndex==0){
      return QuranFragment();

    }
    else if(selectedIndex==1){
      return RadioFragment();

    }
    else if(selectedIndex==2){
      return AzkarScreen();

    } else if(selectedIndex==3){
      return HijriCalender();

    }
    }

  void onBottomNavigationItemSelected( int pos){
    setState(() {
      selectedIndex=pos;
    });

  }
List<String> titles=[
  'المصحف',
  'أذكار',
  'تقويم',
  'تسبيح',
];
  Widget? getMainTitle() {
    return Text(titles[selectedIndex]);
    }
  }
