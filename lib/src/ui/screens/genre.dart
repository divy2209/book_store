import 'package:book_store/src/services/config.dart';
import 'package:book_store/src/services/provider/data_provider.dart';
import 'package:book_store/src/ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class GenrePage extends StatelessWidget {
  GenrePage({Key? key}) : super(key: key);
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final data = Provider.of<Data>(context, listen: false);
    int index = data.index;

    void unFocus(){
      FocusScopeNode currentFocus = FocusScope.of(context);
      if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
        currentFocus.focusedChild!.unfocus();
        data.changeFocus();
      }
    }
    return GestureDetector(
      onTap: unFocus,
      child: WillPopScope(
        onWillPop: (){
          unFocus();
          return Future.value(false);
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              SizedBox(
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 50, bottom: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: SvgPicture.asset(
                              'assets/Back.svg',
                              width: 22,
                              height: 22,
                            ),
                          ),
                          const SizedBox(width: 15,),
                          Text(Genre.genre[index], style: const TextStyle(fontSize: 30, color: Palette.color1, fontWeight: FontWeight.w600),)
                        ],
                      ),
                      const SizedBox(height: 20,),
                      const SearchBar()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
