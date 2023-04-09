import 'package:about_me_watchos/constant/qrtype.dart';
import 'package:about_me_watchos/widget/qrpage_item.dart';
import 'package:flutter/material.dart';

class QrPageView extends StatelessWidget {
  const QrPageView({Key? key}) : super(key: key);

  static List<QrType> datas = QrType.values.toList();

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: datas.length,
      itemBuilder: (BuildContext context, int index) {
        QrType data = datas[index];
        return QrPageItem(data: data);
      },
    );
  }
}
