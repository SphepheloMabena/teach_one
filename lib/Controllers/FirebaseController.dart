import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseController
{
  var db = FirebaseFirestore.instance;


  void createEvent(
      String organizerEmail,
      String nameOfEvent,
      String dateOfEvent,
      String address,
      bool virtual,
      int capacity,
      String filePath,
      String eventLink,
      bool paid,
      String time,
      int rsvped,
      ) {

    final event = <String, dynamic>{
      "address": address,
      "capacity": capacity,
      "date": dateOfEvent,
      "filepath": filePath,
      "link": eventLink,
      "name": nameOfEvent,
      "organizer": organizerEmail,
      "paid": paid,
      "rsvped": rsvped,
      "template": "n/a",
      "time": time,
      "virtual": virtual,
      "webImage": "n/a"

    };

    db.collection("events").add(event).then((DocumentReference doc) {
        print('DocumentSnapshot added with ID: ${doc.id}');
        //when the event is added also add a rsvp document to the rsvp collections
        // the rsvp document will have the same ID as the created event
        final rsvp = <String, dynamic> {
          "id": capacity,
          "organizer": organizerEmail,
          "rsvped": 0,
        };
        String rsvpID = doc.id;
        db.collection("rsvp").doc(rsvpID).set(rsvp,SetOptions(merge: true)).whenComplete(() => print("Added successfully"));
    }
        );

        }

}
