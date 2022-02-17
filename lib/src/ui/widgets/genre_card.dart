import 'package:book_store/src/services/config.dart';
import 'package:book_store/src/services/provider/data_provider.dart';
import 'package:book_store/src/ui/screens/genre.dart';
import 'package:book_store/src/ui/widgets/sliding_page_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class GenreCard extends StatelessWidget {
  const GenreCard({required this.index, Key? key}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      color: Colors.white,
      elevation: 1,
      shadowColor: Palette.grey1,
      child: InkWell(
        splashFactory: InkRipple.splashFactory,
        splashColor: Palette.grey1,
        onTap: (){
          Provider.of<Data>(context, listen: false).genreIndex(index);
          Navigator.push(
            context,
            SlidingPageRoute(child: GenrePage())
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/'+Genre.genre[index]+'.svg',
                height: 25,
                width: 25,
              ),
              const SizedBox(width: 20,),
              SizedBox(
                width: size.width*0.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(Genre.genre[index].toUpperCase(), style: const TextStyle(fontSize: 20),),
                    SvgPicture.asset(
                      'assets/Next.svg',
                      width: 20,
                      height: 20,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
