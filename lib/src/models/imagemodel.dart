class ImageModel{
  int id;
  String url;
  String title;
  ImageModel(this.id,this.url,this.title);
  ImageModel.getTheJSON(Map<String,dynamic> parsedJSON){
    id = parsedJSON['id'];
    url = parsedJSON['url'];
    title = parsedJSON['title'];
  }
}