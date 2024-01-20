class CropsModel{
  var Crops_Dunums;

  CropsModel({required this.Crops_Dunums});

  factory CropsModel.fromJson(Map<String, dynamic> json) {
    return CropsModel(
      Crops_Dunums: json["Crops_Dunums"],
    );
  }
//
}