import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:patterns_mobx/model/post_model.dart';
import 'package:patterns_mobx/services/http_service.dart';

part 'update_store.g.dart';

class UpdateStore = _UpdateStore with _$UpdateStore;

abstract class _UpdateStore with Store {
  @observable bool isLoading = false;
  @observable var titleController = TextEditingController();
  @observable var bodyController = TextEditingController();
  @observable Post oldPost;

  @action
  void getOldPost(Post post) {
    oldPost = post;
    titleController.text = oldPost.title;
    bodyController.text = oldPost.body;
  }

  @action
  Future apiCreatePost(BuildContext context) async{
    isLoading = true;

    String title = titleController.text.trim().toString();
    String body = bodyController.text.trim().toString();
    Post post = Post(title: title, body: body, userId: oldPost.userId, id: oldPost.id);

    var response = await Network.PUT(Network.API_UPDATE + oldPost.id.toString(), Network.paramsUpdate(post));
    isLoading = false;
    Navigator.pop(context, response);
  }
}