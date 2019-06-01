import 'package:flutter/material.dart';
import '../utils/strings.dart';
import '../blocs/auth_bloc.dart';
import 'package:provider/provider.dart';

class LoginForm extends StatefulWidget {
  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
  AuthBloc _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bloc = Provider.of<AuthBloc>(context);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //SizedBox(height: 20,),
          //_emailField(),
          //SizedBox(height: 10,),
          //_passwordField(),
          //SizedBox(height: 20,),
          //_submitButton(),
          SizedBox(height: 20,),
          _googleButton(),
        ],
    );
  }

  Widget _googleButton() {
    return RaisedButton(
      child: SizedBox(
        width: 225,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 30,
              width: 40,            
              child: Image.asset('assets/google_g.png',)
            ),
            Text(StringConstant.signInGoogle),
          ],
        ),
      ),
      textColor: Colors.blue[400],
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0)),
      onPressed: () {
        _bloc.authenticateUserWithGoogle();
      });
  }

  void _showMessage(String message) {
    final snackbar = SnackBar(
        content: Text(message),
        duration: new Duration(seconds: 2));
    Scaffold.of(context).showSnackBar(snackbar);
  }
}
