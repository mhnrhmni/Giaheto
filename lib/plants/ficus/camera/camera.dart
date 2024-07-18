import 'package:adivery/adivery_ads.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';

class FicusCam extends StatefulWidget {
  const FicusCam({super.key});

  @override
  State<FicusCam> createState() => _FicusCamState();
}

class _FicusCamState extends State<FicusCam> {
  // لیستی از عکس‌ها برای نمایش و دانلود
  final List<String> images = [
    'lib/image/snsvria/shot1.jpg',
    'lib/image/snsvria/shot2.jpg',
    'lib/image/snsvria/shot2.jpg',
    'lib/image/snsvria/shot2.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              title: const Align(
                child: Text(
                  'گالـــری تــصاویر',
                  style: TextStyle(fontFamily: 'aseman', fontSize: 30),
                ),
              ),
              backgroundColor: Color.fromARGB(255, 0, 149, 109),
            ),
            body: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                SafeArea(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: _buildBannerAd(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 229, 255, 248),
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 149, 109),
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Center(
                        child: Column(
                          children: images.map((image) => _buildImageSection(image)).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: FloatingActionButton.extended(
                  backgroundColor: const Color.fromARGB(255, 0, 149, 109),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  label: const Align(
                    alignment: Alignment.bottomCenter,
                    child: Center(
                        child: Text(
                      'بـــازگــشت',
                      style: TextStyle(
                          fontFamily: 'aseman',
                          fontSize: 30,
                          color: Colors.black),
                    )),
                  )),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildImageSection(String imagePath) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(imagePath),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _buildDownloadButton(
            'https://bagheeram.com/wp-content/uploads/2023/01/best-soil-for-sansevieria-01-min.jpg',
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _buildBannerAd(),
        ),
      ],
    );
  }

  Widget _buildDownloadButton(String url) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        backgroundColor: const Color.fromARGB(255, 0, 149, 109),
      ),
      icon: const Icon(
        Icons.download_rounded,
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      label: const Text(
        'دانـــلود تــصویـر',
        style: TextStyle(
          fontFamily: 'aseman',
          fontSize: 30,
          color: Color.fromARGB(255, 205, 255, 242),
        ),
      ),
      onPressed: () async {
        await GallerySaver.saveImage(url, albumName: 'Giaheto');
        showAlertDialog(context);
      },
    );
  }

  Widget _buildBannerAd() {
    return BannerAd(
      'c13cd83d-f817-44b1-9fc5-1eb7440e7d46',
      BannerAdSize.BANNER,
      onAdLoaded: (ad) {},
      onAdClicked: (ad) {},
    );
  }

void showAlertDialog(BuildContext context) {
  showDialog(
    // ignore: use_build_context_synchronously
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        icon: const Icon(
          Icons.done_rounded,
          color: Colors.black,
          size: 60,
        ),
        title: const Align(
            alignment: Alignment.center,
            child: Text(
              'گــیاهــتو',
              style: TextStyle(
                  fontFamily: 'aseman',
                  fontSize: 35,
                  color: Color.fromARGB(255, 0, 0, 0)),
            )),
        content: const Text(
          'دانلـــود با موفـــقیت انــجام شــد',
          style: TextStyle(
              fontFamily: 'aseman',
              fontSize: 25,
              color: Color.fromARGB(255, 0, 149, 109)),
        ),
        actions: [
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                backgroundColor: const Color.fromARGB(255, 0, 149, 109)),
            icon: const Icon(
              Icons.thumb_up_alt,
              color: Colors.white,
            ),
            label: const Text(
              'باشه',
              style: TextStyle(
                  fontFamily: 'aseman',
                  fontSize: 20,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
}