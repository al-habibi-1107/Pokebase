import 'package:flutter/foundation.dart';

class Pokemon {
  int id;
  String name;
  String imgUrl;

  Pokemon({
    @required this.id,
    @required this.name,
    @required this.imgUrl,
  });

  factory Pokemon.fromjson(Map<String,dynamic> json,String img){
    return Pokemon(id: json['id'],name: json['name'],imgUrl: img);
  }
}
