import 'package:flutter/material.dart';

/// Flutter code sample for [TabBar].

void main() => runApp(const TabBarApp());

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Sample'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                icon: Icon(Icons.beach_access_sharp),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: CloudyWidget(),
            ),
            Center(
              child: RainyWidget(),
            ),
            Center(
              child: SunnyWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

class SunnyWidget extends StatelessWidget {
  const SunnyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print('SunnyWidget build');
    return const Text("It's sunny here");
  }
}

class RainyWidget extends StatelessWidget {
  const RainyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print('RainyWidget build');
    return const Text("It's rainy here");
  }
}

class CloudyWidget extends StatelessWidget {
  const CloudyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print('CloudyWidget build');
    return const Text("It's cloudy here");
  }
}
