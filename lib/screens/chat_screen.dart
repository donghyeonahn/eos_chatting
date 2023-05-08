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
      appBar: AppBar(
        centerTitle: true,
        title: Text("EOS Chatting"),
        backgroundColor: Palette.appbarcolor,
        leading : IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            // 버튼이 눌렸을 때 실행할 코드
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app_rounded),
            onPressed: () {
              // 버튼이 눌렸을 때 실행할 코드
            },
          )
        ],
      ),

      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('/chats/eDs6RA9uIZNbyaQuWvNx/message').snapshots(),
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
                  ),
                );
              }
          );
        },
      ),
    );
  }
}