
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx_using/controller/comments_controller.dart';
class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool isDark = false;
  SearchController searchController = SearchController();
  final commentsController = Get.put(CommentsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("How to Search Bar Set"),),
      body: GetBuilder<CommentsController>(
        builder: (_) {
          return Padding(padding: EdgeInsets.all(5),
          child: SearchAnchor(builder: (context,searchController){
            return SearchBar(
              controller: searchController,
              leading: Icon(Icons.search),
              onTap: (){
                searchController.openView();
              },
              onChanged: (_){
                searchController.openView();
              },
              trailing: [
                Tooltip(
                  message: 'Change brightness Mode',
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.wb_sunny_outlined),selectedIcon: Icon(Icons.brightness_4_outlined),),
                )
              ],
            );
          },
              suggestionsBuilder: (context,searchController){
            return List.generate(commentsController.commentsListData.length, (index){
              final String item = commentsController.commentsListData[index].name.toString();
              return ListTile(
                title: Text(item),
                onTap: (){
                  setState(() {
                    searchController.closeView(item);
                  });
                },
              );
            });
          }),
          );
        }
      ),
    );
  }
}
