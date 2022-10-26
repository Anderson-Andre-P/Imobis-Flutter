import 'package:flutter/material.dart';

import '../../../core/helpers/validators/resources.dart';
import '../../../core/mocks/houses_mock.dart';
import '../../screens/detail_screen.dart';
import 'house_card.dart';

class SuggestionList extends StatefulWidget {
  SuggestionList(
      {required this.backgroundColor,
      required this.title,
      required this.typographTitleColor,
      this.items,
      Key? key})
      : super(key: key);

  Color backgroundColor;
  Color typographTitleColor;
  String? title;
  List<Item>? items;

  @override
  State<SuggestionList> createState() => _SuggestionListState();
}

class _SuggestionListState extends State<SuggestionList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: widget.backgroundColor,
      margin: const EdgeInsets.only(
          // right: 10,
          // left: 10,
          ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
              right: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: widget.typographTitleColor,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Ver tudo",
                    style: TextStyle(
                      color: R.colors.customBlue,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          SizedBox(
            height: 340.0,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.items!.length,
              itemBuilder: (contex, index) => ItemCard(
                widget.items![index],
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailScreen(item: widget.items![index]),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
