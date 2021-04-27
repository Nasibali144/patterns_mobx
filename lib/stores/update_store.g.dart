// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UpdateStore on _UpdateStore, Store {
  final _$isLoadingAtom = Atom(name: '_UpdateStore.isLoading');

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

  final _$titleControllerAtom = Atom(name: '_UpdateStore.titleController');

  @override
  TextEditingController get titleController {
    _$titleControllerAtom.reportRead();
    return super.titleController;
  }

  @override
  set titleController(TextEditingController value) {
    _$titleControllerAtom.reportWrite(value, super.titleController, () {
      super.titleController = value;
    });
  }

  final _$bodyControllerAtom = Atom(name: '_UpdateStore.bodyController');

  @override
  TextEditingController get bodyController {
    _$bodyControllerAtom.reportRead();
    return super.bodyController;
  }

  @override
  set bodyController(TextEditingController value) {
    _$bodyControllerAtom.reportWrite(value, super.bodyController, () {
      super.bodyController = value;
    });
  }

  final _$oldPostAtom = Atom(name: '_UpdateStore.oldPost');

  @override
  Post get oldPost {
    _$oldPostAtom.reportRead();
    return super.oldPost;
  }

  @override
  set oldPost(Post value) {
    _$oldPostAtom.reportWrite(value, super.oldPost, () {
      super.oldPost = value;
    });
  }

  final _$apiCreatePostAsyncAction = AsyncAction('_UpdateStore.apiCreatePost');

  @override
  Future<dynamic> apiCreatePost(BuildContext context) {
    return _$apiCreatePostAsyncAction.run(() => super.apiCreatePost(context));
  }

  final _$_UpdateStoreActionController = ActionController(name: '_UpdateStore');

  @override
  void getOldPost(Post post) {
    final _$actionInfo = _$_UpdateStoreActionController.startAction(
        name: '_UpdateStore.getOldPost');
    try {
      return super.getOldPost(post);
    } finally {
      _$_UpdateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
titleController: ${titleController},
bodyController: ${bodyController},
oldPost: ${oldPost}
    ''';
  }
}
