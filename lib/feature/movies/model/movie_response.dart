import 'dart:convert';
import 'dart:ffi';

List<MovieResponse> movieListFromJson(String str) =>
    List<MovieResponse>.from(json.decode(str).map((x) => MovieResponse.fromJson(x)));

String movieListToJson(List<MovieResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MovieResponse {
  bool? isAdult;
  String? backdropPath;
  List? genreIds;
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? hasVideo;
  num? voteAverage;
  int? voteCount;

  MovieResponse(
      {this.isAdult,
      this.backdropPath,
      this.genreIds,
      this.id,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.posterPath,
      this.releaseDate,
      this.title,
      this.hasVideo,
      this.voteAverage,
      this.voteCount});

  factory MovieResponse.fromJson(Map<dynamic, dynamic> json) => MovieResponse(
      isAdult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      genreIds: json['genre_ids'] as List?,
      id: json['id'] as int?,
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      popularity: json['popularity'] as double?,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      title: json['title'] as String?,
      hasVideo: json['video'] as bool?,
      voteAverage: json['vote_average'] as num?,
      voteCount: json['vote_count'] as int?);

  Map<dynamic, dynamic> toJson() => {
        'adult': isAdult,
        'backdrop_path': backdropPath,
        'genre_ids': genreIds,
        'id': id,
        'original_language': originalLanguage,
        'original_title': originalTitle,
        'overview': overview,
        'popularity': popularity,
        'poster_path': posterPath,
        'release_date': releaseDate,
        'title': title,
        'video': hasVideo,
        'vote_average': voteAverage,
        'vote_count': voteCount
      };
}