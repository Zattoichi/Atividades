class Pokemon{
  String nome;
  int pokedexIndex;
  List abilities; 

  Pokemon({
    this.nome, this.pokedexIndex, this.abilities
  });

  factory Pokemon.fromJson(Map<String,dynamic>json){
    return Pokemon(
      nome: json['forms'][0]['name'],
      pokedexIndex: json['game_indices'][0]['game_index'],
      abilities: json ['abilities']

    );

  }  
  
}