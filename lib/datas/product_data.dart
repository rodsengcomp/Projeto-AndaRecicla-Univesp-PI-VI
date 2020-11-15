import 'package:cloud_firestore/cloud_firestore.dart';

class ProductData {

  String category;
  String id;

  String title;
  String description;

  List images;
  List sizes;

  ProductData.fromDocument(DocumentSnapshot snapshot){
    id = snapshot.documentID;
    title = snapshot.data["title"];
    description = snapshot.data["description"];
    images = snapshot.data["images"];
    sizes = snapshot.data["sizes"];
  }

  Map<String, dynamic> toResumedMap(){
    return {
      "title": title,
      "description": description,
    };
  }

}