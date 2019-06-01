import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rpmsny/src/blocs/schedule_bloc.dart';
import 'package:rpmsny/src/models/event.dart';
import 'package:rpmsny/src/screens/event_widget.dart';
import 'search_screen.dart';

class HomeScreen extends StatefulWidget {
  final String _uid;
  
  HomeScreen(this._uid, {Key key}) : super(key: key);

  _HomeScreenState createState() => _HomeScreenState(_uid);
}

class _HomeScreenState extends State<HomeScreen> {
  final String _uid;
  List<Event> events = Event.listEvents().where((item) {

    return (int.parse(item.eventKey) %3 == 0);
  }).toList();

  _HomeScreenState(this._uid);

  Widget build(context) {
    return MultiProvider(
      providers: [
      ],
      child: Scaffold(
          appBar: AppBar(
            title: Text('Minder '),
          ),
          body: SafeArea(
            top: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: ListView.builder(
                    shrinkWrap: false,
                    itemCount: events.length,
                    itemBuilder: (contezt, index) => 
                      EventWidget(events[index])
                    ,
                  
                ),)
              ],
            ),
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