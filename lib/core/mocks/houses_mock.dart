class Item {
  String? title;
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

  Item(
    this.title,
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

  static List<Item> recommendation = [
    Item(
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
    Item(
      'Casa moderna para alugar',
      'Casa',
      'https://images.pexels.com/photos/2102587/pexels-photo-2102587.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Itajubá - MG',
      2500,
      'Apartamento contendo 1 quarto, sala, cozinha, área de serviço e banheiro, sem vaga de garagem, sem áreas de lazer, piscinas ou quadras.',
      2,
      4,
      235,
      2,
      [
        'https://images.pexels.com/photos/2102587/pexels-photo-2102587.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'https://images.unsplash.com/photo-1502005097973-6a7082348e28?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aG91c2VzJTIwaW5zaWRlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1502005229762-cf1b2da7c5d6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      ],
    ),
    Item(
      'Apartamento moderno para alugar',
      'Apartamento',
      'https://images.pexels.com/photos/950745/pexels-photo-950745.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Itajubá - MG',
      1600,
      'Casa -  Alugar - Itajubá, MG - 2 banheiros - 4 quartos - 235 metros quadrados',
      2,
      4,
      235,
      2,
      [
        'https://images.pexels.com/photos/950745/pexels-photo-950745.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'https://images.unsplash.com/photo-1489171078254-c3365d6e359f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80',
        'https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      ],
    ),
    Item(
      'Apartamento moderno para alugar',
      'Apartamento',
      'https://images.pexels.com/photos/129494/pexels-photo-129494.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Itajubá - MG',
      800,
      'Casa -  Alugar - Itajubá, MG - 2 banheiros - 4 quartos - 235 metros quadrados',
      2,
      4,
      235,
      2,
      [
        'https://images.pexels.com/photos/129494/pexels-photo-129494.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'https://images.unsplash.com/photo-1566195992011-5f6b21e539aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
        'https://images.unsplash.com/photo-1549089154-ad7b2808944c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
      ],
    ),
  ];

  static List<Item> nearby = [
    Item(
      'Apartamento moderno para alugar',
      'Apartamento',
      'https://images.pexels.com/photos/7606067/pexels-photo-7606067.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Itajubá - MG',
      400,
      'Casa -  Alugar - Itajubá, MG - 2 banheiros - 4 quartos - 235 metros quadrados',
      2,
      4,
      235,
      2,
      [
        'https://images.pexels.com/photos/7606067/pexels-photo-7606067.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'https://images.unsplash.com/photo-1556912167-f556f1f39fdf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=881&q=80',
        'https://images.unsplash.com/photo-1560185127-1902ccdc5094?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      ],
    ),
    Item(
      'Apartamento moderno para alugar',
      'Apartamento',
      'https://images.pexels.com/photos/265004/pexels-photo-265004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Itajubá - MG',
      350,
      'Casa -  Alugar - Itajubá, MG - 2 banheiros - 4 quartos - 235 metros quadrados',
      2,
      4,
      235,
      2,
      [
        'https://images.pexels.com/photos/265004/pexels-photo-265004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'https://images.unsplash.com/photo-1565538810643-b5bdb714032a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        'https://images.unsplash.com/photo-1527694224012-be005121c774?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
      ],
    ),
    Item(
      'Apartamento moderno para alugar',
      'Apartamento',
      'https://images.pexels.com/photos/276508/pexels-photo-276508.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Itajubá - MG',
      600,
      'Casa -  Alugar - Itajubá, MG - 2 banheiros - 4 quartos - 235 metros quadrados',
      2,
      4,
      235,
      2,
      [
        'https://images.pexels.com/photos/276508/pexels-photo-276508.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'https://images.unsplash.com/photo-1486946255434-2466348c2166?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        'https://images.unsplash.com/photo-1524634126442-357e0eac3c14?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      ],
    ),
    Item(
      'Apartamento moderno para alugar',
      'Apartamento',
      'https://images.pexels.com/photos/259962/pexels-photo-259962.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Itajubá - MG',
      565,
      'Casa -  Alugar - Itajubá, MG - 2 banheiros - 4 quartos - 235 metros quadrados',
      2,
      4,
      235,
      2,
      [
        'https://images.pexels.com/photos/259962/pexels-photo-259962.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'https://images.unsplash.com/photo-1505576391880-b3f9d713dc4f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        'https://images.unsplash.com/photo-1540396515873-dd778f7679e7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      ],
    ),
  ];

  static List<Item> newRecommendation = [
    Item(
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
    Item(
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
