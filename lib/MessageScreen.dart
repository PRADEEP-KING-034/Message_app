import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

class MScreen extends StatefulWidget {
  const MScreen({super.key});

  @override
  State<MScreen> createState() => _MScreenState();
}

class _MScreenState extends State<MScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messages"),
        actions: [
          PopupMenuButton(
            position: PopupMenuPosition.under,
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: "New Chat",
                  child: ListTile(
                    leading: Icon(Icons.add_circle_rounded),
                    title: Text(
                      "New Chat",
                      maxLines: 1,
                    ),
                  ),
                  onTap: () => ZIMKit().showDefaultNewPeerChatDialog(context),
                ),
                PopupMenuItem(
                  value: "New Group Chat",
                  child: ListTile(
                    leading: Icon(Icons.add_circle_rounded),
                    title: Text(
                      "New Group Chat",
                      maxLines: 1,
                    ),
                  ),
                  onTap: () => ZIMKit().showDefaultNewGroupChatDialog(context),
                ),
              ];
            },
          )
        ],
      ),
      body: ZIMKitConversationListView(
        onPressed: (context,conversation, defaultAction){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ZIMKitMessageListPage(conversationID: conversation.id,conversationType: conversation.type,);
          },));
        },
      ),
    );
  }
}
