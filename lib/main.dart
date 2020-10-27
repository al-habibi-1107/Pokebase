import 'package:flutter/material.dart';
import 'package:pokebase/pages/homepage.dart';
import 'package:provider/provider.dart';
import './viewmodels/pokemon_list_viewmodel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Poke-Base",
      home: ChangeNotifierProvider(
        create: (context)=>PokemonListViewModel(),
        child: HomePage(),
      ),
    );
  }
}
