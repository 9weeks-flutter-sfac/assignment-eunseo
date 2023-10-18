import 'package:assignment/model/post.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class PostController extends GetxController {
  Rxn id = Rxn('');
  List<Post>? posts = RxList<Post>([]);
  Post? post;

  String get postId => id.value;
  List<Post>? get allPost => posts;

  var instance = FirebaseFirestore.instance;

  getAllPost() async {
    //getAllpost
    var res = await instance.collection('post').get();
    posts = res.docs.map((e) => Post.fromMap(e.data())).toList();
  }

  getPost(String id) async {
    // get one post
    var res = await instance.collection('/memo').doc(id).get();
    // post = res.data();
    // print(res.data());
  }

  @override
  void onInit() {
    super.onInit();
    getAllPost();
  }
}
