import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarImagesWidget extends StatelessWidget {
  const CarImagesWidget({
    Key key,
    @required this.images,
    this.isExpanded = false,
  }) : super(key: key);

  final List<String> images;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return isExpanded ? Expanded(child: buildBody()) : buildBody();
  }

  ValueBuilder<int> buildBody() {
    return ValueBuilder<int>(
      initialValue: 0,
      builder: (currentImage, updateFn) => Column(
        children: [
          isExpanded
              ? Expanded(child: buildImagesPage(updateFn))
              : buildImagesPage(updateFn),
          images.length > 1
              ? Container(
                  height: 30,
                  margin: EdgeInsets.only(top: 12, bottom: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: images
                        .map((image) => _buildIndicator(
                            images.indexOf(image) == currentImage))
                        .toList(),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }

  Widget buildImagesPage(ValueBuilderUpdateCallback<int> updateFn) {
    return Container(
      height: 150,
      child: PageView(
        physics: BouncingScrollPhysics(),
        onPageChanged: updateFn,
        children: images.map((path) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Image.asset(
              path,
              fit: BoxFit.scaleDown,
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildIndicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 6),
      height: 8,
      width: isActive ? 20 : 8,
      decoration: BoxDecoration(
          color: isActive ? Colors.black : Colors.grey[400],
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}
