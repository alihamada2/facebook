import 'package:facebook/Model/UserModel.dart';

class Story {
  final User user;
  final String imgUrl;
  final bool isViewed;

  Story({
    required this.user,
    required this.imgUrl,
    this.isViewed = false,});
}
