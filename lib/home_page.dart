import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_signin/provider/google_sign_in.dart';
import 'package:google_signin/sign_up_widget.dart';
import 'package:provider/provider.dart';

import 'logged_in_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator(),);
            } else if (snapshot.hasData) {
              return LoggedInWidget();
            } else if (snapshot.hasError) {
              return Center(child: Text('Algo de errado'),);
            } else {
              return const SignUpWidget();
            }
          },
        ),
      ),
    );
  }
}
