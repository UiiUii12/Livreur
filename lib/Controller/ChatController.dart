import 'package:get/get.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
class ChatController extends GetxController{

  List<types.Message> messages = [];
  final user = const types.User(id: '82091008-a484-4a89-ae75-a22bf8d6f3ac');

  void _addMessage(types.Message message) {

    messages.insert(0, message);
    update();

  }
  void handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: "1",
      text: message.text,
    );

    _addMessage(textMessage);
    update();
  }
}