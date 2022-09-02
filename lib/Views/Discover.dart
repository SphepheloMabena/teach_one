
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:teach_one/Models/AppColors.dart';

class Discover{

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
                    child: Text("Discover",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        )
                    ),),

                ),
                Padding(
                  padding: const EdgeInsets.only(top:10),
                  child: Center(
                    child: Text("Careers, facts and more",
                      style: TextStyle(
                          fontSize: 15,
                          color: HexColor(AppColors.subMenu)
                      ),),
                  ),
                )
              ],
            ),
          )
        ]
    );
  }

}
