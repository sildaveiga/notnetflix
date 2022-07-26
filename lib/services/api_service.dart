import 'package:dio/dio.dart';
import 'package:notnetflix/models/movie.dart';
import 'package:notnetflix/services/api.dart';

class APIService {
  final API api = API();
  final Dio dio = Dio();

  Future<Response> getData(String path, {Map<String, dynamic>? params}) async {
    //on construit l'url
    String url = api.baseURL + path;

    //on construit les parametre de la requete
    //ces paramètres seront presents dans chaque requetes
    Map<String, dynamic> query = {
      'api_key': api.apiKey,
      'language': 'fr-FR',
    };

    //si params n'est pas null, on ajoute son contenu à query
    if (params != null) {
      query.addAll(params);
    }

    //on fait l'app
    final response = await dio.get(url, queryParameters: query);
    //on check si la requete s'est bien passé
    if (response.statusCode == 200) {
      return response;
    } else {
      throw response;
    }
  }

  Future<List<Movie>> getPopularMovies({required int pageNumber}) async {
    Response response = await getData('/movie/popular', params: {
      'page': pageNumber,
    });

    if (response.statusCode == 200) {
      Map data = response.data;
      List< dynamic> results = data['results'];
      List<Movie> movies = [];
      for (Map<String, dynamic> json in results) {
        Movie movie = Movie.fromJson(json);
        movies.add(movie);
      }

      return movies;
    } else {
      throw response;
    }
  }
}
