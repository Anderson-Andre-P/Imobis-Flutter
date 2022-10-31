import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:imobis/views/home/widgets/search_field.dart';

const double fabSize = 56;

class CustomFABWidget extends StatelessWidget {
  final ContainerTransitionType transitionType;

  const CustomFABWidget({
    Key? key,
    required this.transitionType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => OpenContainer(
        transitionDuration: const Duration(seconds: 1),
        openBuilder: (context, _) => const SearchScreen(),
        closedShape: const CircleBorder(),
        closedColor: Theme.of(context).primaryColor,
        closedBuilder: (context, openContainer) => Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).primaryColor,
          ),
          height: fabSize,
          width: fabSize,
          child: const Icon(Icons.add, color: Colors.white),
        ),
      );
}
