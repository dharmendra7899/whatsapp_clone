import 'package:flutter/material.dart';
import 'package:kkkk/screen/singleChat.dart';

class ChatTab extends StatelessWidget {
  ChatTab({super.key});

  List chatList = [
    [
      "It\'s me",
      "Ok Kal milte hai",
      Colors.blue,
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDXCC-UB67rk0HtbmrDvVsIGvnPfTAMc_tSg&usqp=CAU'
    ],
    [
      "Parbhaaat kumar",
      "Aaj bhut jyada barish hio rhi hai yrr?",
      Colors.grey,
      'https://i.insider.com/5cb3c8e96afbee373d4f2b62?width=700'
    ],
    [
      "Queen",
      "Did you check Queen\'s latest post?",
      Colors.grey,
      'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg'
    ],
    [
      "Red Tomato",
      "ok koi nhi",
      Colors.blue,
      'https://i.insider.com/5ce420e193a15232821d3084?width=700'
    ],
    [
      "Alok Kumar",
      "Did you check Maisie\'s latest post?",
      Colors.grey,
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDXCC-UB67rk0HtbmrDvVsIGvnPfTAMc_tSg&usqp=CAU'
    ],
    [
      "Nano",
      "Kaha ho yrr aaye nhi aaj tum",
      Colors.grey,
      'https://static3.srcdn.com/wordpress/wp-content/uploads/2017/06/Jaqen-Hghar-Game-of-Thrones.jpg'
    ],
    [
      "Mansi",
      "Okk chill kro fir",
      Colors.blue,
      'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg'
    ],
    [
      "Jyoti",
      "yee aisa na bolo tum bhut bolti ho ",
      Colors.grey,
      'https://i.insider.com/5ce420e193a15232821d3084?width=700'
    ],
    [
      "Home",
      "Aaj ami thoda lete se aaunga ",
      Colors.grey,
      'https://static3.srcdn.com/wordpress/wp-content/uploads/2017/06/Jaqen-Hghar-Game-of-Thrones.jpg'
    ],
    [
      "Prabhat",
      "I wish GoT had better ending",
      Colors.blue,
      'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg'
    ],
    [
      "Sis",
      "ghr pr bol dena ki late ho jayega aaj",
      Colors.blue,
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDXCC-UB67rk0HtbmrDvVsIGvnPfTAMc_tSg&usqp=CAU'
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightGreen,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))),
          onPressed: () {},
          child: const Icon(
            Icons.message,
            size: 30,
            color: Colors.white,
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                itemCount: chatList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return SingleChatWidget(
                      chatTitle: "${chatList[index][0]}",
                      chatMessage: '${chatList[index][1]}',
                      seenStatusColor: chatList[index][2],
                      imageUrl: chatList[index][3]);
                })));
  }
}
