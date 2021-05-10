import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String id;
  String name;
  String email;
  String urlimage;

  UserModel({this.id, this.name, this.email, this.urlimage});

  // UserModel.fromSnapshot(DocumentSnapshot snapshot)
  //     : id = snapshot.id,
  //       name = snapshot.data()["name"],
  //       email = snapshot.data()["email"],
  //       urlimage = snapshot.data()["urlimage"];

  UserModel.fromJson(Map<String, Object> json)
      : this(
          name: json['name'] as String,
          email: json['email'] as String,
          urlimage: json['urlimage'] as String,
          id: json['id'] as String,
        );

  Map<String, dynamic> toJson() {
    return {
      "id": this.id,
      "name": this.name,
      "email": this.email,
      "urlimage": this.urlimage,
    };
  }
}
