// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kino_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KinoModel _$KinoModelFromJson(Map<String, dynamic> json) => KinoModel(
      rating: KinoModelRating.fromJson(json['rating'] as Map<String, dynamic>),
      type: json['type'] as String,
      id: json['id'] as int,
      movieLength: json['movieLength'] as int?,
      year: json['year'] as int,
      name: Constants.getString(json['name'] as String?),
      description: Constants.getString(json['description'] as String?),
      shortDescription:
          Constants.getString(json['shortDescription'] as String?),
      poster: KinoModelPoster.fromJson(json['poster'] as Map<String, dynamic>),
    );

KinoModelPoster _$KinoModelPosterFromJson(Map<String, dynamic> json) =>
    KinoModelPoster(
      previewUrl: Constants.getString(json['previewUrl'] as String?),
      url: Constants.getString(json['url'] as String?),
    );

KinoModelWatchability _$KinoModelWatchabilityFromJson(
        Map<String, dynamic> json) =>
    KinoModelWatchability(
      name: Constants.getString(json['name'] as String?),
      link: Constants.getString(json['url'] as String?),
      logo: KinoModelWatchability.getLogo(json['logo'] as Map?),
    );

KinoModelRating _$KinoModelRatingFromJson(Map<String, dynamic> json) =>
    KinoModelRating(
      kp: (json['kp'] as num).toDouble(),
      imdb: (json['imdb'] as num).toDouble(),
    );
