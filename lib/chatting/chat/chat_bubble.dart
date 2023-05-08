import 'package:eos_chatting/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}
class _ChatScreenState extends State<ChatScreen> {
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
// TODO : 사진보고 AppBar 만들기^^
// TODO : 색은 아무거나 해도 되는데 이왕 하는거 Palette.dart에 추가해서 하는 센스^^
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('chats/eDs6RA9uIZNbyaQuWvNx/message').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final docs = snapshot.data!.docs;
          return ListView.builder(
              itemCount: docs.length,
              itemBuilder: (context, index) {
                return Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      docs[index]['text'],
                      style: TextStyle(fontSize: 20.0),
                    )
                );
              }
          );
        },
      ),
    );
  }
}