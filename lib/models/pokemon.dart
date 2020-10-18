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

  factory Pokemon.fromjson(int id, String name,String img){
    return Pokemon(id: id,name: name,imgUrl: img);
  }
}
