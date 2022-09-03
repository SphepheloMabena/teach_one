import 'dart:ffi';
import 'package:shared_preferences/shared_preferences.dart';

import '../Models/SessionKeys.dart';
class EventFormProcessor
{
  String eventName;
  String eventCapacity;
  String eventDate;
  String eventVenue;
  String eventTime;

   EventFormProcessor(
      this.eventName,
      this.eventCapacity,
      this.eventDate,
      this.eventVenue,
      this.eventTime
      ){}

    bool checkFields() {
       if(eventName.isNotEmpty && eventCapacity.isNotEmpty &&
           eventDate.isNotEmpty && eventVenue.isNotEmpty
           && eventTime.isNotEmpty)
         {
           return true;
         }
       else {
         return false;
       }

   }
   Future createSession() async{
     // Obtain shared preferences.
     final session = await SharedPreferences.getInstance();

     session.setString(SessionKeys.EVENTNAME,eventName);
     session.setString(SessionKeys.EVENTCAPACITY,eventCapacity);
     session.setString(SessionKeys.EVENTDATE,eventDate);
     session.setString(SessionKeys.EVENTVENUE,eventVenue);
     session.setString(SessionKeys.EVENTTIME,eventTime);
     return true;
   }
}