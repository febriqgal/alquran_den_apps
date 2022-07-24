// ignore_for_file: file_names
import 'package:alquran_den/app/data/models/surah.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../data/tema/palletwarna.dart';
import '../controllers/home_controller.dart';

class SemuaSurat extends GetView<HomeController> {
  const SemuaSurat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Surah>>(
      future: controller.getAllsurah(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Column(
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
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              Surah surah = snapshot.data![index];
              return Card(
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/detail', arguments: surah);
                  },
                  leading: Stack(
                    alignment: Alignment.center,
                    children: [
                      const Image(
                        image: AssetImage('assets/1.png'),
                      ),
                      Text(
                        '${index + 1}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  title: Text(
                    '${surah.name!.transliteration?.id}',
                  ),
                  subtitle: Text(
                    '${surah.revelation!.id ?? '-'} | ${surah.numberOfVerses} ayat',
                  ),
                  trailing: Text(surah.name!.short ?? '-'),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
