import 'package:flutter/material.dart';
import 'package:kkkk/screen/singleStatus.dart';

class StatusTab extends StatelessWidget {
  const StatusTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff128C7E),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        onPressed: () {},
        child: const Icon(
          Icons.camera_alt,
          size: 30,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xff128C7E),
                        foregroundColor: Color(0xff128C7E),
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDXCC-UB67rk0HtbmrDvVsIGvnPfTAMc_tSg&usqp=CAU'),
                      ),
                      Positioned(
                        top: 40,
                        left: 40,
                        child: CircleAvatar(
                          radius: 10,
                          child: Icon(Icons.add, size: 20),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text('My Status'),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 2.0),
                        child: Text('Tap to add status update'),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Text('Viewed updates',
                    style: TextStyle(fontWeight: FontWeight.w400)),
              ),
              const Row(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 30,
                        child: CircleAvatar(
                          radius: 28,
                          backgroundImage: NetworkImage(
                              'https://i.insider.com/5ce420e193a15232821d3084?width=700'),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text('Red Tomato'),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 2.0),
                        child: Text('7 minutes ago'),
                      ),
                    ),
                  ),
                ],
              ),
              // Since the ExpansionTile has top and bottom borders by default and we don't want that so we
              //use Theme to override its dividerColor property
              Theme(
                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                child: const ExpansionTile(
                  textColor: Colors.black,
                  tilePadding: EdgeInsets.all(0.0),
                  title: Text('Muted updates',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      )),
                  children: [
                    SingleStatusItem(
                      statusTitle: 'Cersei Lannister',
                      statusTime: '56 minutes ago',
                      statusImage:
                          'https://static3.srcdn.com/wordpress/wp-content/uploads/2017/06/Jaqen-Hghar-Game-of-Thrones.jpg',
                    ),
                    SingleStatusItem(
                      statusTitle: 'Lyanna Mormont',
                      statusTime: '2 minutes ago',
                      statusImage:
                          'https://i.insider.com/5ce420e193a15232821d3084?width=700',
                    ),
                    SingleStatusItem(
                      statusTitle: 'Daenerys Targaryen',
                      statusTime: '12 minutes ago',
                      statusImage:
                          'https://static3.srcdn.com/wordpress/wp-content/uploads/2017/06/Jaqen-Hghar-Game-of-Thrones.jpg',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
