import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SecondState();
  }
}

class SecondState extends State<SecondPage> {
  final List<ListItem> listData = [];

  @override
  Widget build(BuildContext context) {
    /**
     * new Scaffold(
        appBar: new AppBar(
        title: new Text("第二个页面"),
        backgroundColor: Colors.red,
        elevation: 0.0,
        ),
        body: new Column(
        children: <Widget>[
        new Container(
        ),
        ],
        ),
        );
     * */

    for (int i = 0; i < 30; i++) {
      listData.add(ListItem("MacYang$i", Icons.smoking_rooms));
    }
    return SizedBox(

        height: 500.0,
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIdScrolled) {
              return <Widget>[
                SliverAppBar(
                  primary: true,
                  forceElevated: false,
                  automaticallyImplyLeading: true,
                  titleSpacing: NavigationToolbar.kMiddleSpacing,
                  snap: false,
                  expandedHeight: 200.0,
                  floating: false,//是否随着滑动隐藏标题
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text(
                      "macYang",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    background: Image.network(
                      "https://pic1.58cdn.com.cn/gongyu/n_v21e310678334143738923062872be173f_f66b91ba2422a015.jpg?w=696&h=320&crop=1",
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              ];
            },
            body: Center(

              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return ListItemWidget(listData[index]);
                },
                itemCount: listData.length,
              ),
            )));
  }
}

class ListItemWidget extends StatelessWidget {
  final ListItem listItem;

  ListItemWidget(this.listItem);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: ListTile(
        leading: Icon(listItem.iconData),
        title: Text(listItem.title),
      ),
    );
  }
}

class ListItem {
  final String title;
  final IconData iconData;

  ListItem(this.title, this.iconData);
}
