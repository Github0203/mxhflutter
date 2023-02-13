import 'package:mangxahoi/modules/posts/models/post.dart';
import 'package:mangxahoi/modules/posts/repos/list_posts_repo.dart';
import 'package:mangxahoi/providers/bloc_provider.dart';
import 'package:rxdart/rxdart.dart';

class ListPostsRxDartBloc extends BlocBase{
  final _postsCtrl = BehaviorSubject<List<Post>?>.seeded(const []);
  Stream<List<Post>?> get postsStream => _postsCtrl.stream;

  Future<void> getPosts() async {
    try {
      final res = await ListPostsRepo().getPosts();
      if (res != null) {
        _postsCtrl.sink.add(res);
      }
    } catch (e) {
      _postsCtrl.sink.addError('Cannot fetch list posts right now!!!');
    }
  }

  @override
  void dispose() {
    _postsCtrl.close();
  }
}