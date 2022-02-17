import 'package:flutter/material.dart';

import 'genre_card.dart';

class GenreList extends StatelessWidget {
  const GenreList({required this.controller, Key? key}) : super(key: key);
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: ListView.separated(
        controller: controller,
        shrinkWrap: true,
        itemCount: 7,
        itemBuilder: (context, index){
          return GenreCard(index: index);
        },
        separatorBuilder: (BuildContext context, int index){
          return const Divider(color: Colors.transparent,);
        },
      ),
    );
  }
}
