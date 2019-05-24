import 'package:flutter/material.dart';
import 'package:flutter_app/http/HttpUtils.dart';

class ShowToastView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var image = new Image.network(
      "http://b.zol-img.com.cn/desk/bizhi/image/6/960x600/1432800027589.jpg",
      width: 200,
      height: 200,
    );
    return new IconButton(
        iconSize: 240.00,
        icon: Image.network(
            "http://b.zol-img.com.cn/desk/bizhi/image/6/960x600/1432800027589.jpg"),
        onPressed: () {
          print("图片被点击");
          HttpUtils.get();
          Scaffold.of(context).showSnackBar(new SnackBar(
              content: new Text("图片点击"), backgroundColor: Colors.green));
        });
  }
}