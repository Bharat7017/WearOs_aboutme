import 'package:about_me_watchos/widget/qrpage_view.dart';
import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 6)).then((value) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const QrPageView()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            height: size.height,
            width: size.height,
            child: Center(
              child: Hero(
                tag: 'MAIN_ICON',
                child: Image.asset(
                  "assets/images/me1.png",
                  height: 100,
                  width: 100,
                ),
              ),
            ),
          ),
          SimpleCircularProgressBar(
            size: size.width,
            progressStrokeWidth: 5,
            backStrokeWidth: 0,
            progressColors: const [Colors.white],
            // mergeMode: true,
          ),
        ],
      ),
    );
  }
}
