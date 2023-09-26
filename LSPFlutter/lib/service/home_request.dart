
import 'package:lsp_flutter/douban/model/home_model.dart';
import 'package:lsp_flutter/service/config.dart';
import 'package:lsp_flutter/service/http_request.dart';

class HomeRequest {
  static  Future<List<MovieItem>> requestMovieList(int start) async {
    // 1.构建URL
    final movieURL = "/movie/top250?start=$start&count=${HomeConfig.movieCount}";

    //2.发送网络请求获取结果
    final result = await HttpRequest.request(movieURL);
    final subjects = result["subjects"];

    //3.将Map转成model
    List<MovieItem> movies = [];
    for (var sub in subjects) {
      movies.add(MovieItem.fromMap(sub));
    }
    return movies;
  }
}
