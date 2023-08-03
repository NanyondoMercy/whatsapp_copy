import 'package:flutter/material.dart';
import 'package:whatsapp/chat_details_page.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("YO APP"),
        elevation: 10.0,
        actions: [
          IconButton(
            onPressed: () {
              print("you clicked me");
            },
            icon: const Icon(Icons.camera_alt),
          ),
          IconButton(
            onPressed: () {
              print("you clicked me");
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print("you clicked me");
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: ListView(
        children: [
          _listTileContainer(contactName: "Nany Meri"),
          _listTileContainer(contactName: "Abaho Cliff"),
          _listTileContainer(contactName: "lawrence Kawalya"),
          _listTileContainer(contactName: "Nany Meri"),
          _listTileContainer(contactName: "Nany Meri"),
          _listTileContainer(contactName: "Nany Meri"),
          _listTileContainer(contactName: "Nany Meri"),
          _listTileContainer(contactName: "Nany Meri"),
          _listTileContainer(contactName: "Nany Meri"),
          _listTileContainer(contactName: "Nany Meri"),
          _listTileContainer(contactName: "Nany Meri"),
          _listTileContainer(contactName: "Nany Meri"),
          _listTileContainer(contactName: "Nany Meri"),
          _listTileContainer(contactName: "Nany Meri"),
        ],
      ),
    );
  }

  ListTile _listTileContainer({required String contactName}) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return ChatDetailsPage(contactName: contactName,);
            },
          ),
        );
      },
      isThreeLine: true,
      leading: const CircleAvatar(
        child: Text(
          "NM",
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
          ),
        ),
        foregroundImage: AssetImage("image/bat.webp"),
      ),
      title: Text(
        contactName,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: const Row(
        children: [
          Text(
            "Hey beb.....",
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
      trailing: Column(
        children: [
          const Text("12:14 pm"),
          Container(
            padding: const EdgeInsets.all(5.0),
            decoration: const BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
            child: const Text(
              "15",
              style: TextStyle(
                fontSize: 8,
                color: Colors.amber,
              ),
            ),
          )
        ],
      ),
    );
  }
}
