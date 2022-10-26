class Sugestion {
  String? sugestionTitle;
  String? category;
  String? thumbUrl;
  String? location;
  num? price;
  String? description;
  num? bathrooms;
  num? rooms;
  num? area;
  num? carSpaces;
  List<String> photoAlbum;

  Sugestion(
    this.sugestionTitle,
    this.category,
    this.thumbUrl,
    this.location,
    this.price,
    this.description,
    this.bathrooms,
    this.rooms,
    this.area,
    this.carSpaces,
    this.photoAlbum,
  );

  static List<Sugestion> recommendation = [
    Sugestion(
      'Mansão em condomínio de luxo',
      'Casa',
      'https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Itajubá - MG',
      10800,
      'Condomínio bem localizado próximo ao Shopping New Village. Mansão com 8 dormitórios sendo que 3 deles são suítes, sala de TV, cozinha americana, área de serviço e lavabo. Amplo espaço gourmet com churrasqueira. Garagem coberta que comport até 6 veículos.\n\nAlém dos cômodos tradicionais, a mansãs luxuosa possui áreas para jardins, piscina, espaço fitness, área de convivência, quarto com suíte, banheiro com hidromassagem, varanda, área de lazer, espaço para leitura, entre outros.',
      5,
      8,
      1625,
      6,
      [
        'https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'https://images.unsplash.com/photo-1505873242700-f289a29e1e0f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80',
        'https://images.unsplash.com/photo-1503174971373-b1f69850bded?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=913&q=80',
      ],
    ),
    Sugestion(
      'Mansão em condomínio de luxo',
      'Casa',
      'https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Itajubá - MG',
      10800,
      'Condomínio bem localizado próximo ao Shopping New Village. Mansão com 8 dormitórios sendo que 3 deles são suítes, sala de TV, cozinha americana, área de serviço e lavabo. Amplo espaço gourmet com churrasqueira. Garagem coberta que comport até 6 veículos.\n\nAlém dos cômodos tradicionais, a mansãs luxuosa possui áreas para jardins, piscina, espaço fitness, área de convivência, quarto com suíte, banheiro com hidromassagem, varanda, área de lazer, espaço para leitura, entre outros.',
      5,
      8,
      1625,
      6,
      [
        'https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'https://images.unsplash.com/photo-1505873242700-f289a29e1e0f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80',
        'https://images.unsplash.com/photo-1503174971373-b1f69850bded?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=913&q=80',
      ],
    ),
  ];
}
