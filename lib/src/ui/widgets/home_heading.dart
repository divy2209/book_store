import 'package:book_store/src/services/config.dart';
import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Gutenberg", style: TextStyle(color: Palette.color1, fontSize: 48, fontWeight: FontWeight.w400),),
          Text("Project", style: TextStyle(color: Palette.color1, fontSize: 48),),
          SizedBox(height: 20,),
          Text("A social cataloging website that allows you to freely search its database of books, annotations, and reviews.",
              style: TextStyle(fontSize: 16, color: Palette.grey3)),
        ],
      ),
    );
  }
}
