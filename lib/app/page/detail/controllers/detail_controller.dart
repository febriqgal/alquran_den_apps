import 'dart:async';
import 'dart:convert';
import 'package:alquran_den/app/data/models/detailsurah.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DetailController extends GetxController {
  void onRefresh() async {
    update();
  }

  Future<Detailsurah> getDetailsurah(String id) async {
    Uri url = Uri.parse('https://api.quran.sutanlab.id/surah/$id');
    var res = await http.get(url);

    Map<String, dynamic> data =
        (json.decode(res.body) as Map<String, dynamic>)['data'];

    return Detailsurah.fromJson(data);
  }
}
