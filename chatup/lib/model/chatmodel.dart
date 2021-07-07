import 'contactmodel.dart';

class ChatModel {
  final bool isTyping;
  final String lastMessage;
  final String lastMessageTime;
  final ContactModel contact;
  final String avatarUrl;

  ChatModel(
      {required this.isTyping,
      required this.lastMessage,
      required this.lastMessageTime,
      required this.contact,
      required this.avatarUrl,
      });
}

final List<ChatModel> list = [
  ChatModel(
      isTyping: true,
      lastMessage: 'Hello, I got the new phone already',
      lastMessageTime: '11:17am',
      contact: ContactModel(name: 'John',),
      avatarUrl: 'https://images.unsplash.com/photo-1554126807-6b10f6f6692a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
      ),
  ChatModel(
      isTyping: true,
      lastMessage: 'What is going on?',
      lastMessageTime: '10:22am',
      contact: ContactModel(name: 'Jamar'),
      avatarUrl: 'https://images.unsplash.com/photo-1515201899114-98ba64d41df7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=335&q=80'),
  ChatModel(
      isTyping: true,
      lastMessage: 'I will be there soon',
      lastMessageTime: '8:56am',
      contact: ContactModel(name: 'Shalom bro'),
      avatarUrl: 'https://images.unsplash.com/photo-1590931510971-48d5bbc73ba0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=625&q=80'
      ),
];
