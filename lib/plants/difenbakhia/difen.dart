import 'package:adivery/adivery_ads.dart';
import 'package:flutter/material.dart';
import 'package:giaheto/plants/difenbakhia/camera/camera.dart';
import 'package:giaheto/plants/difenbakhia/drop/drop.dart';
import 'package:giaheto/plants/difenbakhia/info/info.dart';
import 'package:giaheto/plants/difenbakhia/shop/shop.dart';
import 'package:giaheto/plants/difenbakhia/soil/soil.dart';
import 'package:giaheto/plants/difenbakhia/sun/sun.dart';


class Difen extends StatelessWidget {
  const Difen({required super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.center,          
          child: Text(
            'دیــفن بــاخیــا',
            style: TextStyle(fontFamily: 'aseman', fontSize: 30),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 149, 109),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: BannerAd(
              'c13cd83d-f817-44b1-9fc5-1eb7440e7d46',
              BannerAdSize.BANNER,
              onAdLoaded: (ad) {},
              onAdClicked: (ad) {},
            ),
          ),
          Wrap(
            children: [
              _buildButton(
                'lib/image/sun.png',
                'نــور دهـــی',
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DifenSun()),
                ),
              ),
              _buildButton(
                'lib/image/drop.png',
                'آبــــیاری',
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DifenDrop()),
                ),
              ),
              _buildButton(
                'lib/image/soil.png',
                'خـــاک و کــود',
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DifenSoil()),
                ),
              ),
              _buildButton(
                'lib/image/content.png',
                'مشـــخصات',
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DifenInfo()),
                ),
              ),
              _buildButton(
                'lib/image/camera.png',
                'گالـــری تــصاویر',
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DifenCam()),
                ),
              ),
              _buildButton(
                'lib/image/shop.png',
                'خــــــریــد',
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DifenShop()),
                  );
                  showShopAlertDialog2(context);
                },
              ),
            ],
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
    );
  }

  Widget _buildButton(String imagePath, String text, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextButton(
        onPressed: onPressed,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Image.asset(
                imagePath,
                width: 150,
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 22,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w900,
                    fontFamily: 'aseman',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void showShopAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        icon: const Icon(
          Icons.notifications_none_rounded,
          color: Colors.black,
          size: 60,
        ),
        title: const Text(
          'گــیاهــتو',
          style: TextStyle(
            fontFamily: 'aseman',
            fontSize: 35,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        content: const Text(
          'توجه 1 : \nبرای دسترسی به این بخش به اینترنت نیاز دارید \nتوجه 2 :\nاگر به اینترنت متصل هستید تا بارگزاری فروشگاه کمی صبر کنید',
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontFamily: 'aseman',
            fontSize: 25,
            color: Color.fromARGB(255, 0, 149, 109),
          ),
        ),
        actions: [
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              backgroundColor: const Color.fromARGB(255, 0, 149, 109),
            ),
            icon: const Icon(
              Icons.thumb_up_alt,
              color: Colors.white,
            ),
            label: const Text(
              'باشه',
              style: TextStyle(
                fontFamily: 'aseman',
                fontSize: 20,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
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

void showShopAlertDialog2(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        icon: const Icon(
          Icons.notifications_none_rounded,
          color: Colors.black,
          size: 60,
        ),
        title: const Text(
          'گــیاهــتو',
          style: TextStyle(
            fontFamily: 'aseman',
            fontSize: 35,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        content: const Text(
          'توجه 1 :\n برای دسترسی به فروشگاه به اینترنت نیاز دارید\nتوجه 2 : \n اگر به اینترنت متصل هستید ، تا بارگزاری صفحه کمی صبر کنید',
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontFamily: 'aseman',
            fontSize: 24,
            color: Color.fromARGB(255, 0, 149, 109),
          ),
        ),
        actions: [
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              backgroundColor: const Color.fromARGB(255, 0, 149, 109),
            ),
            icon: const Icon(
              Icons.thumb_up_alt,
              color: Colors.white,
            ),
            label: const Text(
              'باشه',
              style: TextStyle(
                fontFamily: 'aseman',
                fontSize: 20,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
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
