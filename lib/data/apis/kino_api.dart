import 'package:get/get.dart';
import 'package:kinopoisk/data/getx/get_controller.dart';
import 'package:kinopoisk/data/models/kino_model.dart';
import 'package:kinopoisk/utis/constants.dart';

class KinoApi {
  final _dio = Constants.kinoApi;

  Future<List<KinoModel>> getKino({
    required String name,
    // KinoTypeEnum? kinoType,
    // int? year,
    int limit = 10,
    required int curPage,
  }) async {
    List<KinoModel> resultList = [];
    const String baseUrl = Constants.apiUrl;

    Map<String, dynamic> query = {};

    query["name"] = name;
    query["limit"] = limit;
    query["page"] = curPage;
    // if (kinoType != null) {
    //   query["typeNumber"] = kinoType.id;
    // }
    // if (year != null) {
    //   query["year"] = year;
    // }

    final response = await _dio.get(
      baseUrl,
      queryParameters: query,
    );

    var controller = Get.find<GetController>();
    controller.maxPage = response.data["pages"] ?? 0;

    for (var element in response.data["docs"]) {
      resultList.add(KinoModel.fromJson(element));
    }

    return resultList;
  }
}
