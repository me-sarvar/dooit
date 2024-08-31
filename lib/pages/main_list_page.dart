import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainListPage extends StatefulWidget {
  const MainListPage({super.key});

  @override
  State<MainListPage> createState() => _MainListPageState();
}

class _MainListPageState extends State<MainListPage> {
  List<bool> isSelected = [
    true,  // "All List" is selected by default
    false, // "Pinned" is not selected
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/images/logo_black.svg')),
          ),
          title: const Text(
            'Dooit',
            style:
            TextStyle(fontWeight: FontWeight.bold, fontFamily: "Graphik"),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search_rounded,
                  size: 30.0,
                ),
              ),
            )
          ]),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Column(
          children: [
            ToggleButtons(
              isSelected: isSelected,
              onPressed: (int index) {
                setState(() {
                  // Deselect all and select the current index
                  for (int i = 0; i < isSelected.length; i++) {
                    isSelected[i] = i == index;
                  }
                });
              },
              color: Colors.black, // Color for unselected text
              selectedColor: Colors.white, // Color for selected text
              fillColor: Colors.black, // Background color when selected
              borderRadius: BorderRadius.circular(10.0),
              children: [
                Container(
                  decoration: BoxDecoration(
                    color:
                    isSelected[0] ? Colors.black : const Color(0xFFF0F0F0),
                  ),
                  width: 180.0,
                  child: const Center(child: Text('All List')),
                ),
                Container(
                  decoration: BoxDecoration(
                    color:
                    isSelected[1] ? Colors.black : const Color(0xFFF0F0F0),
                  ),
                  width: 180.0,
                  child: const Center(child: Text('Pinned')),
                ),
              ], // Rounded corners
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: SizedBox(
                  width: double.infinity,
                  height: 300.0,
                  child: SvgPicture.asset(
                    'assets/images/todo svg.svg',
                    fit: BoxFit.fitWidth,
                  )),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Text(
                    'Create your first to-do list...',
                    style: TextStyle(
                        fontFamily: 'Graphik',
                        fontSize: 23,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(180.0, 55.0),
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      onPressed: () {
                        Navigator.pushNamed(context, '/new_list');
                      },
                      child: const Text(
                        '+  New List',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'SF Pro Display'),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
