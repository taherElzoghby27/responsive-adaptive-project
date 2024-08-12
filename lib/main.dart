import 'package:flutter/material.dart';

import 'responsive_dash_board/responsive_dash_board_view.dart';
import 'responsive_text/screen_text.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ResponsiveDashBoardView(),
    );
  }
}

class MobileDesign extends StatelessWidget {
  const MobileDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  index.toString(),
                ),
              ),
            ),
          ),
        );
      },
      itemCount: 10,
    );
  }
}

class DesktopDesign extends StatelessWidget {
  const DesktopDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            height: MediaQuery.of(context).size.height * .2,
            width: MediaQuery.of(context).size.width * .2,
            color: Colors.orange,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  index.toString(),
                ),
              ),
            ),
          ),
        );
      },
      itemCount: 10,
    );
  }
}

class MobileExpanded extends StatelessWidget {
  const MobileExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.blue,
            child: const Center(
              child: Text("taher"),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.orange,
            child: const Center(
              child: Text("taher"),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
            child: const Center(
              child: Text("taher"),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.red,
            child: const Center(
              child: Text("taher"),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
            child: const Center(
              child: Text("taher"),
            ),
          ),
        ),
      ],
    );
  }
}

class DesktopExpanded extends StatelessWidget {
  const DesktopExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.yellow,
                        child: const Center(
                          child: Text("taher"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.green,
                        child: const Center(
                          child: Text("taher"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.red,
                        child: const Center(
                          child: Text("taher"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.orange,
                        child: const Center(
                          child: Text("taher"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.deepPurple,
            child: const Center(
              child: Text("taher"),
            ),
          ),
        ),
      ],
    );
  }
}

class MobileFlexible extends StatelessWidget {
  const MobileFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Flexible(
          child: FittedBox(
            //fit: BoxFit.scaleDown,
            child: Icon(
              Icons.home,
              size: 150,
            ),
          ),
        ),
        Container(
          height: 130,
          color: Colors.orange,
          child: const FittedBox(
            child: Text(
              "taher Taher Taher Taher Taher",
              style: TextStyle(fontSize: 60),
            ),
          ),
        ),
        Container(
          height: 130,
          color: Colors.blue,
          child: const Center(
            child: Text("taher"),
          ),
        ),
        Container(
          height: 130,
          color: Colors.red,
          child: const Center(
            child: Text("taher"),
          ),
        ),
        Container(
          height: 130,
          color: Colors.blue,
          child: const Center(
            child: Text("taher"),
          ),
        ),
      ],
    );
  }
}

class DesktopFlexible extends StatelessWidget {
  const DesktopFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: Row(
            children: [
              Flexible(
                child: Column(
                  children: [
                    Flexible(
                      child: Container(
                        color: Colors.yellow,
                        child: const Center(
                          child: Text("taher"),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        color: Colors.green,
                        child: const Center(
                          child: Text("taher"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  children: [
                    Flexible(
                      child: Container(
                        color: Colors.red,
                        child: const Center(
                          child: Text("taher"),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        color: Colors.orange,
                        child: const Center(
                          child: Text("taher"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.deepPurple,
            child: const Center(
              child: Text("taher"),
            ),
          ),
        ),
      ],
    );
  }
}

class AspectRatioDesign extends StatelessWidget {
  const AspectRatioDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: AspectRatio(
        aspectRatio: 5 / 1,
        child: Container(
          color: Colors.orange,
        ),
      ),
    );
  }
}

class IntrinsicDesign extends StatelessWidget {
  const IntrinsicDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 300,
                  color: Colors.orange,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
