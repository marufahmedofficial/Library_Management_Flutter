
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'pages/admin/admin_book_info_page.dart';
import 'pages/admin/admin_book_list_page.dart';
import 'pages/admin/admin_home_page.dart';
import 'pages/admin/admin_login_page.dart';
import 'pages/admin/admin_signup.dart';
import 'pages/admin/new_book_add.dart';
import 'pages/home_page.dart';
import 'pages/user/book_info_page.dart';
import 'pages/user/booking_book_page.dart';
import 'pages/user/hired_book.dart';
import 'pages/user/user_home_page.dart';
import 'pages/user/user_login_page.dart';
import 'pages/user/user_signup.dart';
import 'providers/admin_provider.dart';
import 'providers/book_provider.dart';
import 'providers/booking_provider.dart';
import 'providers/comment_provider.dart';
import 'providers/rating_provider.dart';
import 'providers/user_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => UserProvider()),
      ChangeNotifierProvider(create: (context) => AdminProvider()),
      ChangeNotifierProvider(create: (context) => BookProvider()),
      ChangeNotifierProvider(create: (context) => RatingProvider()),
      ChangeNotifierProvider(create: (context) => CommentProvider()),
      ChangeNotifierProvider(create: (context) => BookingProvider()),


    ],
    child: const MyApp(),
  ));
  }

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        UserSignup.routeName: (context) => UserSignup(),
        AdminSignup.routeName: (context) => AdminSignup(),
        UserHomePage.routeName: (context) => UserHomePage(),
        BookInfoPage.routeName: (context) => BookInfoPage(),
        BookingBookPage.routeName: (context) => BookingBookPage(),
        AdminHomePage.routeName: (context) => AdminHomePage(),
        AdminBookListPage.routeName: (context) => AdminBookListPage(),
        AdminBookInfoPage.routeName: (context) => AdminBookInfoPage(),
        UserLoginPage.routeName: (context) => UserLoginPage(),
        AdminLoginPage.routeName: (context) => AdminLoginPage(),
        NewBookAdd.routeName: (context) => NewBookAdd(),
        HiredBook.routeName: (context) => HiredBook(),
      },
    );
  }
}