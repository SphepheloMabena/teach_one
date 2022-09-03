import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:images_picker/images_picker.dart';

import '../Controllers/EventFormProcessor.dart';
import '../Models/AppColors.dart';


class CreateBlog extends StatefulWidget {

  @override
  State<CreateBlog> createState() => _CreateBlogState();
}

class _CreateBlogState extends State<CreateBlog> {
  var eventNameController = TextEditingController();
  var eventCapacityController = TextEditingController();
  var eventDateController = TextEditingController();
  var eventVenueController = TextEditingController();
  var eventErrorString="";
  var imageDirectory = "";
  var uploadImageController = TextEditingController();

  Future getImage() async {
    var media =await ImagesPicker.pick(
      count: 1,
      pickType: PickType.image,
    );
    var filePath = media?.first.thumbPath;
    imageDirectory = filePath!;
    print("Picked file : ${media?.first.thumbPath}");

// Media
// .path
// .thumbPath (path for video thumb)
// .size (kb)
  }

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
        child: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            //height: 1400,

            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:30),
                  child: Center(
                      child: SizedBox(
                        width: 320,
                          child: Text("KNOWLEDGE SHAREd WILL BE AVAILABLE ON DISCOVER SCREEN",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,

                          ),
                            textAlign: TextAlign.center,

                          ))),
                ),

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
                      child: TextField(
                        controller: uploadImageController,
                        onTap: (){getImage().whenComplete(() {

                          setState((){
                            uploadImageController.text = imageDirectory;
                          });
                        });}
                        ,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: HexColor(AppColors.mainColor),
                        ),
                        decoration: InputDecoration(
                            labelText: "Upload Image",
                            icon: Icon(Icons.upload_outlined),
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
                            labelText: "Heading",
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
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        controller: eventDateController,
                        minLines: 1,
                        maxLines: 6,
                        maxLength: 500,
                        style: TextStyle(

                            fontWeight: FontWeight.bold,
                            color: HexColor(AppColors.mainColor),
                            fontSize: 15,

                        ),
                        decoration: InputDecoration(
                            labelText: "Body",
                            icon: Icon(Icons.calendar_today_outlined),
                            fillColor: HexColor(AppColors.mainColor),
                            focusColor: HexColor(AppColors.mainColor),
                          

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
      ),
    );
  }
}
