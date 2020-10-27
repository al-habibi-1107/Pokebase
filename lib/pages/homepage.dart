import 'dart:math';

import 'package:google_fonts/google_fonts.dart';
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
    Provider.of<PokemonListViewModel>(context, listen: false).populateList();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<PokemonListViewModel>(context);

    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 245, 245, 1),
      appBar: AppBar(
        title: Text("Poke-Base"),
        backgroundColor: Color.fromRGBO(246, 245, 245, 1),
      ),
      body: ListView.builder(
        itemBuilder: (context, i) {
          final rnd = Random();
          int index = rnd.nextInt(vm.pokemonList.length);
          return Padding(
            padding: const EdgeInsets.all(15),
            child: Card(
              shape: Border.all(color:const Color.fromRGBO(31, 60, 136, 1) ),
              color: Color.fromRGBO(246, 245, 245, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: FadeInImage.assetNetwork(
                        placeholder: "./images/placeholder.png",
                        image: vm.pokemonList[index].imageUrl),
                  ),
                  Container(
                    height: 60,
                    color: Color.fromRGBO(31, 60, 136, 1),
                    padding: EdgeInsets.all(8),
                    child: Center(
                      child: Text(
                        vm.pokemonList[index].name,style: GoogleFonts.bangers(color:Color.fromRGBO(238, 111, 87, 1),fontSize: 30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: vm.pokemonList.length,
      ),
    );
  }
}
