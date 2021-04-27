import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:patterns_mobx/stores/home_store.dart';
import 'package:patterns_mobx/views/item_of_post.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  HomeStore store = new HomeStore();
  @override
  void initState() {
    super.initState();
    store.apiPostList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MobX"),
        ),
        body: Observer(
          builder: (_) => Stack(
            children: [
              ListView.builder(
                itemCount: store.items.length,
                itemBuilder: (ctx, index) {
                  return itemOfPost(context, store, store.items[index]);
                },
              ),
              store.isLoading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : SizedBox.shrink(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          onPressed: () {
            store.apiCreatePost(context);
          },
          child: Icon(Icons.add),
        ));
  }
}
