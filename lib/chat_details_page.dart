import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';

class ChatDetailsPage extends StatelessWidget {
  final String contactName;
  const ChatDetailsPage({super.key,required this.contactName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(contactName),
        centerTitle: false,
        elevation: 20,
      ),
      body: Stack(
        children: [
          Image.asset("image/bat.webp",fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          ),
          ListView(
            children: const [
              BubbleSpecialThree(
                text: 'are you ouky with me?',
                color: Color.fromARGB(255, 70, 27, 243),
                tail: false,
                textStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
              BubbleSpecialThree(
                text: 'Please we can figure this out',
                color: Color.fromARGB(255, 21, 64, 182),
                tail: true,
                textStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
              BubbleSpecialThree(
                text: 'Sure',
                color: Color.fromARGB(255, 223, 223, 240),
                tail: false,
                isSender: false,
              ),
              BubbleSpecialThree(
                text: "I tried. It's awesome!!!",
                color: Color(0xFFE8E8EE),
                tail: false,
                isSender: false,
              ),
              BubbleSpecialThree(
                text: "Hey beb",
                color: Color(0xFFE8E8EE),
                tail: true,
                isSender: false,
                sent: true,
                delivered: true,
              )
            ],
          ),
        ],
      ),
    );
  }
}
