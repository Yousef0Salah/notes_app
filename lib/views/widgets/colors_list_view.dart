import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});

  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: isActive ? 42 : 32, // الدائرة الكبيرة
      backgroundColor: Colors.white, // اللون اللي عايزه يظهر بالخلف
      child: CircleAvatar(
        radius: isActive ? 36 : 32, // الدائرة الأصغر
        backgroundColor: color, // الدائرة الأمامية (الأصفر)
      ),
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  List<Color> colors = const [
    Color(0xffFF76CE),
    Colors.red,
    Color(0xffFDFFC2),
    Colors.yellow,
    Color(0xff94FFD8),
    Colors.green,
    Color(0xffA3D8FF),
    Colors.blue,
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2.5,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
