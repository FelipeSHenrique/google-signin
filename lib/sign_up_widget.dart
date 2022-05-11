import 'package:flutter/material.dart';
import 'package:google_signin/provider/google_sign_in.dart';
import 'package:provider/provider.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              final provider = Provider.of<GooglesignInProvider>(context, listen: false);
              provider.googleLogin();
            },
            child: const Text('Login com google'),
          ),
        ),
      ),
    );
  }
}
