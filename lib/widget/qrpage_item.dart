// ignore_for_file: prefer_const_constructors

import 'package:about_me_watchos/constant/qrtype.dart';
import 'package:flutter/material.dart';

class QrPageItem extends StatelessWidget {
  const QrPageItem({
    Key? key,
    required this.data,
  }) : super(key: key);

  final QrType data;
  static Size deviceSize = const Size(256, 256);
  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        qrImage(),
        const SizedBox(height: 5),
        label(),
      ],
    );
  }

  Row label() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(data.iconPath, height: 20),
          const SizedBox(width: 5),
          Text(
            data.name,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(
            width: 10,
            height: 20,
          ),
        ],
      );

  Image qrImage() => Image.asset(data.qrPath, height: deviceSize.height / 1.8);
}
