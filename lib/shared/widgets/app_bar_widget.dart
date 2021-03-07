import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    this.title,
    this.actions,
    Key key,
  }) : super(key: key);

  final String title;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () => Get.back(),
                child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      border: Border.all(
                        color: Colors.grey[300],
                        width: 1,
                      ),
                    ),
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.black,
                      size: 28,
                    )),
              ),
              title == null
                  ? Container()
                  : Padding(
                      padding: const EdgeInsets.only(left: 17.0),
                      child: Text(
                        title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
            ],
          ),
          actions == null
              ? Container()
              : Row(
                  children: actions,
                ),
        ],
      ),
    );
  }
}
