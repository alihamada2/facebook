import 'package:facebook/Model/UserModel.dart';

class Post{
  final User user;
  final String imageUrl;
  final String timeAgo;
  final String caption;
  final int likes;
  final int comments;
  final int shares;
  Post({
    required this.user,
    required this.imageUrl,
    required this.caption,
    required this.timeAgo,
    required this.likes,
    required this.comments,
    required this.shares,
});
}