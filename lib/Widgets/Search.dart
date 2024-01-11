import 'package:flutter/material.dart';
import 'package:news/constants.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.4,
      height: 40,
      decoration: BoxDecoration(
        color: titleText,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(left: 15),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(
                Icons.search_outlined,
                color: background,
              ),
              hintText: 'Find interesting news',
              hintStyle: TextStyle(
                fontSize: 15,
                color: background,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
