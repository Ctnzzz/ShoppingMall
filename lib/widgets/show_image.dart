import 'package:flutter/material.dart';

// ถ้า widget ไม่เปลี่ยนแปลงใช้ stl ได้เลย
class ShowImage extends StatelessWidget {
  // เมื่อเรียกใช้ ต้องส่ง path มาให้
  final String path;
  const ShowImage({required this.path, super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(path);
  }
}
