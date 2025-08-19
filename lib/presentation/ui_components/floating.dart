import 'package:flutter/material.dart';

class FloatingNavBarItem {
  final IconData iconData;
  final Widget page;

  FloatingNavBarItem({
    required this.iconData,
    required this.page,
  });
}

class FloatingNavBar extends StatefulWidget {
  final List<FloatingNavBarItem> items;
  final Color color;
  final double horizontalPadding;

  const FloatingNavBar({
    super.key,
    required this.items,
    this.color = Colors.white,
    this.horizontalPadding = 14.0,
  });

  @override
  _FloatingNavBarState createState() => _FloatingNavBarState();
}

class _FloatingNavBarState extends State<FloatingNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: widget.horizontalPadding, vertical: 7),
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 7,
            spreadRadius: 3,
            offset: Offset(2, 0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(widget.items.length, (index) {
          final item = widget.items[index];
          final isSelected = _selectedIndex == index;

          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => item.page),
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  item.iconData,
                  color: isSelected ? Colors.blueGrey : Colors.blueAccent,
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
