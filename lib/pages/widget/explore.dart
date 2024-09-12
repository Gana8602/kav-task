import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  String image1 =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvL7v0T5HG9YKNLRCl6yyoQgx_XY5H69jreA&s";
  String image2 =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrHPYwSdgLl_PL6sCRPa_kjFRrN9ylMEZkjg&s";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: TabBar(controller: _tabController, tabs: [
          Tab(
            child: Text("Tab 1"),
          ),
          Tab(
            child: Text("Tab 2"),
          )
        ]),
        body: TabBarView(
          controller: _tabController,
          children: [
            Image.network(
              image1,
              fit: BoxFit.cover,
            ),
            Image.network(
              image2,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }
}
