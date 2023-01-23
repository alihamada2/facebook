import 'package:facebook/Palette/Palettes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Model/Models.dart';
class OnlineRooms extends StatelessWidget {
  final List<User> onlineUsers;
 OnlineRooms({
   required this.onlineUsers
});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.white,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
        scrollDirection: Axis.horizontal,
          itemCount: 1+onlineUsers.length,
          itemBuilder: (context,index){
          if(index==0){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: _CreateRoomButton(),
            );
          }
            return Container(
              margin: EdgeInsets.all(4),
              height: 20,
              width: 20,
              color: Colors.red,
            );
          }),
    );
  }
}
 class _CreateRoomButton extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
     return OutlineButton(
       onPressed: (){},
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(30)
     ),
       color: Colors.white,
       borderSide: BorderSide(
         width: 3,
         color: Colors.blueAccent,
       ),
       textColor: Palette.facebookBlue,
       child: Row(
         children: [
           ShaderMask(shaderCallback: (rect)=>Palette.createRoomGradient.createShader(rect),
             child: Icon(Icons.video_call,size: 35,color: Colors.white,),
           ),
           SizedBox(width: 4,),
           Text('Create\nRoom')

         ],
       ),
     );
   }
 }

