import 'package:flutter/material.dart';
import '../models/imagemodel.dart';

class ImageList extends StatelessWidget {
  ImageList(this.images);

  final List<ImageModel> images;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        // return Image.network(images[index].url);
        return Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black26)),
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Padding(
                  child: Image.network(images[index].url),
                  padding: EdgeInsets.only(
                    bottom: 8.0,
                  )),
              Text('a text here')
            ],
          ),
        );
      },
      itemCount: images.length,
    );
  }
}
