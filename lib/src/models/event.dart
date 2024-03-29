

import 'host.dart';

class Event {

  final String eventKey;
  final Host host;
  String mentee;
  final String location;
  final int range;
  final DateTime startTime;
  final DateTime endTime;


  //Constructor
  Event(this.eventKey, this.host, this.mentee, this.location, this.range, this .startTime, this.endTime);


  static List<Event> listEvents() {
    return[
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
  }

  static List<Event> yourEvents() {
    return[
      Event('101', Host('Sandy Evans','Java'), '', 'Washington DC', 20, new DateTime(2019, 6, 5, 16, 45, 00, 0, 0), new DateTime(2019, 6, 5, 17, 15, 00, 0, 0)),
      Event('102', Host('Clark Stevens','Flutter'), '', 'New York, NY', 30, new DateTime(2019, 6, 2, 16, 45, 00, 0, 0), new DateTime(2019, 6, 2, 17, 00, 00, 0, 0)),
      Event('103', Host('John Clarkson','Flutter'), '', 'Washington, DC', 50, new DateTime(2019, 6, 20, 16, 45, 00, 0, 0), new DateTime(2019, 6, 20, 17, 30, 0, 0, 0)),
      Event('104', Host('Jessica Rodgers', 'Flutter'),'', 'New York, NY', 60, new DateTime(2019, 6, 12, 16, 00, 0, 0, 0), new DateTime(2019, 6, 12, 16, 45, 0, 0, 0)),
    ];
  }
}