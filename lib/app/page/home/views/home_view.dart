import 'package:alquran_den/app/data/tema/palletwarna.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import 'juz_tabar.dart';
import 'semuasurat.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        centerTitle: true,
        backgroundColor: KColor.kAppBar,
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              if (value == 1) {}
              Navigator.pushNamed(context, '/settings');
            },
            elevation: 1,
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: 1,
                  child: Text('Pengaturan'),
                ),
              ];
            },
          ),
        ],
        title: const Text('Al-quran den'),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Assalamualaikum',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: KColor.kAppBar.withOpacity(0.5),
                    ),
                  ),
                  const Text(
                    'Febriqgal',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: KColor.kAppBar),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: Get.width,
                    child: Stack(
                      children: [
                        const Positioned(
                          bottom: 5,
                          right: 20,
                          child: Image(
                            width: 150,
                            image: AssetImage('assets/1.png'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.menu_book_sharp,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    ' Terakhir Baca',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'Al-Fatihah',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                'Ayat 1',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: [
                          KColor.kAppBar,
                          Color.fromARGB(255, 14, 44, 30),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
                padding: EdgeInsets.all(20),
                child: TabBar(
                  labelColor: KColor.kAppBar,
                  indicatorColor: KColor.kAppBar,
                  tabs: [
                    Tab(text: 'Surat'),
                    Tab(text: 'Juz'),
                    Tab(text: 'Bookmark'),
                  ],
                )),
            const Expanded(
              child: TabBarView(
                children: [
                  SemuaSurat(),
                  JuzClass(),
                  Center(child: Text('COMING SOON!')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
