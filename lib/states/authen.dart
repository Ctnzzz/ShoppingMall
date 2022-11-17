import 'package:flutter/material.dart';
import 'package:shoppingmall/utility/my_constant.dart';
import 'package:shoppingmall/widgets/show_image.dart';
import 'package:shoppingmall/widgets/show_title.dart';

//Stateful คือ class/object ที่ทำหน้าที่ในการสร้าง state แล้วนำมาโชว์บน main
class Authen extends StatefulWidget {
  const Authen({super.key});

  @override
  State<Authen> createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  @override
  Widget build(BuildContext context) {
    // ให้ปรับขนาดตามความกว้างของจอ
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            buildImage(size),
            buildAppName(),
          ],
        ),
      ),
    );
  }

  Row buildAppName() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ShowTitle(
                title: MyConstant.appName,
                textStyle: MyConstant().h1Style(),
              ),
            ],
          );
  }

  Row buildImage(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size * 0.6, // ต้องการขนาด 60% ของจอ
          child: ShowImage(path: MyConstant.image4),
        ),
      ],
    );
  }
}
