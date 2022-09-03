import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:images_picker/images_picker.dart';

import '../Models/AppColors.dart';

class SelectingInvitation extends StatefulWidget {

  @override
  State<SelectingInvitation> createState() => _SelectingInvitationState();
}
Future getImage() async {
  var media =await ImagesPicker.pick(
    count: 1,
    pickType: PickType.image,
  );
  var filePath = media?.first.thumbPath;
  print("Picked file : ${media?.first.thumbPath}");
// Media
// .path
// .thumbPath (path for video thumb)
// .size (kb)
}
class _SelectingInvitationState extends State<SelectingInvitation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor(AppColors.mainColor),
        title: Text("Select Invitation Image"),
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:40),
              child: Center(
                child: SizedBox(
                  height: 300,
                  width: 300,
                  child: Image(
                    image: AssetImage("images/upload_image.jpg"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: TextButton(
                onPressed: (){
                  getImage();
                },
                child: Container(
                  width: 200,
                  height: 70,
                  decoration: BoxDecoration(
                    color: HexColor(AppColors.mainColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Center(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top:30),
                            child: Text("SELECT IMAGE",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15
                              ),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
