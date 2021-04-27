import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:patterns_mobx/model/post_model.dart';
import 'package:patterns_mobx/services/http_service.dart';

part 'create_store.g.dart';

class CreateStore = _CreateStore with _$CreateStore;

abstract class _CreateStore with Store {
  @observable bool isLoading = false;
  @observable var titleController = TextEditingController();
  @observable var bodyController = TextEditingController();

  @action
  Future apiCreatePost(BuildContext context) async{
    isLoading = true;

    String title = titleController.text.trim().toString();
    String body = bodyController.text.trim().toString();
    Post post = Post(title: title, body: body, userId: 1);

    var response = await Network.POST(Network.API_CREATE, Network.paramsCreate(post));
    isLoading = false;
    Navigator.pop(context, response);
  }

}