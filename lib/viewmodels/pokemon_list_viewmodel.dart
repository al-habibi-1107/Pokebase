import 'package:flutter/material.dart';

import './pokemon_viewmodel.dart';
import '../models/pokemon.dart';
import '../services/webservices.dart';

class PokemonListViewModel with ChangeNotifier{

List<PokemonViewModel> pokemonList = List<PokemonViewModel>();

void populateList()async{

List<Pokemon> list= await WebServices().fetchPokemons();

this.pokemonList =list.map((pokemon) => PokemonViewModel(pokemon)).toList();

notifyListeners();

}



}