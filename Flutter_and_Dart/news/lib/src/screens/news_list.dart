import 'package:flutter/material.dart';
import 'package:news/src/blocs/stories_bloc.dart';
import '../blocs/stories_provider.dart';

class NewsList extends StatelessWidget {
  Widget build(context) {
    final bloc = StoriesProvider.of(context);

    // THIS IS BAD!!! DON'T DO THIS!!!
    // TEMPORARY
    bloc?.fetchTopIds();

    return Scaffold(
      appBar: AppBar(
        title: Text('Top News'),
      ),
      body: buildList(bloc!),
    );
  }

  Widget buildList(StoriesBloc bloc) {
    return StreamBuilder(
      stream: bloc.topIds,
      builder: (context, AsyncSnapshot<List<int>> snapshot) {
        if (!snapshot.hasData) {
          return Text('Still waiting on IDs');
        }

        return ListView.builder(
          itemCount: snapshot.data?.length,
          itemBuilder: (context, int index) {
            // return Text(snapshot.data?[index].toString() ?? 'Loading...');
            return Text('${snapshot.data?[index]}');
          },
        );
      },
    );
  }
}
