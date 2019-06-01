import 'package:flutter/material.dart';
import '../blocs/timer_bloc.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  final String _uid;
  
  HomeScreen(this._uid, {Key key}) : super(key: key);

  _HomeScreenState createState() => _HomeScreenState(_uid);
}

class _HomeScreenState extends State<HomeScreen> {
  final String _uid;

  _HomeScreenState(this._uid);

  Widget build(context) {
    return MultiProvider(
      providers: [
        Provider<TimerBloc>(builder: (_) => TimerBloc(),),
      ],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Text('Home Screen'),
          ),
          SizedBox(height: 10,),
        ],
      )
    );
  }
}