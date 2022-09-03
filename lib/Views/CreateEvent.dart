import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../Controllers/EventFormProcessor.dart';
import '../Models/AppColors.dart';


class CreateEvent extends StatefulWidget {

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  var eventNameController = TextEditingController();
  var eventCapacityController = TextEditingController();
  var eventDateController = TextEditingController();
  var eventVenueController = TextEditingController();
  var eventErrorString="";

  @override
  void dispose() {
    eventNameController.dispose();
    eventCapacityController.dispose();
    eventDateController.dispose();
    eventVenueController.dispose();

  }

  var eventTimeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: HexColor(AppColors.mainColor),),
      body: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          //height: 1400,

          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:30),
                child: Center(
                  child: SizedBox(
                    width: 300,
                    height: 50,
                    child: TextField(
                      controller: eventNameController,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: HexColor(AppColors.mainColor),
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                          hoverColor: HexColor(AppColors.mainColor),
                          labelText: "Event Name",
                          icon: Icon(Icons.info),
                          fillColor: HexColor(AppColors.mainColor),
                          focusColor: HexColor(AppColors.mainColor),
                          border: UnderlineInputBorder(
                          )

                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:40),
                child: Center(
                  child: SizedBox(
                    width: 300,
                    height: 50,
                    child: TextField(
                      controller: eventCapacityController,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: HexColor(AppColors.mainColor),
                      ),
                      decoration: InputDecoration(
                          labelText: "Event Capacity ",
                          icon: Icon(Icons.list),
                          fillColor: HexColor(AppColors.mainColor),
                          focusColor: HexColor(AppColors.mainColor),
                          border: UnderlineInputBorder(
                          )

                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:40),
                child: Center(
                  child: SizedBox(
                    width: 300,
                    height: 50,
                    child: TextField(
                      controller: eventDateController,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: HexColor(AppColors.mainColor),
                          fontSize: 15
                      ),
                      decoration: InputDecoration(
                          labelText: "Event Date",
                          icon: Icon(Icons.calendar_today_outlined),
                          fillColor: HexColor(AppColors.mainColor),
                          focusColor: HexColor(AppColors.mainColor),
                          border: UnderlineInputBorder(
                          )

                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:40),
                child: Center(
                  child: SizedBox(
                    width: 300,
                    height: 50,
                    child: TextField(
                      controller: eventVenueController,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: HexColor(AppColors.mainColor),
                          fontSize: 15
                      ),
                      decoration: InputDecoration(
                          labelText: "Venue",
                          icon: Icon(Icons.location_on),
                          fillColor: HexColor(AppColors.mainColor),
                          focusColor: HexColor(AppColors.mainColor),
                          border: UnderlineInputBorder(
                          )

                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:40),
                child: Center(
                  child: SizedBox(
                    width: 300,
                    height: 50,
                    child: TextField(
                      controller: eventTimeController,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: HexColor(AppColors.mainColor),
                          fontSize: 15
                      ),
                      decoration: InputDecoration(
                          labelText: "Time",
                          icon: Icon(Icons.lock_clock),
                          fillColor: HexColor(AppColors.mainColor),
                          focusColor: HexColor(AppColors.mainColor),
                          border: UnderlineInputBorder(
                          )

                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Center(
                  child: SizedBox(
                      height: 50,
                      child: Text(eventErrorString,style:
                      TextStyle(
                          color: Colors.red
                      ),)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Center(
                  child: SizedBox(
                    width:300,
                    height: 35,

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20),
                child: Center(
                  child: TextButton(
                    onPressed: (){
                      var errorMsg = "Please fill in all fields";
                      EventFormProcessor processor = new EventFormProcessor(
                          eventNameController.value.text,
                          eventCapacityController.value.text,
                          eventDateController.value.text,
                          eventVenueController.value.text,
                          eventTimeController.value.text
                      );

                      if(!processor.checkFields())
                      {
                        eventErrorString =errorMsg;
                        processor.createSession().whenComplete(() {
                          //move to Next Screen
                        });
                      } else {
                        eventErrorString =errorMsg;
                        setState(() {

                        });
                      }
                    },
                    child: Container(
                      width: 250 ,
                      height: 60,
                      decoration: BoxDecoration(
                          color: HexColor(AppColors.mainColor),
                          borderRadius: BorderRadius.circular(14)
                      ),
                      child: Center(
                        child: Text("Next",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),

                  ),
                ),
              )


            ],
          ),

        ),
      ),
    );
  }
}
