import 'package:test/test.dart';
import 'models/pokemon.dart';
void main(){

  test("Model Testing", (){
    Pokemon pokemon = Pokemon(nome: 'Pikachu', pokedexIndex: 1, abilities: ['test','test']);
    expect(pokemon.nome, equals('Pikachu'));
  });

}
