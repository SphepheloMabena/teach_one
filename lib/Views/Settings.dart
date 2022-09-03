
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:teach_one/Models/AppColors.dart';

class AppSettings{

  Column getWidget(){
    return Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 180,
            decoration: BoxDecoration(
                color: HexColor(AppColors.mainColor),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80), bottomRight: Radius.circular(80))
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:70),
                  child: Center(
                    child: Text("More",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        )
                    ),),

                ),
                Padding(
                  padding: const EdgeInsets.only(top:10),
                  child: Center(
                    child: Text("More Actions",
                      style: TextStyle(
                          fontSize: 15,
                          color: HexColor(AppColors.subMenu)
                      ),),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:110),
            child:  TextButton(
              onPressed: (){},
              child: SizedBox(
                width: double.maxFinite,
                height: 80,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 20),
                          child: SizedBox(
                              width: 50,
                              height: 50,
                              child:Icon(Icons.text_format_rounded,
                                size: 45,
                                color: HexColor(AppColors.mainColor),)
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          height: 60,
                          child: Column(
                            children: [
                              Center(
                                child: Text("Create Blog",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold
                                  ),),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:5),
                                  child: Text("Share knowledge with other",
                                    style: TextStyle(
                                        color: HexColor(AppColors.mainColor),
                                        fontSize: 15
                                    ),),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:3),
                      child: Divider(thickness: 2,color: Colors.grey,),
                    )],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:0),
            child:  TextButton(
              onPressed: (){},
              child: SizedBox(
                width: double.maxFinite,
                height: 70,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 20),
                          child: SizedBox(
                              width: 50,
                              height: 50,
                              child:Icon(Icons.account_circle_sharp,
                                size: 45,
                                color: HexColor(AppColors.mainColor),)
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          height: 50,
                          child: Column(
                            children: [
                              Center(
                                child: Text("Interact Profile",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold
                                  ),),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:5),
                                  child: Text("Manage Interact Profile",
                                    style: TextStyle(
                                        color: HexColor(AppColors.mainColor),
                                        fontSize: 15
                                    ),),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:3),
                      child: Divider(thickness: 2,color: Colors.grey,),
                    )],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:0),
            child:  TextButton(
              onPressed: (){},
              child: SizedBox(
                width: double.maxFinite,
                height: 70,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 20),
                          child: SizedBox(
                              width: 50,
                              height: 50,
                              child:Icon(Icons.calendar_today_outlined,
                                size: 45,
                                color: HexColor(AppColors.mainColor),)
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          height: 50,
                          child: Column(
                            children: [
                              Center(
                                child: Text("Create Event",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold
                                  ),),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:5),
                                  child: Text("Empower others",
                                    style: TextStyle(
                                        color: HexColor(AppColors.mainColor),
                                        fontSize: 15
                                    ),),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:3),
                      child: Divider(thickness: 2,color: Colors.grey,),
                    )],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:0),
            child:  TextButton(
              onPressed: (){},
              child: SizedBox(
                width: double.maxFinite,
                height: 70,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 20),
                          child: SizedBox(
                              width: 50,
                              height: 50,
                              child:Icon(Icons.manage_history,
                                size: 45,
                                color: HexColor(AppColors.mainColor),)
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          height: 50,
                          child: Column(
                            children: [
                              Center(
                                child: Text("Manage Events",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold
                                  ),),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:5),
                                  child: Text("Manage your events",
                                    style: TextStyle(
                                        color: HexColor(AppColors.mainColor),
                                        fontSize: 15
                                    ),),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:3),
                      child: Divider(thickness: 2,color: Colors.grey,),
                    )],
                ),
              ),
            ),
          ),
        ]
    );
  }

}
