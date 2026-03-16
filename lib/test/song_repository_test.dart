
import 'package:my_app/data/repositories/songs/song_repository_mock.dart';

void main() async {
  //   Instantiate the  song_repository_mock
  final reposotory = SongRepositoryMock();

  // Test both the success and the failure of the post request

  // Handle the Future using 2 ways  (2 tests)
  // - Using then() with .catchError().
  print("Test then catch error");

  reposotory
      .fetchSongs()
      .then((songs) {
        print("Successful");
        for (var song in songs) {
          print(song.title);
        }
      })
      .catchError((error) {
        print("Error fectching songs: $error");
      });
  // - Using async/await with try/catch.
  print("Test async/await with try/catch.");
  try {
    await Future.delayed(Duration(seconds: 3));
    final songs = await reposotory.fetchSongs();
    print("Successful");
    for (var song in songs) {
      print(song.title);
    }
  } catch (e) {
    print("Error fectching songs: $e");
  }
}
