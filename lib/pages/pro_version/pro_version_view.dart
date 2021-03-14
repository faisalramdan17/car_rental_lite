import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core.dart';

class ProVersionView extends StatelessWidget {
  const ProVersionView({this.isBackAvailable = false, Key key})
      : super(key: key);
  final bool isBackAvailable;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          color: Colors.grey[200],
          child: Column(
            children: [
              AppBarWidget(
                title: "Pro Version",
                isBackButton: false,
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Support Us by Buying Template :D",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 17),
                      Text(
                        "The link at README.md file.",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      !isBackAvailable
                          ? Container()
                          : Column(
                              children: [
                                SizedBox(height: 50),
                                OutlinedButton.icon(
                                  onPressed: () => Get.back(),
                                  style: ButtonStyle(
                                      side: MaterialStateProperty.all(
                                          BorderSide(
                                              color: kPrimaryColor, width: 1))),
                                  icon: Icon(
                                    Icons.arrow_back_ios,
                                    size: 23,
                                  ),
                                  label: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0),
                                    child: Text(
                                      "Back",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
