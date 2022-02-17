import 'package:book_store/src/services/config.dart';
import 'package:book_store/src/ui/widgets/genre_list.dart';
import 'package:book_store/src/ui/widgets/home_heading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Palette.color2,
      body: SingleChildScrollView(
        controller: _controller,
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                SvgPicture.asset(
                  'assets/Pattern.svg',
                  width: size.width,
                  height: size.height*0.305,
                  fit: BoxFit.cover,
                ),
                const Heading(),
              ],
            ),
            GenreList(controller: _controller)
          ],
        ),
      ),
    );
  }
}
