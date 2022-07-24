import 'package:alquran_den/app/data/models/juz.dart' as juz;
import 'package:alquran_den/app/data/tema/palletwarna.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../controllers/home_controller.dart';

class JuzClass extends GetView<HomeController> {
  const JuzClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<juz.Juz>>(
      future: controller.getAllJuzz(),
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
              juz.Juz detailJuz = snapshot.data![index];
              return Card(
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/detailJuz');
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
                    'Juz ${index + 1}',
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mulai : ${detailJuz.start}'),
                      Text('Sampai : ${detailJuz.end}'),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
