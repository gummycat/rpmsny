import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../blocs/auth_bloc.dart';
import '../utils/strings.dart';
import 'home_screen.dart';

class RootScreen extends StatelessWidget {
  AuthBloc authBloc;

  @override
  Widget build(BuildContext context) {
    authBloc = Provider.of<AuthBloc>(context);

    return Scaffold(
      body: StreamBuilder<String>(
        stream: authBloc.currentUser,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.hasData) {
              _showToast(context);
              return HomeScreen(snapshot.data);
            } else {
              authBloc.authenticateUserWithGoogle();
              return Text(StringConstants.signInGoogle);
            }
          } else {
            return Text('Waiting...');
          }
        },
      ),
    );
  }

  void _showToast(context) async {
    var displayName = await authBloc.getCurrentUserId();
    Scaffold.of(context).showSnackBar(new SnackBar(
      content: new Text("Hello, $displayName!!"),
    ));
  }
}