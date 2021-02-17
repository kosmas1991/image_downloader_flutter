import 'package:flutter/material.dart';
import '../models/imagemodel.dart';

class ImageList extends StatelessWidget {
  ImageList(this.images);
  final List<ImageModel> images;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
     // return Image.network(images[index].url);
      return Image.network(images[index].url);
    },
    itemCount: images.length,
    );
  }

}