import 'package:flutter/material.dart';
import 'package:kkkk/screen/chatTab.dart';
import 'package:kkkk/screen/statusTab.dart';

import 'callTab.dart';

class WhatsAppClone extends StatelessWidget {
  const WhatsAppClone({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            foregroundColor: Colors.white,
            leadingWidth: 26,
            title: const Text(
              'WhatsApp',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            backgroundColor: const Color(0xff128C7E),
            actions: [
              InkWell(
                  child: const Icon(
                    Icons.camera_alt_outlined,
                    size: 25,
                  ),
                  onTap: () {}),
              const SizedBox(
                width: 16,
              ),
              InkWell(
                  child: const Icon(
                    Icons.search,
                    size: 25,
                  ),
                  onTap: () {}),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(child: Text('New Group')),
                    const PopupMenuItem(child: Text('New Broadcast')),
                    const PopupMenuItem(child: Text('Linked Devices')),
                    const PopupMenuItem(child: Text('Starred Messages')),
                    const PopupMenuItem(child: Text('Settings')),
                  ];
                },
              ),
            ],
            bottom: const TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.white,
              indicatorWeight: 2.0,
              tabs: [
                Tab(
                    iconMargin: EdgeInsets.all(100),
                    child: Icon(
                      Icons.camera_alt_rounded,
                    )),
                Tab(
                  child: Text('CHATS',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600)),
                ),
                Tab(
                  child: Text('STATUS',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600)),
                ),
                Tab(
                  child: Text('CALLS',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600)),
                ),
              ],
              labelColor: Colors.white,
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text('This feature is coming soon')),
              ChatTab(),
              const StatusTab(),
              const CallTab(),
            ],
          ),
        ));
  }
}
