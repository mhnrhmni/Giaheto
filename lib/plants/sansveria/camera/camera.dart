import 'package:adivery/adivery_ads.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';

class SnsvriaCamera extends StatefulWidget {
  const SnsvriaCamera({super.key});

  @override
  State<SnsvriaCamera> createState() => _SnsvriaCameraState();
}

class _SnsvriaCameraState extends State<SnsvriaCamera> {
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
              )),
              backgroundColor: Color.fromARGB(255, 0, 149, 109),
            ),
            body: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                SafeArea(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: BannerAd(
                      'c13cd83d-f817-44b1-9fc5-1eb7440e7d46',
                      BannerAdSize.BANNER,
                      onAdLoaded: (ad) {},
                      onAdClicked: (ad) {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 229, 255, 248),
                        border: Border.all(
                            color: const Color.fromARGB(255, 0, 149, 109),
                            width: 3),
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Center(
                        child: Column(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child:
                                    Image.asset('lib/image/snsvria/shot1.jpg')),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    shape: const StadiumBorder(),
                                    backgroundColor:
                                        const Color.fromARGB(255, 0, 149, 109)),
                                icon: const Icon(
                                  Icons.download_rounded,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                label: const Text(
                                  'دانـــلود تــصویـر',
                                  style: TextStyle(
                                      fontFamily: 'aseman',
                                      fontSize: 30,
                                      color:
                                          Color.fromARGB(255, 205, 255, 242)),
                                ),
                                onPressed: () async {
                                  String url =
                                      'https://bagheeram.com/wp-content/uploads/2023/01/best-soil-for-sansevieria-01-min.jpg';
                                  await GallerySaver.saveImage(url,
                                      albumName: 'Giaheto');
                                  // ignore: use_build_context_synchronously
                                  showAlertDialog(context);
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: BannerAd(
                                  'c13cd83d-f817-44b1-9fc5-1eb7440e7d46',
                                  BannerAdSize.BANNER,
                                  onAdLoaded: (ad) {},
                                  onAdClicked: (ad) {},
                                ),
                              ),
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child:
                                    Image.asset('lib/image/snsvria/shot1.jpg')),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    shape: const StadiumBorder(),
                                    backgroundColor:
                                        const Color.fromARGB(255, 0, 149, 109)),
                                icon: const Icon(
                                  Icons.download_rounded,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                label: const Text(
                                  'دانـــلود تــصویـر',
                                  style: TextStyle(
                                      fontFamily: 'aseman',
                                      fontSize: 30,
                                      color:
                                          Color.fromARGB(255, 205, 255, 242)),
                                ),
                                onPressed: () async {
                                  String url =
                                      'https://bagheeram.com/wp-content/uploads/2023/01/best-soil-for-sansevieria-01-min.jpg';
                                  await GallerySaver.saveImage(url,
                                      albumName: 'Giaheto');
                                  // ignore: use_build_context_synchronously
                                  showAlertDialog(context);
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: BannerAd(
                                  'c13cd83d-f817-44b1-9fc5-1eb7440e7d46',
                                  BannerAdSize.BANNER,
                                  onAdLoaded: (ad) {},
                                  onAdClicked: (ad) {},
                                ),
                              ),
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child:
                                    Image.asset('lib/image/snsvria/shot2.jpg')),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    shape: const StadiumBorder(),
                                    backgroundColor:
                                        const Color.fromARGB(255, 0, 149, 109)),
                                icon: const Icon(
                                  Icons.download_rounded,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                label: const Text(
                                  'دانـــلود تــصویـر',
                                  style: TextStyle(
                                      fontFamily: 'aseman',
                                      fontSize: 30,
                                      color:
                                          Color.fromARGB(255, 205, 255, 242)),
                                ),
                                onPressed: () async {
                                  String url =
                                      'https://bagheeram.com/wp-content/uploads/2023/01/best-soil-for-sansevieria-01-min.jpg';
                                  await GallerySaver.saveImage(url,
                                      albumName: 'Giaheto');
                                  // ignore: use_build_context_synchronously
                                  showAlertDialog(context);
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: BannerAd(
                                  'c13cd83d-f817-44b1-9fc5-1eb7440e7d46',
                                  BannerAdSize.BANNER,
                                  onAdLoaded: (ad) {},
                                  onAdClicked: (ad) {},
                                ),
                              ),
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child:
                                    Image.asset('lib/image/snsvria/shot1.jpg')),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    shape: const StadiumBorder(),
                                    backgroundColor:
                                        const Color.fromARGB(255, 0, 149, 109)),
                                icon: const Icon(
                                  Icons.download_rounded,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                label: const Text(
                                  'دانـــلود تــصویـر',
                                  style: TextStyle(
                                      fontFamily: 'aseman',
                                      fontSize: 30,
                                      color:
                                          Color.fromARGB(255, 205, 255, 242)),
                                ),
                                onPressed: () async {
                                  String url =
                                      'https://bagheeram.com/wp-content/uploads/2023/01/best-soil-for-sansevieria-01-min.jpg';
                                  await GallerySaver.saveImage(url,
                                      albumName: 'Giaheto');
                                  // ignore: use_build_context_synchronously
                                  showAlertDialog(context);
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: BannerAd(
                                  'c13cd83d-f817-44b1-9fc5-1eb7440e7d46',
                                  BannerAdSize.BANNER,
                                  onAdLoaded: (ad) {},
                                  onAdClicked: (ad) {},
                                ),
                              ),
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child:
                                    Image.asset('lib/image/snsvria/shot1.jpg')),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    shape: const StadiumBorder(),
                                    backgroundColor:
                                        const Color.fromARGB(255, 0, 149, 109)),
                                icon: const Icon(
                                  Icons.download_rounded,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                label: const Text(
                                  'دانـــلود تــصویـر',
                                  style: TextStyle(
                                      fontFamily: 'aseman',
                                      fontSize: 30,
                                      color:
                                          Color.fromARGB(255, 205, 255, 242)),
                                ),
                                onPressed: () async {
                                  String url =
                                      'https://bagheeram.com/wp-content/uploads/2023/01/best-soil-for-sansevieria-01-min.jpg';
                                  await GallerySaver.saveImage(url,
                                      albumName: 'Giaheto');
                                  // ignore: use_build_context_synchronously
                                  showAlertDialog(context);
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: BannerAd(
                                  'c13cd83d-f817-44b1-9fc5-1eb7440e7d46',
                                  BannerAdSize.BANNER,
                                  onAdLoaded: (ad) {},
                                  onAdClicked: (ad) {},
                                ),
                              ),
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child:
                                    Image.asset('lib/image/snsvria/shot3.jpg')),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    shape: const StadiumBorder(),
                                    backgroundColor:
                                        const Color.fromARGB(255, 0, 149, 109)),
                                icon: const Icon(
                                  Icons.download_rounded,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                label: const Text(
                                  'دانـــلود تــصویـر',
                                  style: TextStyle(
                                      fontFamily: 'aseman',
                                      fontSize: 30,
                                      color:
                                          Color.fromARGB(255, 205, 255, 242)),
                                ),
                                onPressed: () async {
                                  String url =
                                      'https://bagheeram.com/wp-content/uploads/2023/01/best-soil-for-sansevieria-01-min.jpg';
                                  await GallerySaver.saveImage(url,
                                      albumName: 'Giaheto');
                                  // ignore: use_build_context_synchronously
                                  showAlertDialog(context);
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: BannerAd(
                                  'c13cd83d-f817-44b1-9fc5-1eb7440e7d46',
                                  BannerAdSize.BANNER,
                                  onAdLoaded: (ad) {},
                                  onAdClicked: (ad) {},
                                ),
                              ),
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child:
                                    Image.asset('lib/image/snsvria/shot1.jpg')),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    shape: const StadiumBorder(),
                                    backgroundColor:
                                        const Color.fromARGB(255, 0, 149, 109)),
                                icon: const Icon(
                                  Icons.download_rounded,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                label: const Text(
                                  'دانـــلود تــصویـر',
                                  style: TextStyle(
                                      fontFamily: 'aseman',
                                      fontSize: 30,
                                      color:
                                          Color.fromARGB(255, 205, 255, 242)),
                                ),
                                onPressed: () async {
                                  String url =
                                      'https://bagheeram.com/wp-content/uploads/2023/01/best-soil-for-sansevieria-01-min.jpg';
                                  await GallerySaver.saveImage(url,
                                      albumName: 'Giaheto');
                                  // ignore: use_build_context_synchronously
                                  showAlertDialog(context);
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: BannerAd(
                                  'c13cd83d-f817-44b1-9fc5-1eb7440e7d46',
                                  BannerAdSize.BANNER,
                                  onAdLoaded: (ad) {},
                                  onAdClicked: (ad) {},
                                ),
                              ),
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child:
                                    Image.asset('lib/image/snsvria/shot1.jpg')),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    shape: const StadiumBorder(),
                                    backgroundColor:
                                        const Color.fromARGB(255, 0, 149, 109)),
                                icon: const Icon(
                                  Icons.download_rounded,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                label: const Text(
                                  'دانـــلود تــصویـر',
                                  style: TextStyle(
                                      fontFamily: 'aseman',
                                      fontSize: 30,
                                      color:
                                          Color.fromARGB(255, 205, 255, 242)),
                                ),
                                onPressed: () async {
                                  String url =
                                      'https://bagheeram.com/wp-content/uploads/2023/01/best-soil-for-sansevieria-01-min.jpg';
                                  await GallerySaver.saveImage(url,
                                      albumName: 'Giaheto');
                                  // ignore: use_build_context_synchronously
                                  showAlertDialog(context);
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 30),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: BannerAd(
                                  'c13cd83d-f817-44b1-9fc5-1eb7440e7d46',
                                  BannerAdSize.BANNER,
                                  onAdLoaded: (ad) {},
                                  onAdClicked: (ad) {},
                                ),
                              ),
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child:
                                    Image.asset('lib/image/snsvria/shot1.jpg')),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    shape: const StadiumBorder(),
                                    backgroundColor:
                                        const Color.fromARGB(255, 0, 149, 109)),
                                icon: const Icon(
                                  Icons.download_rounded,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                label: const Text(
                                  'دانـــلود تــصویـر',
                                  style: TextStyle(
                                      fontFamily: 'aseman',
                                      fontSize: 30,
                                      color:
                                          Color.fromARGB(255, 205, 255, 242)),
                                ),
                                onPressed: () async {
                                  String url =
                                      'https://bagheeram.com/wp-content/uploads/2023/01/best-soil-for-sansevieria-01-min.jpg';
                                  await GallerySaver.saveImage(url,
                                      albumName: 'Giaheto');
                                  // ignore: use_build_context_synchronously
                                  showAlertDialog(context);
                                },
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: BannerAd(
                                'c13cd83d-f817-44b1-9fc5-1eb7440e7d46',
                                BannerAdSize.BANNER,
                                onAdLoaded: (ad) {},
                                onAdClicked: (ad) {},
                              ),
                            ),
                          ],
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