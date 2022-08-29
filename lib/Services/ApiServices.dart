import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import '../Models/Surah.dart';
import '../Models/Translation.dart';

class ApiServices {
  final endPointUrl = "http://api.alquran.cloud/v1/surah";
  List<Surah> list = [];

  Future<List<Surah>> getSurah() async {
    Response res = await http.get(Uri.parse(endPointUrl));
    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);
      json['data'].forEach((element) {
        if (list.length < 114) {
          list.add(Surah.fromJson(element));
        }
      });
      print('ol ${list.length}');
      return list;
    } else {
      throw ("Can't get the surah");
    }
  }

  Future<SurahTranslationList> getTranslation(int index) async {
    final url = 'https://quranenc.com/api/v1/translation/sura/english_saheeh/$index';
    var res = await http.get(Uri.parse(url));
    return SurahTranslationList.fromjson(json.decode(res.body));
  }
}