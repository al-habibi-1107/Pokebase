import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/pokemon.dart';

class WebServices{

Future<List<Pokemon>> fetchPokemons()async{

 final url= "https://pokeapi.co/api/v2/pokemon?limit=60";
  var i=0;

 final response = await http.get(url);
 if(response.statusCode==200){
   final json= jsonDecode(response.body);

   Iterable item = json['results'];

  return item.map((poke){
     i++;
     var img= "https://pokeres.bastionbot.org/images/pokemon/$i.png";
     return Pokemon.fromjson(json, img);
   }).toList();

 }else{
   throw Exception("could not fetch pokemon");
 }


}

}