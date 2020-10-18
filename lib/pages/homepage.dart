import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodels/pokemon_list_viewmodel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  void initState() {
    Provider.of<PokemonListViewModel>(context,listen: false).populateList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final vm=Provider.of<PokemonListViewModel>(context);
    
    return Scaffold(
      appBar: AppBar(
        title:Text("Poke-Base")
      ),
      body: ListView.builder(itemBuilder: (context,index){
        final pokemon= vm.pokemonList[index];
        return Container(

          child: Text("${pokemon.name}"));
      },itemCount: vm.pokemonList.length,),
    );
  }
}