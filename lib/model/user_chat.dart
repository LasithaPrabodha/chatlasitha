import 'package:cloud_firestore/cloud_firestore.dart';

class UserChat {
  String id;
  String photoUrl;
  String nickname;
  String currStatus;

  UserChat(
      {required this.id,
      required this.photoUrl,
      required this.nickname,
      required this.currStatus});

  factory UserChat.fromDocument(DocumentSnapshot doc) {
    String currStatus = "";
    String photoUrl = "";
    String nickname = "";
    try {
      currStatus = doc.get('currStatus');
    } catch (e) {}
    try {
      photoUrl = doc.get('photoUrl');
    } catch (e) {}
    try {
      nickname = doc.get('nickname');
    } catch (e) {}
    return UserChat(
      id: doc.id,
      photoUrl: photoUrl,
      nickname: nickname,
      currStatus: currStatus,
    );
  }
}
