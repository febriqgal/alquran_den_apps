import 'package:alquran_den/app/data/models/detailsurah.dart' as detail;
import 'package:alquran_den/app/data/models/surah.dart';
import 'package:alquran_den/app/data/tema/palletwarna.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Surah surah = Get.arguments;
    Get.put(DetailController());
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: KColor.kAppBar,
        title: Text('${surah.name!.transliteration?.id}'),
      ),
      body: FutureBuilder<detail.Detailsurah>(
        future: controller.getDetailsurah(surah.number.toString()),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(
                    color: KColor.kAppBar,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Sabar dih...'),
                ],
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LottieBuilder.asset('assets/qq.json'),
                  const Text('Tidak ada koneksi internet'),
                ],
              ),
            );
          }
          return ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: Get.width,
                    child: Stack(
                      children: [
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
                                    ' Tafsir',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(
                                surah.tafsir!.id ?? '-',
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.justify,
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: snapshot.data!.verses!.length,
                  itemBuilder: (context, index) {
                    detail.Verse ayat = snapshot.data!.verses![index];
                    return Card(
                      child: ListTile(
                        leading: Stack(
                          alignment: Alignment.center,
                          children: [
                            const Image(
                              image: AssetImage('assets/1.png'),
                            ),
                            Text(
                              '${index + 1}',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        title: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            ayat.text!.arab!,
                            textAlign: TextAlign.end,
                            style: const TextStyle(fontSize: 30),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ayat.text!.transliteration!.en ?? 'eror',
                                style: const TextStyle(
                                    color: KColor.kAppBar,
                                    fontStyle: FontStyle.italic),
                                textAlign: TextAlign.justify,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                ayat.translation!.id!,
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
