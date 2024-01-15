

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mychatai/src/data/api_data/api_data.dart';
import 'package:mychatai/src/fereture/chat_bot/model/message.dart';

class ChatController extends GetxController{

  final textController =TextEditingController();

  final list = <MessageModel>[MessageModel(msg: "Hello, How can I help you ?", msgType: MessageType.bot)].obs;

  Future<void> askQuestion() async {
    if(textController.text.trim().isNotEmpty){

      list.add(MessageModel(msg: textController.text, msgType: MessageType.user));
      list.add(MessageModel(msg: "Please wait...", msgType: MessageType.bot));
      final res = await Apis.getAnswer(textController.text);
      list.removeLast();
      list.add(MessageModel(msg: res, msgType: MessageType.bot));

      textController.text = '';
    }
  }


}