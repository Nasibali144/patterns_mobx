// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStore, Store {
  final _$isLoadingAtom = Atom(name: '_HomeStore.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$itemsAtom = Atom(name: '_HomeStore.items');

  @override
  ObservableList<Post> get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(ObservableList<Post> value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  final _$apiPostListAsyncAction = AsyncAction('_HomeStore.apiPostList');

  @override
  Future<dynamic> apiPostList() {
    return _$apiPostListAsyncAction.run(() => super.apiPostList());
  }

  final _$apiPostDeleteAsyncAction = AsyncAction('_HomeStore.apiPostDelete');

  @override
  Future<bool> apiPostDelete(Post post) {
    return _$apiPostDeleteAsyncAction.run(() => super.apiPostDelete(post));
  }

  final _$apiUpdatePostAsyncAction = AsyncAction('_HomeStore.apiUpdatePost');

  @override
  Future<dynamic> apiUpdatePost(BuildContext context, Post post) {
    return _$apiUpdatePostAsyncAction
        .run(() => super.apiUpdatePost(context, post));
  }

  final _$apiCreatePostAsyncAction = AsyncAction('_HomeStore.apiCreatePost');

  @override
  Future<dynamic> apiCreatePost(BuildContext context) {
    return _$apiCreatePostAsyncAction.run(() => super.apiCreatePost(context));
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
items: ${items}
    ''';
  }
}
