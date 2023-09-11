import 'package:flutter/material.dart';
import 'package:kkkk/screen/sinlgeCall.dart';

class CallTab extends StatelessWidget {
  const CallTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff128C7E),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        onPressed: () {},
        child: const Icon(
          Icons.add_ic_call_outlined,
          size: 30,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            SingleCallWidget(
              callStatus: 'Outgoing',
              callType: 'Audio',
              chatMessage: 'Today, 12:28 PM',
              chatTitle: 'Queen',
              imageUrl:
                  'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg',
            ),
            SingleCallWidget(
              callStatus: 'Incoming',
              callType: 'Video',
              chatMessage: 'Today, 01:11 AM',
              chatTitle: 'Mansi',
              imageUrl:
                  'https://pyxis.nymag.com/v1/imgs/8a2/6a6/8ddcaf4454e34b72484c5393560af17366-09-cersei-lannister.rsquare.w700.jpg',
            ),
            SingleCallWidget(
              callStatus: 'Incoming',
              callType: 'Video',
              chatMessage: 'Today, 5:28 AM',
              chatTitle: 'Red Tomato',
              imageUrl:
                  'https://i.insider.com/5ce420e193a15232821d3084?width=700',
            ),
            SingleCallWidget(
              callStatus: 'Outgoing',
              callType: 'Audio',
              chatMessage: 'Today, 12:28 PM',
              chatTitle: 'Alok Kumar',
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDXCC-UB67rk0HtbmrDvVsIGvnPfTAMc_tSg&usqp=CAU',
            ),
            SingleCallWidget(
              callStatus: 'Outgoing',
              callType: 'Audio',
              chatMessage: 'Today, 05:28 PM',
              chatTitle: 'Praabhaaat',
              imageUrl:
                  'https://i.insider.com/5cb3c8e96afbee373d4f2b62?width=700',
            ),
          ],
        ),
      ),
    );
  }
}
