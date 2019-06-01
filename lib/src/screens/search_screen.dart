import 'package:flutter/material.dart';
import '../blocs/timer_bloc.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class SearchScreen extends StatefulWidget {
  
  SearchScreen({Key key}) : super(key: key);

  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  _SearchScreenState();
  DateTime selectedDate = DateTime.now();
  final fmt = DateFormat('EEEE, MMMM d, y');

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  Widget build(context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: MultiProvider(
        providers: [
          Provider<TimerBloc>(builder: (_) => TimerBloc(),),
        ],
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              RaisedButton(
                child: Text(fmt.format(selectedDate)),
                onPressed: () {
                  _selectDate(context);
                }
              ),
              SizedBox(height: 10,),
            ],
          ),
        )
      ),
    );
  }
}