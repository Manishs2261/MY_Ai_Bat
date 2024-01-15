import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mychatai/src/fereture/chat_bot/model/message.dart';
import 'package:mychatai/src/utils/helper/helper_class.dart';
import 'package:mychatai/src/utils/image_constrant/image_constrant.dart';

class MessageCard extends StatelessWidget {
  final MessageModel messageModel;

  const MessageCard({super.key, required this.messageModel});

  @override
  Widget build(BuildContext context) {
    return messageModel.msgType == MessageType.bot
        ? Row(
            children: [
              CircleAvatar(

                backgroundColor: Colors.transparent,
                child: Image.asset(
                  splashImage,
                  width: 24,
                ),
              ),
              Container(
                  constraints: BoxConstraints(
                      maxWidth: mediaquery.width * 0.6
                  ),
                  margin: EdgeInsets.only(bottom: mediaquery.height * .02, left: mediaquery.width * .02),
                  padding: EdgeInsets.symmetric(vertical: mediaquery.height * .01, horizontal: mediaquery.width * .02),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15))),
                  child: Text(messageModel.msg))
            ],
          )
        : Row(
      mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                constraints: BoxConstraints(
                  maxWidth: mediaquery.width * 0.6
                ),
                  margin: EdgeInsets.only(bottom: mediaquery.height * .02, right: mediaquery.width * .02),
                  padding: EdgeInsets.symmetric(vertical: mediaquery.height * .01, horizontal: mediaquery.width * .02),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15)
                          
                      )
                  ),
                  child: Text(messageModel.msg)),
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Image.asset(
                  splashImage,
                  width: 24,
                ),
              ),
            ],
          );
  }
}
