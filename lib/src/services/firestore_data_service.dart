import 'package:cloud_firestore/cloud_firestore.dart';
import 'base_data_service.dart';
//import '../models/event.dart';

class FirestoreDataService implements BaseDataService {
  Firestore _firestore = Firestore.instance;

  // Stream<List<Event>> watchedEvents(String uid) {
  //   return _firestore
  //     .collection("watchiis")
  //     .where("user_id", isEqualTo: uid)
  //     .orderBy("date")
  //     .snapshots()
  //     .map((snapshot) => snapshot.documents.map((doc) {
  //       var name = (doc['name'] != null) ? doc['name'].toString() : '[Missing Name]';
  //       Timestamp ts = doc['date'];
  //       var date = (ts != null) ? ts.toDate() : DateTime.now();                      
  //       int count = doc['count'];
  
  //       return Event(date, name, count);
  //     }).toList()
  //   );
  // }
}