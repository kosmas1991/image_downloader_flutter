import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'models/imagemodel.dart';
import 'widgets/imageslist.dart';


class App extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AppWidget();
  }

}

class AppWidget extends State<App>{
  int counter = 0;
  List<ImageModel> images = new List<ImageModel>();

  void fetchImage() async{
    counter++;
    var response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel = ImageModel.getTheJSON(json.decode(response.body));
    setState(() {
      images.add(imageModel);
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My app'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add
          ),
          onPressed: fetchImage
        ),
        body: ImageList(images),
      ),
    );

  }

}