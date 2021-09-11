import 'package:flutter_facebook_responsive_ui/data/data.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';

class HomeRepository {

  Future<List<Post>> fetchPosts() async {
    await Future.delayed(Duration(seconds: 2));
    return posts;
  }

}
