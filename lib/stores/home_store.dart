import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:patterns_mobx/model/post_model.dart';
import 'package:patterns_mobx/pages/create_page.dart';
import 'package:patterns_mobx/pages/update_page.dart';
import 'package:patterns_mobx/services/http_service.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  @observable bool isLoading = false;
  @observable ObservableList<Post> items = ObservableList.of([]);

  @action
  Future apiPostList() async {
    isLoading = true;
    var response = await Network.GET(Network.API_LIST, Network.paramsEmpty());
    if (response != null) {
      items = ObservableList.of(Network.parsePostList(response));
    } else {
      items = ObservableList.of([]);
    }
    isLoading = false;
  }

  @action
  Future<bool> apiPostDelete(Post post) async {
    isLoading = true;
    var response = await Network.DEL(Network.API_DELETE + post.id.toString(), Network.paramsEmpty());

    isLoading = false;
    return response != null;
  }
  @action
  Future apiUpdatePost(BuildContext context, Post post) async{
    String result = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => UpdatePage(post: post,)));
    if(result != null) {
      Post newPost = Network.parsePost(result);
      items[items.indexWhere((element) => element.id == newPost.id)] = newPost;
    }
  }

  @action
  Future apiCreatePost(BuildContext context) async{
    String result = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreatePage()));
    if(result != null) items.add(Network.parsePost(result));
  }

}