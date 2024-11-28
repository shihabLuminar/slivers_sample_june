import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // pinned: true,

            floating: true,
            title: Text("data"),
            leading: Icon(Icons.back_hand),
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                  fit: BoxFit.cover,
                  "https://images.pexels.com/photos/27051404/pexels-photo-27051404/free-photo-of-aerial-view-of-people-in-a-rowboat-on-a-lake.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 300,
              color: Colors.red,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 300,
              color: Colors.yellow,
            ),
          ),
          SliverAppBar(
            pinned: true,
            primary: false,
            title: Text("hellooo"),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 300,
              color: Colors.black,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 300,
              color: Colors.red,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 300,
              color: Colors.yellow,
            ),
          ),
          SliverToBoxAdapter(
              child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                10,
                (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ),
          )),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 200,
              child: CustomScrollView(
                scrollDirection: Axis.horizontal,
                slivers: [
                  SliverList.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 100,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  SliverList(
                      delegate: SliverChildBuilderDelegate(
                    childCount: 10,
                    (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 100,
                        color: Colors.blue,
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            childCount: 10,
            (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                color: Colors.blue,
              ),
            ),
          )),
          SliverList.builder(
            itemCount: 10,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
