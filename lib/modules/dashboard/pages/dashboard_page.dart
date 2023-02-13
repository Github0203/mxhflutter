import 'package:flutter/material.dart';
import 'package:mangxahoi/blocs/app_state_bloc.dart';
import 'package:mangxahoi/modules/posts/blocs/list_posts_rxdart_bloc.dart';
import 'package:mangxahoi/modules/posts/models/post.dart';
import 'package:mangxahoi/providers/bloc_provider.dart';
// import 'package:mangxahoi/src/day05/models/widgets/post_item.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  ListPostsRxDartBloc? get bloc =>
      BlocProvider.of<ListPostsRxDartBloc>(context);
  AppStateBloc? get appStateBloc =>
      BlocProvider.of<AppStateBloc>(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List posts page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.logout),
        onPressed: () {
          appStateBloc!.changeAppState(AppState.unAuthorized);
        },
      ),
      body: StreamBuilder<List<Post>?>(
          stream: bloc!.postsStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final posts = snapshot.data;
              return ListView.builder(
                itemBuilder: (_, int index) {
                  final item = posts![index];
                  // return PostItem(
                  //   height: 200,
                  //   url: item.images?.first.url ?? '',
                  //   description: item.description!,
                  // );
                  return Container();
                },
                itemCount: posts?.length ?? 0,
              );
            }
            if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
