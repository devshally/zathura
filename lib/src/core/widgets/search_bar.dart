import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';
import 'package:zathura_v1/src/core/home_screen/home.dart';

Container buildContainer() {
  var search;
  return Container(
    height: 100.0,
    child: SearchBar<Post>(
      onSearch: search,
      cancellationWidget: Icon(
        Icons.cancel,
        color: Colors.white,
      ),
      onItemFound: (Post post, int index) {
        return ListTile(
          title: Text(post.title),
          subtitle: Text(post.description),
        );
      },
//                        searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
      headerPadding: EdgeInsets.symmetric(horizontal: 10),
      listPadding: EdgeInsets.symmetric(horizontal: 10),
      searchBarStyle: SearchBarStyle(
        backgroundColor: Colors.white,
        padding: EdgeInsets.all(7),
        borderRadius: BorderRadius.circular(6),
      ),
    ),
  );
}