class Surah{
  int? number;
  String? name;
  String? englishName;
int? numberOfAyahs;
String? revelationType;
Surah({this.number,this.name,this.englishName,this.numberOfAyahs,this.revelationType});
factory Surah.fromJson(Map<String,dynamic> json){
  return Surah(
number: json['number'],
name: json['name'],
    englishName:json['englishName'],
numberOfAyahs: json['numberOfAyahs'],
    revelationType: json['revelationType'],
  );

}



}