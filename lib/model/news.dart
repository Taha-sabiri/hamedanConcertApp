class News {
  final String headertit;
  final String tit;
  final String time;
  final String image;
  const News({
    required this.tit,
    required this.headertit,
    required this.image,
    required this.time,
  });
}

List<News> news = [
  News(
      tit:
          "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و ",
      headertit: "کنسرت همدان سیروان خسروی",
      image: 'assets/images/Sirvan_1.jpg',
      time: "22/4/6"),
  News(
      tit:
          "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و ",
      headertit: "کنسرت همدان سیروان خسروی",
      image: 'assets/images/41719.jpg',
      time: "22/4/6")
];
