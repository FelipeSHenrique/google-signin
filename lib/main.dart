import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_signin/provider/google_sign_in.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GooglesignInProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
