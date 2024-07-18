import 'package:adivery/adivery.dart';
import 'package:flutter/material.dart';
import 'package:adivery/adivery_ads.dart';
import 'package:giaheto/plants/aglonema/aglonema.dart';
import 'package:giaheto/plants/difenbakhia/difen.dart';
import 'package:giaheto/plants/ficus/ficus.dart';
import 'package:giaheto/plants/sansveria/sansveria.dart';

class Plant {
  final String name;
  final String imagePath;
  final Widget page; // اضافه کردن فیلد جدید برای نگهداری صفحه مربوط به هر گیاه

  Plant({required this.name, required this.imagePath, required this.page});
}

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final List<Plant> plants = [
    Plant(
      name: 'سانســـوریا',
      imagePath: 'lib/image/snsvria.png',
      page: const Sansveria(
        key: null,
      ),
    ),
    Plant(
      name: 'دیفن باخیا',
      imagePath: 'lib/image/dfnbkhia.png',
      page: const Difen(
        key: null,
      ),
    ),
    Plant(
      name: 'فیکوس',
      imagePath: 'lib/image/ficus.png',
      page: const Ficus(
        key: null,
      ),
    ),
    Plant(
      name: 'آگلونما',
      imagePath: 'lib/image/Aglaonema.png',
      page: const Aglonema(
        key: null,
      ),
    ),
    Plant(
      name: 'آگلونما',
      imagePath: 'lib/image/Aglaonema.png',
      page: const Sansveria(
        key: null,
      ),
    ),
    Plant(
      name: 'آگلونما',
      imagePath: 'lib/image/Aglaonema.png',
      page: const Sansveria(
        key: null,
      ),
    ),
    Plant(
      name: 'آگلونما',
      imagePath: 'lib/image/Aglaonema.png',
      page: const Sansveria(
        key: null,
      ),
    ),

    // اضافه کردن سایر گیاهان به این لیست
  ];

  @override
  void initState() {
    super.initState();
    AdiveryPlugin.initialize('14e0507e-394a-442a-8c7a-01e254fdf3e8');
  }

  Widget buildPlantCard(Plant plant) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => plant.page),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.amber, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Image.asset(
                plant.imagePath,
                width: 150,
                height: 150,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  plant.name,
                  style: const TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w900,
                      fontFamily: 'aseman'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
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
            Align(
              alignment: Alignment.topCenter,
              child: Wrap(
                children: plants.map((plant) => buildPlantCard(plant)).toList(),
              ),
            ),
            SafeArea(
              child: Align(
                alignment: Alignment.topCenter,
                child: BannerAd(
                  'c13cd83d-f817-44b1-9fc5-1eb7440e7d46',
                  BannerAdSize.BANNER,
                  onAdLoaded: (ad) {},
                  onAdClicked: (ad) {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
