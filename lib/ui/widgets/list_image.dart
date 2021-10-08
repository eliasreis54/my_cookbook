import 'package:flutter/material.dart';

class ImageList extends StatefulWidget {
  final List<String> imageList;

  ImageList({
    required this.imageList,
  });

  @override
  _ImageListState createState() => _ImageListState();
}

class _ImageListState extends State<ImageList> {
  int initialImageIndex = 0;

  void goToNextImage() {
    late final nextIndex;
    if ((initialImageIndex + 1) < widget.imageList.length) {
      nextIndex = initialImageIndex + 1;
    } else {
      nextIndex = 0;
    }

    setState(() {
      initialImageIndex = nextIndex;
    });
  }

  void goToPreviousImage() {
    late final nextIndex;
    if ((initialImageIndex - 1) >= 0) {
      nextIndex = initialImageIndex - 1;
    } else {
      nextIndex = widget.imageList.length - 1;
    }

    setState(() {
      initialImageIndex = nextIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        child: Row(
          children: [
            GestureDetector(
              onTap: goToPreviousImage,
              child: Container(
                color: Colors.transparent,
                height: double.maxFinite,
                child: Icon(Icons.arrow_back),
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/${widget.imageList[initialImageIndex]}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            GestureDetector(
              onTap: goToNextImage,
              child: Container(
                color: Colors.transparent,
                height: double.maxFinite,
                child: Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
