import 'package:flutter/material.dart';
import 'dart:convert';
import '../Models/Azkar_section_detail_model.dart';

class AzkarSectionDetailScreen extends StatefulWidget {
  final int id;
  final String title;
  const AzkarSectionDetailScreen({Key? key , required this.id , required this.title}) : super(key: key);

  @override
  _SectionDetailScreenState createState() => _SectionDetailScreenState();
}

class _SectionDetailScreenState extends State<AzkarSectionDetailScreen> {

  List<AzkarSectionDetailModel> sectionDetails = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadSectionDetail();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.separated(
            physics: BouncingScrollPhysics(),
            itemBuilder: (context , index) {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color:Colors.grey.withOpacity(.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0 , 3),
                      )
                    ]
                ),
                child: ListTile(
                  title: Text("${sectionDetails[index].reference}", textDirection: TextDirection.rtl,),
                  subtitle: Text("${sectionDetails[index].content}" , textDirection: TextDirection.rtl,style: TextStyle(
                      fontSize: 20
                  ),),
                ),
              );
            },
            separatorBuilder: (context , index) => Divider(height: 1,color: Colors.grey.withOpacity(.8),),
            itemCount: sectionDetails.length
        ),
      ),
    );
  }

  loadSectionDetail() async {
    sectionDetails = [];
    DefaultAssetBundle.of(context)
        .loadString("assets/database/azkar_section_detailes_db.json")
        .then((data) {
      var response = json.decode(data);
      response.forEach((section) {
        AzkarSectionDetailModel _sectionDetail = AzkarSectionDetailModel.fromJson(section);

        if(_sectionDetail.sectionId == widget.id) {
          sectionDetails.add(_sectionDetail);
        }

      });
      setState(() {});
    }).catchError((error) {
      print(error);
    });
  }

}