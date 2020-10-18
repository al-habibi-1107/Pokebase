import '../models/pokemon.dart';

class PokemonViewModel{

Pokemon _pokemon;

PokemonViewModel(Pokemon pokemon):_pokemon=pokemon;

String get name{
  return _pokemon.name;
}

int get id{
  return _pokemon.id;
}

String get imageUrl{
  return _pokemon.imgUrl;
}


}