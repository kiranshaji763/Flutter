import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:StagGrid(),
  ));
}
class StagGrid extends StatelessWidget {
  const StagGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Staggered Grid"),),
        body: SingleChildScrollView(
          child:StaggeredGrid.count(
            crossAxisCount: 4,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            children: [
              StaggeredGridTile.count(
                  crossAxisCellCount:1,
                  mainAxisCellCount:1,
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1515734392280-e60c25eb9f01?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80"))),
                  )),
              StaggeredGridTile.count(
                  crossAxisCellCount:1,
                  mainAxisCellCount:1,
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1515734392280-e60c25eb9f01?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80"))),
                  )),
              StaggeredGridTile.count(
                  crossAxisCellCount:2,
                  mainAxisCellCount:1,
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1515734392280-e60c25eb9f01?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80"))),
                  ))
            ],
          ),
        ));
  }
}