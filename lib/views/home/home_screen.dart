import 'package:flutter/material.dart';

import '../../core/helpers/validators/resources.dart';
import '../../core/mocks/houses_mock.dart';
import 'widgets/filter.dart';
import 'widgets/select_category.dart';
import 'widgets/suggestion_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: R.colors.customBackground,
        toolbarHeight: 60.0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(
              Icons.location_on,
              color: R.colors.customLightBlue,
            ),
            Text(
              'Itajubá, Minas Gerais',
              style: TextStyle(
                color: R.colors.customDarkTypography,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: R.colors.customDarkGrey,
            ),
          ),
        ],
      ),
      backgroundColor: R.colors.customBackground,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // const SearchField(),
            const SelectCategory(),
            const SizedBox(
              height: 6.0,
            ),
            SuggestionList(
              backgroundColor: R.colors.customBackground,
              title: "Recomendações para você",
              typographTitleColor: R.colors.customDarkTypography,
              items: Item.recommendation,
            ),
            const SizedBox(
              height: 10.0,
            ),
            SuggestionList(
              backgroundColor: R.colors.customBackground,
              title: "Perto de você",
              typographTitleColor: R.colors.customDarkTypography,
              items: Item.nearby,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showBottomSheet();
        },
        backgroundColor: R.colors.customLightBlue,
        child: const Icon(Icons.search),
      ),
    );
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: R.colors.customBackground,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      builder: (BuildContext context) {
        return Wrap(
          children: const [
            Filter(),
          ],
        );
      },
    );
  }
}
