import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:untitled11/HomeScreen/fragments/hadethfragment.dart';
import 'package:untitled11/HomeScreen/fragments/radiofragment.dart';
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
          //currentIndex: selectedIndex,
          //selectedIconTheme: IconThemeData(

            // color: Theme.of(context).accentColor,

//size: 37,
        //),
          //selectedItemColor:Theme.of(context).accentColor,

          //showUnselectedLabels: true,
         // showSelectedLabels: true,

       //   iconSize: 35,
          items:  [
            TabItem(
              title:'Radio',





              icon:ImageIcon(AssetImage('assets/images/radio.png'),),

            ),

           TabItem(
             title: 'Quran',

              icon:ImageIcon(AssetImage('assets/images/quran.png'),),

            ),
         TabItem(
              title: 'Tasbeh',

              icon:ImageIcon(AssetImage('assets/images/sebha.png'),),

            ),
            TabItem(
              title: 'Ahadeth',

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
      return TasbehFragment();

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
  'Quran',
  'Hadeth',
  'Tasbeh',
  'Radio',


];
  Widget? getMainTitle() {
    return Text(titles[selectedIndex]);
    }
  }
