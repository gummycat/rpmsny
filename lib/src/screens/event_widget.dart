import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:rpmsny/src/models/event.dart';

class EventWidget extends StatelessWidget {
  final Event _event;

   final fmtTime = DateFormat('M/dd @ hh:mm');

  EventWidget(this._event);


String _getEventSubtitle(Event event) {
    String start = fmtTime.format(event.startTime);
    String end = fmtTime.format(event.endTime);
    end = end.substring(end.indexOf("@ "));

    return '$start - $end';
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
                                backgroundColor: Theme.of(context).accentColor,
child: Text(_event.range.toString()),),
      title: Text(_event.host.displayName),
      subtitle: Text("${_event.host.skills} on  ${_getEventSubtitle(_event)}"),
    );
  }

}