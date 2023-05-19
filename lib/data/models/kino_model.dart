import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kinopoisk/utis/constants.dart';

part 'kino_model.g.dart';

@JsonSerializable(createToJson: false)
class KinoModel {
  final int id;

  final int year;

  @JsonKey(fromJson: Constants.getString)
  final String name;

  @JsonKey(fromJson: Constants.getString)
  final String description;

  @JsonKey(fromJson: Constants.getString)
  final String shortDescription;

  final int? movieLength;

  final KinoModelPoster poster;

  final KinoModelRating rating;

  // @JsonKey(fromJson: getLogo)
  // final String logo;

  // @JsonKey(fromJson: getCountries)
  // final List<String> countries;

  // @JsonKey(fromJson: getCountries)
  // final List<String> genres;

  final String type;

  // @JsonKey(fromJson: getWatchability)
  // final List<KinoModelWatchability> watchability;

  KinoModel({
    required this.rating,
    required this.type,
    required this.id,
    this.movieLength,
    required this.year,
    required this.name,
    required this.description,
    required this.shortDescription,
    // required this.logo,
    // required this.countries,
    // required this.genres,
    required this.poster,
    // required this.watchability,
  });

  factory KinoModel.fromJson(Map<String, dynamic> json) => _$KinoModelFromJson(json);

  static List<String> getCountries(List list) {
    List<String> res = [];
    if (list.isNotEmpty) {
      for (var e in list) {
        res.add(e["name"] ?? "");
      }
    }

    return res;
  }

  static List<KinoModelWatchability> getWatchability(Map map) {
    List<KinoModelWatchability> res = [];

    List list = map["items"] ?? [];
    if (list.isNotEmpty) {
      for (var e in list) {
        res.add(KinoModelWatchability.fromJson(e));
      }
    }

    return res;
  }

  static String getLogo(Map? map) {
    return map?["url"] ?? "";
  }

  static double getRating(Map map) {
    return map["kp"] ?? 0.0;
  }
}

@JsonSerializable(createToJson: false)
class KinoModelPoster {
  @JsonKey(fromJson: Constants.getString)
  final String url;
  @JsonKey(fromJson: Constants.getString)
  final String previewUrl;

  KinoModelPoster({
    required this.previewUrl,
    required this.url,
  });
  factory KinoModelPoster.fromJson(Map<String, dynamic> json) => _$KinoModelPosterFromJson(json);
}

@JsonSerializable(createToJson: false)
class KinoModelWatchability {
  @JsonKey(fromJson: Constants.getString)
  final String name;

  @JsonKey(fromJson: getLogo)
  final String logo;

  @JsonKey(name: "url", fromJson: Constants.getString)
  final String link;

  KinoModelWatchability({
    required this.name,
    required this.link,
    required this.logo,
  });
  factory KinoModelWatchability.fromJson(Map<String, dynamic> json) => _$KinoModelWatchabilityFromJson(json);

  static String getLogo(Map? map) {
    return map?["url"] ?? "";
  }
}

@JsonSerializable(createToJson: false)
class KinoModelRating {
  final double kp;

  final double imdb;

  KinoModelRating({
    required this.kp,
    required this.imdb,
  });
  factory KinoModelRating.fromJson(Map<String, dynamic> json) => _$KinoModelRatingFromJson(json);
}

// enum KinoTypeEnum {
//   movie(text: "Movie", id: 1),
//   tvSeries(text: "Tv-series", id: 2),
//   cartoon(text: "Cartoon", id: 3),
//   anime(text: "Anime", id: 4),
//   animatedSeries(text: "Animated-series", id: 5),
//   tvShow(text: "Tv-show", id: 6);

//   final String text;
//   final int id;

//   const KinoTypeEnum({
//     required this.id,
//     required this.text,
//   });
// }
