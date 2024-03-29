import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../models/event.dart';
import '../models/host.dart';
import '../widgets/event_widget.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key key}) : super(key: key);

  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  _SearchScreenState();
  DateTime selectedDate = DateTime.now();
  final fmt = DateFormat('EEEE, MMMM d, y');
  static final fmtTime = DateFormat('hh:mm');
  var events = List<Event>();

  Future<Null> _selectDate(BuildContext context) async {
    DateTime now = DateTime.now();

    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(now.year, now.month, now.day),
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
        ],
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Date: '),
                  RaisedButton(
                    child: Text(fmt.format(selectedDate)),
                    onPressed: () {
                      _selectDate(context);
                    }
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Radius (miles):  '),
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '# of miles',
                      ),
                      textAlign: TextAlign.right,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Center(
                child: RaisedButton(
                  child: Text('Search'),
                  onPressed: () {
                    setState(() { 
                      _setSearchResults();
                    });
                  },
                ),
              ),
              Flexible(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: events.length,
                  itemBuilder: (contezt, index) => EventWidget(events[index]),
                ),
              )
            ],
          ),
        )
      ),
    );
  }

  static String getEventSubtitle(Event event) {
    String start = fmtTime.format(event.startTime);
    String end = fmtTime.format(event.endTime);

    return '$start - $end';
  }

  void _setSearchResults() {
    events = [
      Event('101', Host('Evan Sanderson','Java'), '', 'Washington DC', 20, new DateTime(2019, 6, 15, 16, 45, 0, 0, 0), new DateTime(2019, 6, 15, 17, 45, 0, 0, 0)),
      Event('102', Host('Steve Clark','Flutter'), '', 'New York, NY', 30, new DateTime(2019, 6, 20, 16, 45, 0, 0, 0), new DateTime(2019, 6, 15, 17, 45, 0, 0, 0)),
      Event('103', Host('Clark Johnson','Flutter'), '', 'Washington, DC', 50, new DateTime(2019, 6, 20, 16, 45, 0, 0, 0), new DateTime(2019, 6, 15, 17, 45, 0, 0, 0)),
      Event('104', Host('Jessica Rodgers', 'Flutter'),'', 'New York, NY', 60, new DateTime(2019, 6, 15, 16, 00, 0, 0, 0), new DateTime(2019, 6, 15, 17, 00, 0, 0, 0)),
      Event('105', Host('Shannon Adams', 'JavaScript'), '', 'Washington, DC', 10, new DateTime(2019, 6, 15, 16, 45, 0, 0, 0), new DateTime(2019, 6, 15, 17, 45, 0, 0, 0)),
      Event('106', Host('Peter Rabbit', 'Dart'), '', 'New York, NY', 20, new DateTime(2019, 6, 15, 16, 45, 0, 0, 0), new DateTime(2019, 6, 15, 17, 45, 0, 0, 0)),
      Event('107', Host('Collin Patterson','React'), '', 'Washington, DC', 20, new DateTime(2019, 6, 15, 16, 45, 0, 0, 0), new DateTime(2019, 6, 15, 17, 45, 0, 0, 0)),
      Event('108', Host('Lisa Hughes', 'React'), '', 'Richmond, VA', 25, new DateTime(2019, 6, 15, 16, 45, 0, 0, 0), new DateTime(2019, 6, 15, 17, 45, 0, 0, 0)),
      Event('109', Host('John Fredrickson', 'Cobol'), '', 'Richmond, VA', 30, new DateTime(2019, 6, 15, 16, 45, 0, 0, 0), new DateTime(2019, 6, 15, 17, 45, 0, 0, 0)),
      Event('100', Host('Fredrick Lewis', 'Perl'), '', 'Richmond, VA', 30, new DateTime(2019, 6, 15, 16, 45, 0, 0, 0), new DateTime(2019, 6, 15, 17, 45, 0, 0, 0)),    
    ];

    events.sort((e1, e2) => (e1.startTime.compareTo( e2.startTime)));
  }
}