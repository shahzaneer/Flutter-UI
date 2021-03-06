import 'package:catalog_app/Utils/myRoutes.dart';
import 'package:flutter/material.dart';
import 'Screens/HomePage.dart';
import 'Screens/LoginPage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
    themeMode: ThemeMode.dark,
    theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.zenKakuGothicAntique().fontFamily,
        // yeh tamaam appBars k liay hoga
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          titleTextStyle: TextStyle(
            color: Colors.black,
          ),
        )),
    darkTheme: ThemeData(brightness: Brightness.light),
    debugShowCheckedModeBanner: false,
    initialRoute: MyRoutes.homeRoute,
    routes: {
      "/": (context) => Login(),
      MyRoutes.homeRoute: (context) => Home(),
      MyRoutes.loginRoute: (context) => Login(),
    },
  ));
}

// !For dark Mode this code is written!

// themeMode: ThemeMode.dark,
//     theme: ThemeData(primarySwatch: Colors.blue),
//     darkTheme: ThemeData(brightness: Brightness.dark),






// Routes tell us that which screen/widget will be shown in which order
    // yeh map lete hain map is like dictionary in python
    // first arg in string "/" default hai yani app k run hotey k saath hi jo aana chahiay
    // "/login" etc wagera name hain. Inke against aik function return hota hai jiska argument hota hai context aur
    // wo return krte hain aik widget!
    // yeh function anonymous function hai
    // q k is function ka koi name nhi hai.

//initial route -> jo page dengay ->  jitni baar bhi app kholi jayegi yeh page hi khulega!
