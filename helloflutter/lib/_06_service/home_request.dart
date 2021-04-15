
import 'config.dart';
import 'http_request.dart';

class HomeRequest {

  static void requestMovieList(int start) async {

    final movieURL = "/movie/top250?start=$start&count=${HomeConfig.movieCount}";

    // final result = await HttpRequest.request(movieURL);

    HttpRequest.request(movieURL).then((value){
      print(value);
    });



  }


}