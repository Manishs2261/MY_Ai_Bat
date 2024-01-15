import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mychatai/src/utils/widgets/message_card.dart';

import 'controller/chat_controller.dart';

class ChatBot extends StatefulWidget {
  const ChatBot({super.key});

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  final controller = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cha AI"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
                child: TextFormField(
              controller: controller.textController,
              textAlign: TextAlign.center,
              onTapOutside: (e) => FocusScope.of(context).unfocus(),
              decoration: InputDecoration(
                   fillColor: Colors.white,
                  filled: true,
                  isDense: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                  hintText: "Message Eden Ai....."),
            )),
            SizedBox(
              width: 5,
            ),
            CircleAvatar(
              radius: 24,
              child: IconButton(
                onPressed: controller.askQuestion,
                icon: Icon(
                  Icons.send,
                  size: 28,
                ),
              ),
            )
          ],
        ),
      ),
      body: Obx(
        () => ListView(
          physics: BouncingScrollPhysics(),
          children: controller.list.map((element) => MessageCard(messageModel: element)).toList(),
        ),
      ),
    );
  }
}
