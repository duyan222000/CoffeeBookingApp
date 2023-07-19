import 'package:cinema_showtime_selection/component/movie_place_holder.dart';
import 'package:flutter/material.dart';

class ScrollingMovieList extends StatefulWidget {
  const ScrollingMovieList({super.key});

  @override
  State<ScrollingMovieList> createState() => _ScrollingMovieListState();
}

class _ScrollingMovieListState extends State<ScrollingMovieList> {
  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("All Movie"),
        Scrollbar(
            controller: _firstController,
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                controller: _firstController,
                child: ConstrainedBox(
                    constraints: BoxConstraints(minWidth: constraints.maxWidth),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        for (int i = 0; i < 200; ++i)
                          Padding(
                              padding: const EdgeInsets.all(18),
                              child: MoviePlaceHolder(i))
                      ],
                    ))))
      ]);
    });
  }
}
