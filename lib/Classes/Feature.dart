class Feature {
  String title;
  String description;
  String imagePath;
  String screenPath;

  Feature({
    required this.title,
    required this.imagePath,
    this.screenPath = "",
    this.description = "",
  });
}
