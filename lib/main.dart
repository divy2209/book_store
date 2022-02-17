import 'package:book_store/src/services/provider/data_provider.dart';
import 'package:book_store/src/ui/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const BookStore());
}

class BookStore extends StatelessWidget {
  const BookStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> Data())
      ],
      child: MaterialApp(
        title: "Book Store",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            textTheme: GoogleFonts.montserratTextTheme(
                Theme.of(context).textTheme
            )
        ),
        home: Home(),
      ),
    );
  }
}
