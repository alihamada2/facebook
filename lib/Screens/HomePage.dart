import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../Data/data.dart';
import '../Palette/Palettes.dart';
import '../Widget/imports.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        title: Text(
          'facebook',
          style: TextStyle(
              color: Palette.facebookBlue,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.2),
        ),
        centerTitle: false,
        actions: [
          CircularButton(
              onpressed: () {
                print('search');
              },
              icon: Icon(Icons.search),
              IconSize: 25),
          CircularButton(
              onpressed: () {
                print('messgae');
              },
              icon: Icon(MdiIcons.facebookMessenger),
              IconSize: 25),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey[200],
                    backgroundImage:
                        CachedNetworkImageProvider(currentUser.Imgurl),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextFormField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'What\'s on your mind?')),
                  )
                ],
              ),
            ),
            Divider(
              height: 10,
              thickness: 0.5,
            ),
            Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlatButtonWidget(
                      Onpressed: () {
                        print('Live');
                      },
                      icon: Icon(
                        Icons.videocam,
                        color: Colors.red,
                      ),

                      label: 'Live'),
                  FlatButtonWidget(
                      Onpressed: () {
                        print('Photo');
                      },
                      icon: Icon(Icons.photo_library,color: Colors.green,),

                      label: 'Photo'),
                  FlatButtonWidget(
                      Onpressed: () {
                        print('Room');
                      },
                      icon: Icon(Icons.video_call,color: Colors.purpleAccent,),

                      label: 'Room')
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
              child: OnlineRooms(onlineUsers: onlineUsers),
            )

          ],
        ),
      ),
    );
  }
}
