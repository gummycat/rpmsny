import 'package:flutter/material.dart';
import '../blocs/timer_bloc.dart';
import 'package:provider/provider.dart';
// import '../services/firestore_data_service.dart';

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
          // ),
          // floatingActionButton: 
          //   UnicornDialer(
          //   hasBackground: false,
          //   parentButtonBackground: Colors.orange[800],
          //   parentButton: Icon(Icons.add),
          //   childButtons: <UnicornButton>[
          //     UnicornButton(
          //       currentButton: FloatingActionButton(
          //         backgroundColor: Colors.purple[800],
          //         mini: true,
          //         child: Icon(Icons.add),
          //         onPressed: () {},
          //       ),
          //     ),
          //     UnicornButton(
          //       currentButton: FloatingActionButton(
          //         backgroundColor: Colors.purple[800],
          //         mini: true,
          //         child: Icon(Icons.search),
          //         onPressed: () {},
          //       ),
          //     ),
          //   ],
          // ),
      )
    );
  }
}