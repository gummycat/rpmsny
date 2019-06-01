import 'package:flutter/material.dart';
import 'blocs/auth_bloc.dart';
import 'screens/root_screen.dart';
import 'package:provider/provider.dart';
import 'services/firebase_auth_service.dart';

class App extends StatelessWidget {

// background fcf9ed
// accent ffba5a
// accent 2 ff7657
// color 665c84
// https://stackoverflow.com/questions/50081213/how-do-i-use-hexadecimal-color-strings-in-flutter

  Widget build(context) {
    return Provider<AuthBloc>(
      builder: (_) => AuthBloc(FirebaseAuthService()),
      child: MaterialApp(
        title: 'Minder',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.purple[700],
          accentColor: Colors.orange[800],
        ),
        home: RootScreen()
      ),
    );
  }
}