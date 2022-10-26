import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../core/helpers/validators/resources.dart';
import '../../core/mocks/houses_mock.dart';
import '../home/widgets/suggestion_list.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({required this.item, Key? key}) : super(key: key);

  Item item;

  @override
  State<DetailScreen> createState() {
    return _DetailScreenState();
  }
}

class _DetailScreenState extends State<DetailScreen> {
  int currentIndex = 0;

  int maxLines = 4;

  bool isVisible = true;

  late PageController _controller;

  Function()? onTap;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.customBackground,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: R.colors.customBackground,
        iconTheme: IconThemeData(
          color: R.colors.customLightBlue,
        ),
        title: Text(
          widget.item.title!,
          style: TextStyle(
            color: R.colors.customTitle,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                    height: 300.0,
                    // disableCenter: true,
                    // enlargeCenterPage: true,
                    // aspectRatio: 1.0,
                    // autoPlay: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    }),
                items: widget.item.photoAlbum.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: R.colors.customGrey,
                          borderRadius: BorderRadius.circular(16.0),
                          image: DecorationImage(
                            image: NetworkImage(i),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: widget.item.photoAlbum.asMap().entries.map((i) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(
                      widget.item.photoAlbum.length,
                      curve: Curves.fastOutSlowIn,
                      duration: const Duration(seconds: 1),
                    ),
                    child: Container(
                      width: currentIndex == i.key ? 20 : 10,
                      height: 10.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? R.colors.customLightBlue
                                : R.colors.customBlue)
                            .withOpacity(
                          currentIndex == i.key ? 0.9 : 0.4,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 0.0,
                  bottom: 10.0,
                  right: 10.0,
                  left: 10.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.item.category!,
                      style: TextStyle(
                        color: R.colors.customLightBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      widget.item.title!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: R.colors.customTitle,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: R.colors.customDarkGrey,
                        ),
                        Text(
                          widget.item.location!,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16.0,
                            color: R.colors.customDarkGrey,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "R\$${widget.item.price} / Mês",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                            color: R.colors.customDarkTypography,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        IconButton(
                          onPressed: () {},
                          highlightColor:
                              R.colors.customContrastColor.withAlpha(50),
                          splashColor:
                              R.colors.customContrastColor.withAlpha(50),
                          icon: Icon(
                            Icons.favorite_outline,
                            color: R.colors.customContrastColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        facilities(
                          Icons.bed,
                          "${widget.item.rooms}",
                          "Dorms",
                        ),
                        facilities(
                          Icons.shower_outlined,
                          "${widget.item.bathrooms}",
                          "Banheiros",
                        ),
                        facilities(
                          Icons.directions_car_filled_rounded,
                          "${widget.item.carSpaces}",
                          "Vagas",
                        ),
                        facilities(
                          Icons.area_chart_outlined,
                          "${widget.item.area}",
                          "Área m²",
                        ),
                        // facilities(Icons.bed),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Descrição",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                            color: R.colors.customTitle,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          child: isVisible
                              ? Text(
                                  "${widget.item.description}",
                                  maxLines: 4,
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18.0,
                                    color: R.colors.customDarkTypography,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              : Text(
                                  "${widget.item.description}",
                                  maxLines: 400,
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18.0,
                                    color: R.colors.customDarkTypography,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                        ),
                        TextButton.icon(
                          onPressed: () {
                            setState(
                              () {
                                isVisible = !isVisible;
                              },
                            );
                          },
                          label: isVisible
                              ? const Icon(Icons.arrow_drop_down)
                              : const Icon(Icons.arrow_drop_up),
                          icon: isVisible
                              ? const Text(
                                  'Ver mais',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                )
                              : const Text(
                                  'Ver menos',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Mapa",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                        color: R.colors.customTitle,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: const Image(
                  image: AssetImage('assets/images/mapa.png'),
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 0.0,
                  bottom: 20.0,
                  right: 10.0,
                  left: 10.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Endereço",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                        color: R.colors.customTitle,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Itajubá - MG\nBairro Pinheirinho",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18.0,
                              color: R.colors.customTitle,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Explorar',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 10.0, right: 10.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: R.colors.customDarkGrey),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dados do anunciante",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: R.colors.customTitle,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Registro",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18.0,
                              color: R.colors.customTitle,
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "ANDERSON ANDRÉ",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18.0,
                              color: R.colors.customTitle,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "Código do anuncio",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18.0,
                              color: R.colors.customTitle,
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "26036C2",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18.0,
                              color: R.colors.customTitle,
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Center(
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  foregroundColor:
                                      R.colors.customContrastColor),
                              child: Text(
                                'Denunciar anunciante',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: R.colors.customContrastColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 480.0,
                color: R.colors.customLightBlue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SuggestionList(
                      backgroundColor: R.colors.customLightBlue,
                      title: "Outras recomendações para você",
                      typographTitleColor: R.colors.customBackground,
                      items: Item.newRecommendation,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text('Entrar em contato'),
        icon: const Icon(Icons.whatsapp_outlined),
        backgroundColor: R.colors.customLightBlue,
      ),
    );
  }

  Container facilities(
      IconData iconData, String numberFacilitie, String nameFacilitie) {
    return Container(
      color: R.colors.customBackground,
      child: Column(
        children: [
          Icon(
            iconData,
            color: R.colors.customDarkGrey,
          ),
          Text(
            numberFacilitie,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: R.colors.customDarkGrey,
            ),
          ),
          Text(
            nameFacilitie,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18.0,
              color: R.colors.customDarkGrey,
            ),
          ),
        ],
      ),
    );
  }
}
