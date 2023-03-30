import 'package:geocoder_buddy/src/models/error_model.dart';
import 'package:geocoder_buddy/src/models/gb_data.dart';
import 'package:geocoder_buddy/src/models/GBLatLng.dart';
import 'package:geocoder_buddy/src/models/MapData.dart';
import 'package:http/http.dart' as http;

import 'package:dio/dio.dart';

const String PATH = "https://nominatim.openstreetmap.org";

class NetworkService {
  final dio = Dio(BaseOptions(
    baseUrl: PATH,
  ));

  static Future<List<MapData>> searhAddress(String query) async {
    /*var request =
        http.Request('GET', Uri.parse("$PATH/search?q=$query&format=jsonv2"));
    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      return mapDataFromJson(data);
    } else {
      throw Exception(response.reasonPhrase);
    }*/
    Response response = await Dio()
        .get(Uri.parse('$PATH/search?q=$query&format=jsonv2').toString());
    if (response.statusCode == 200) {
      return List<MapData>.from(response.data.map((x) => MapData.fromJson(x)));
    } else {
      throw Exception(ErrorModel.fromJson(response.data)..error?.message);
    }
  }

  static Future<GBData> getDetails(GBLatLng pos) async {
    Response response = await Dio().get(
        Uri.parse('$PATH/reverse?lat=${pos.lat}&lon=${pos.lng}&format=jsonv2')
            .toString());
    //var request = http.Request('GET', Uri.parse('$PATH/reverse?lat=${pos.lat}&lon=${pos.lng}&format=jsonv2'));

    //http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      return GBData.fromJson(response.data);
    } else {
      throw Exception(ErrorModel.fromJson(response.data)..error?.message);
    }
  }
}
