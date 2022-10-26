import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers/validators/resources.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  // var selectedRange = RangeValues(400, 1000);
  RangeValues _currentRangeValues = const RangeValues(70000, 1000000);
  // RangeValues _currentRangeAreas = const RangeValues(5000);
  double _currentRangeAreas = 5000;

  bool isCheckedOne = false;
  bool isCheckedTwo = false;
  bool isCheckedThree = false;

  bool active_0 = true;
  bool active_1 = false;
  bool active_2 = false;
  bool active_3 = false;
  bool active_4 = true;
  bool active_5 = false;
  bool active_6 = false;
  bool active_7 = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return R.colors.customBlue;
    }
    return R.colors.customBlue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 0.0,
                  ),
                  alignment: Alignment.center,
                  child: TextField(
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          width: 0,
                          // style: BorderStyle.solid,
                          color: R.colors.customGrey,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          width: 0,
                          // style: BorderStyle.solid,
                          color: R.colors.customBlue,
                        ),
                      ),
                      filled: false,
                      fillColor: R.colors.customLightGrey,
                      hintText: "Pesquisar...",
                      prefixIcon: const Icon(
                        CupertinoIcons.search,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Text(
                  "Filtre",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: R.colors.customTitle,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "suas buscas",
                  style: TextStyle(
                    fontSize: 24,
                    color: R.colors.customTitle,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Preço",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: R.colors.customTitle,
                  ),
                ),
              ],
            ),
            RangeSlider(
              values: _currentRangeValues,
              min: 70000,
              max: 1000000,
              divisions: 100,
              labels: RangeLabels(
                'R\$${_currentRangeValues.start.round()}',
                'R\$${_currentRangeValues.end.round()}',
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },
              activeColor: R.colors.customLightBlue,
              inactiveColor: R.colors.customGrey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  r"R$70.000,00",
                  style: TextStyle(
                    fontSize: 14,
                    color: R.colors.customDarkTypography,
                  ),
                ),
                Text(
                  r"R$1.000.000,00",
                  style: TextStyle(
                    fontSize: 14,
                    color: R.colors.customDarkTypography,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Área",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: R.colors.customTitle,
                  ),
                ),
              ],
            ),
            Slider(
              value: _currentRangeAreas,
              min: 0,
              max: 5000,
              divisions: 100,
              label: '${_currentRangeAreas.round()}m²',
              // ignore: non_constant_identifier_names
              onChanged: (RangeValuesArea) {
                setState(() {
                  _currentRangeAreas = RangeValuesArea;
                });
              },
              activeColor: R.colors.customLightBlue,
              inactiveColor: R.colors.customGrey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  r"5000 m²",
                  style: TextStyle(
                    fontSize: 14,
                    color: R.colors.customDarkTypography,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 0,
            ),
            Text(
              "Quartos",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: R.colors.customTitle,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildOption(0, "Todos", active_0),
                buildOption(1, "1", active_1),
                buildOption(2, "2", active_2),
                buildOption(3, "3+", active_3),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Banheiros",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: R.colors.customTitle,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildOption(4, "Todos", active_4),
                buildOption(5, "1", active_5),
                buildOption(6, "2", active_6),
                buildOption(7, "3+", active_7),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      checkColor: R.colors.customBackground,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isCheckedOne,
                      onChanged: (bool? value) {
                        setState(() {
                          isCheckedOne = value!;
                        });
                      },
                    ),
                    Text(
                      "Piscina",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: R.colors.customDarkTypography,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: R.colors.customBackground,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isCheckedTwo,
                      onChanged: (bool? value) {
                        setState(() {
                          isCheckedTwo = value!;
                        });
                      },
                    ),
                    Text(
                      "Garagem",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: R.colors.customDarkTypography,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: R.colors.customBackground,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isCheckedThree,
                      onChanged: (bool? value) {
                        setState(() {
                          isCheckedThree = value!;
                        });
                      },
                    ),
                    Text(
                      "Sauna",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: R.colors.customDarkTypography,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50.0,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            width: 2,
                            color: R.colors.customBlue,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              18.0,
                            ),
                          ),
                        ),
                        child: const Text(
                          'Limpar filtro',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 50.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: R.colors.customBlue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              18.0,
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Realizar busca",
                          style: const TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
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
    );
  }

  Widget buildOption(int index, String text, bool selected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          active_0 = !active_0;
        });
        // if (index == 0) {
        //   setState(() {
        //     active_0 = !active_0;
        //   });
        // } else if (index == 1) {
        //   setState(() {
        //     active_1 = !active_1;
        //   });
        // } else if (index == 2) {
        //   setState(() {
        //     active_2 = !active_2;
        //   });
        // } else {
        //   setState(() {
        //     active_3 = !active_3;
        //   });
        // }
      },
      child: Container(
        height: 45,
        width: 65,
        decoration: BoxDecoration(
          color: selected ? R.colors.customLightBlue : Colors.transparent,
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
          border: Border.all(
            width: selected ? 0 : 1,
            color: R.colors.customGrey,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: selected
                  ? R.colors.customBackground
                  : R.colors.customDarkTypography,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
