class Description {
  final String image;
  final String title;
  final String desc;
  final String danger;

  Description({
    required this.title,
    required this.desc,
    required this.danger,
    this.image = '',
  });
}
