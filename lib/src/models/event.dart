

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
    return [
      Event('101', Host('Evan Sanderson','Java'), '', 'Washington DC', 20, DateTime.now(), DateTime.now()),
      Event('102', Host('Steve Clark','Flutter'), '', 'New York, NY', 30, DateTime.now(), DateTime.now()),
      Event('103', Host('Clark Johnson','Flutter'), '', 'Washington, DC', 50, DateTime.now(), DateTime.now()),
      Event('104', Host('Jessica Rodgers', 'Flutter'),'', 'New York, NY', 60, DateTime.now(), DateTime.now()),
      Event('105', Host('Shannon Adams', 'JavaScript'), '', 'Washington, DC', 10, DateTime.now(), DateTime.now()),
      Event('106', Host('Peter Rabbit', 'Dart'), '', 'New York, NY', 20, DateTime.now(), DateTime.now()),
      Event('107', Host('Collin Patterson','React'), '', 'Washington, DC', 20, DateTime.now(), DateTime.now()),
      Event('108', Host('Lisa Hughes', 'React'), '', 'Richmond, VA', 25, DateTime.now(), DateTime.now()),
      Event('109', Host('John Fredrickson', 'Cobol'), '', 'Richmond, VA', 30, DateTime.now(), DateTime.now()),
      Event('100', Host('Fredrick Lewis', 'Perl'), '', 'Richmond, VA', 30, DateTime.now(), DateTime.now()),
    ];
  }
}