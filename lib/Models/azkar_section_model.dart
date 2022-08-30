class AzkarSectionModel {
  int? id;
  String? name;
  AzkarSectionModel(this.id, this.name);

  AzkarSectionModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
  }
}