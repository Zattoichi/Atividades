import 'package:test/test.dart';
import 'models/pokemon.dart';
void main(){

  test("Model Testing", (){
    Pokemon pokemon = Pokemon(nome: 'Pikachu', pokedexIndex: 1, abilities: ['test','test']);
    expect(pokemon.nome, equals('Pikachu'));
    Map<String, dynamic> mockJson={ 
      "forms" : [
        { 
          "name": "pikachu"
        }
      ],
      "game_indices": [
        {
          "game_index": 1
        }
      ],
      "abilities": [
        "test", "test"
      ]
    };
    
  
    Pokemon otherPokemon = Pokemon.fromJson (mockJson);
    expect(otherPokemon.nome, equals('pikachu'));
    expect(otherPokemon.pokedexIndex,equals(1));
    expect(otherPokemon.abilities, equals(["test","test"]));
    });
}
