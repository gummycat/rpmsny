import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../blocs/timer_bloc.dart';
import 'search_screen.dart';
import 'package:flare_flutter/flare_actor.dart';

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
      child: Scaffold(
          appBar: AppBar(
            title: Text('Minder'),
          ),
          body: SafeArea(
            top: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              ],
            )
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.search),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => SearchScreen()
              ));
            },
          ),
        ),
      
      
      
      
      
      
      
      
      
    );
  }
}