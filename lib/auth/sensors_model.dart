class SensorsModel{
  String? id;
  String? tempsoil;
  String? humdity;
  String? sunlight;
  String? ph;
  String? title;
  String? windspeed;
  String? mois1;
  String? mois2;
  String? mois3;
  String? tempair;
  String? rain;
  String? windDix;
  String? windDiy;
  String? windDiz;

  SensorsModel({
    required this.id,
    required this.tempsoil,
    required this.humdity,
    required this.sunlight,
    required this.ph,
    required this.title,
    required this.windspeed,
    required this.mois1,
    required this.mois2,
    required this.mois3,
    required this.tempair,
    required this.rain,
    required this.windDix,
    required this.windDiy,
    required this.windDiz,
             });

    factory SensorsModel.fromjson(Map<String,dynamic> json){
        return SensorsModel(id: json['id'].toString(),
         tempsoil: json['attributes']['Temperature_soil'].toString(),
          humdity: json['attributes']['humdity'].toString(),
           sunlight: json['attributes']['sunlight'].toString(),
            ph:json['attributes']['ph'].toString(), 
            title: json['attributes']['title'].toString(),
            windspeed: json['attributes']['Wind_speed'].toString(),
            mois1: json['attributes']['moisture1'].toString(),
            mois2: json['attributes']['moisture2'].toString(),
            mois3: json['attributes']['moisture3'].toString(),
            tempair: json['attributes']['Temperature_Air'].toString(),
            rain: json['attributes']['Rain'].toString(),
            windDix: json['attributes']['Wind_direction_x'].toString(),
            windDiy: json['attributes']['Wind_direction_y'].toString(),
            windDiz: json['attributes']['Wind_direction_z'].toString(),


            );
    }

            
}