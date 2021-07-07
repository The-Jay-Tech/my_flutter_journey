import 'package:chatup/NavBar/secondscreen.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('ChatUP'),
          elevation: 0.7,
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => NewChatPage(),
                    ));
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.black,
              onPressed: () {},
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.blue.shade50, Colors.blue.shade700],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            )),
          ),
          bottom: TabBar(
            labelColor: Colors.indigo.shade900,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.chat,
                ),
                text: 'Chats',
              ),
              Tab(
                  icon: Icon(
                    Icons.group,
                  ),
                  text: 'Group Chats'),
              Tab(
                icon: Icon(Icons.amp_stories),
                text: 'Stories',
              ),
              Tab(
                  icon: Icon(
                    Icons.live_tv,
                  ),
                  text: 'Live Videos'),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              buildDrawerList(
                  icon: Icons.settings,
                  title: 'Settings',
                  onTap: () => print('Settings Pressed')),
              buildDrawerList(
                  icon: Icons.star,
                  title: 'Starred Chats',
                  onTap: () => print('Starred Chats Pressed')),
              buildDrawerList(
                  icon: Icons.people_sharp,
                  title: 'New Group',
                  onTap: () => print('New Group Pressed')),
            ]
          ),
        ),
      
        body: TabBarView(
          children: [
            buildPage('ChatPage on working progress'),
            buildPage('GroupPage on working progress'),
            buildPage('StoryPage on working progress'),
            buildPage('LivePage on working progress'),
          ],
        ),
      ));
  Widget buildPage(String text) => Center(
        child: Text(text),
      );
}

buildDrawerList(
    {required IconData icon,
    required String title,
    required Function() onTap}) {
  return ListTile(
    dense: true,
    onTap: onTap,
    leading: Icon(icon),
    title: Text(title),
    trailing: Icon(
      Icons.arrow_forward_ios_outlined,
      size: 12,
    ),
  );
}
