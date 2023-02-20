class ScrollImageHome {
  late String backgroundImage;
  ScrollImageHome(this.backgroundImage);

  ScrollImageHome.fromJson(Map<String, dynamic> jsondata, int index) {
    backgroundImage = jsondata["results"][index]["backdrop_path"];
  }
}
