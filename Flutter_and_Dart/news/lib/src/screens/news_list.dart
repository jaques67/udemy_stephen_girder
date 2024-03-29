import 'package:flutter/material.dart';
import 'package:news/src/blocs/stories_bloc.dart';
import '../blocs/stories_provider.dart';
import '../widgets/news_list_tile.dart';

class NewsList extends StatelessWidget {
  Widget build(context) {
    final bloc = StoriesProvider.of(context);

    // THIS IS BAD!!! DON'T DO THIS!!!
    // TEMPORARY
    bloc?.fetchTopIds();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Top News'),
      ),
      body: buildList(bloc!),
    );
  }

  Widget buildList(StoriesBloc bloc) {
    return StreamBuilder(
      stream: bloc.topIds,
      builder: (context, AsyncSnapshot<List<int>> snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return ListView.builder(
          itemCount: snapshot.data?.length,
          itemBuilder: (context, int index) {
            // return Text(snapshot.data?[index].toString() ?? 'Loading...');
            bloc.fetchItem(snapshot.data![index]); // Here's the line you're missing.
            return NewsListTile(
                itemId: snapshot.data![index],
            );
          },
        );
      },
    );
  }
}
