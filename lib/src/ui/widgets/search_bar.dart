import 'package:book_store/src/services/config.dart';
import 'package:book_store/src/services/provider/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<Data>(
      builder: (_,data,__){
        return Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Palette.grey1,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: !data.unFocus ? Palette.color1 : Colors.transparent)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/Search.svg',
                  width: 15,
                  height: 15,
                ),
                const SizedBox(width: 10,),
                SizedBox(
                  width: size.width*0.7,
                  child: TextFormField(
                    onTap: (){
                      FocusScopeNode currentFocus = FocusScope.of(context);
                      if(currentFocus.hasPrimaryFocus || currentFocus.focusedChild==null){
                        data.changeFocus();
                      }
                    },
                    //controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Palette.grey2),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                    cursorColor: Palette.color1,
                  ),
                ),
                SvgPicture.asset(
                  'assets/Cancel.svg',
                  width: 12,
                  height: 12,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
