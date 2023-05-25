
import 'package:flutter/material.dart';


import '../db/db_helper.dart';
import 'admin/admin_login_page.dart';
import 'user/user_login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = '/homepage';

  @override
  Widget build(BuildContext context) {
    DbHelper.open();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Library management system'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, UserLoginPage.routeName);
              },
              child: const Text('Your library is here'),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, AdminLoginPage.routeName);
              },
              child: const Text('Admin'),
            ),

          ],
          
        ),
      ),
    );
  }
}
