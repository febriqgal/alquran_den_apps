import 'dart:convert';
import 'package:alquran_den/app/data/models/juz.dart';
import 'package:alquran_den/app/data/models/surah.dart' as surah;
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  Future<List<surah.Surah>>? getAllsurah() async {
    Uri url = Uri.parse('https://api.quran.sutanlab.id/surah/');
    var res = await http.get(url);

    List? data = (json.decode(res.body) as Map<String, dynamic>?)?['data'];
    if (data == null || data.isEmpty) {
      return [];
    } else {
      return data.map((e) => surah.Surah?.fromJson(e)).toList();
    }
  }

  Future<List<Juz>> getAllJuzz() async {
    List<Juz> alljuz = [];
    for (int i = 1; i <= 30; i++) {
      Uri url = Uri.parse('https://api.quran.sutanlab.id/juz/$i');
      var res = await http.get(url);

      Map<String, dynamic> data =
          (json.decode(res.body) as Map<String, dynamic>)['data'];
      Juz juz = Juz.fromJson(data);

      alljuz.add(juz);
    }
    return alljuz;
  }
}
