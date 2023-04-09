import 'package:flutter/material.dart';
import 'package:imobis/views/shared/theme/config.dart';

import '../../core/domais.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  void initState() {
    super.initState();
    loginViewModel.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          icon: Icon(Icons.mode_night_rounded),
          onPressed: () {
            currentTheme.switchTheme();
          },
        ),
      ),
    );
  }
}
