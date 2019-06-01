import 'package:flutter/material.dart';
import '../blocs/timer_bloc.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  
  SearchScreen({Key key}) : super(key: key);

  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  _SearchScreenState();

  Widget build(context) {
    return MultiProvider(
      providers: [
        Provider<TimerBloc>(builder: (_) => TimerBloc(),),
      ],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Text('Search Screen'),
          ),
          SizedBox(height: 10,),
        ],
      )
    );
  }
}