// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/contants.dart';
// import 'package:flutter_application_1/widgets/filter.dart';

// class SearchField extends StatefulWidget {
//   const SearchField({super.key});

//   @override
//   State<SearchField> createState() => _SearchFieldState();
// }

// class _SearchFieldState extends State<SearchField> {
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       decoration: InputDecoration(
//         border: InputBorder.none,
//         filled: true,
//         fillColor: lightGrey,
//         hintText: "Pesquisar...",
//         prefixIcon: const Icon(CupertinoIcons.search),
//         suffixIcon: IconButton(
//           onPressed: () {
//             // _showBottomSheet();
//             // Navigator.push(
//             //   context,
//             //   MaterialPageRoute(
//             //     builder: (context) => Filter(),
//             //   ),
//             // );
//           },
//           icon: const Icon(
//             Icons.filter_alt_outlined,
//             color: lightBlue,
//           ),
//         ),
//       ),
//     );
//   }

//   // void _showBottomSheet() {
//   //   showModalBottomSheet(
//   //     context: context,
//   //     isScrollControlled: true,
//   //     shape: const RoundedRectangleBorder(
//   //       borderRadius: BorderRadius.only(
//   //         topLeft: Radius.circular(30),
//   //         topRight: Radius.circular(30),
//   //       ),
//   //     ),
//   //     builder: (BuildContext context) {
//   //       return Wrap(
//   //         children: const [
//   //           Filter(),
//   //         ],
//   //       );
//   //     },
//   //   );
//   // }
// }
