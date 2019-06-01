import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../blocs/auth_bloc.dart';
import '../utils/strings.dart';
import 'home_screen.dart';

class RootScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthBloc authBloc = Provider.of<AuthBloc>(context);
    return StreamBuilder<String>(
      stream: authBloc.currentUser,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.hasData) {
            return HomeScreen(snapshot.data);
          } else {
            authBloc.authenticateUserWithGoogle();
            return Text(StringConstants.signInGoogle);
          }
        } else {
          return Text('Waiting...');
        }
      },
    );
  }
}