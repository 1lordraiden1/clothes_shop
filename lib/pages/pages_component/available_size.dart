import 'package:clothes_store/component/component.dart';
import 'package:flutter/material.dart';

class AvaliableSize extends StatefulWidget {
  final String size;
  const AvaliableSize({super.key, required this.size});

  @override
  State<AvaliableSize> createState() => _AvaliableSizeState();
}

class _AvaliableSizeState extends State<AvaliableSize> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Container(
          margin: const EdgeInsets.only(right: 16.0),
          width: 40,
          height: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: isSelected ? mainColor : lowColor,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: mainColor!)),
          child: Text(
            widget.size,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.white : Colors.black87,
            ),
          ),
        ),
      );
}
