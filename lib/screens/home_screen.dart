import 'package:flutter/material.dart';
import 'package:insta_gallery/constants/assets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Insta Gallary'),
        elevation: 1,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Image.asset(
              ImageAssets.instagram,
              height: 40,
              width: 40,
            ),
            title: const Text('Instagram Downloader'),
            subtitle: const Text('Hello'),
            trailing: const Text('11:12 AM'),
          ),
          const Divider(
            indent: 70,
            height: 1,
          ),
          ListTile(
            leading: Image.asset(
              ImageAssets.youtube,
              height: 40,
              width: 40,
            ),
            title: const Text('Youtube Downloader'),
            subtitle: const Text('Hello'),
            trailing: const Text('11:12 AM'),
          ),
        ],
      ),
    );
  }
}
