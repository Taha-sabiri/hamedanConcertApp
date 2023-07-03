class Concert {
  final String headertit;
  final String tit;
  final String group;
  final String image;
  const Concert({
    required this.tit,
    required this.headertit,
    required this.image,
    required this.group,
  });
}

List<Concert> concert = [
  Concert(
      tit:
          "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و ",
      headertit: "کنسرت همدان سیروان خسروی",
      image: 'assets/images/Sirvan_1.jpg',
      group: "کنسرت پاپ"),
  Concert(
      tit:
          "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و ",
      headertit: "کنسرت همدان آرمین زارعی ",
      image: 'assets/images/41719.jpg',
      group: "کسنرت پاپ"),
  Concert(
      tit:
          "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و ",
      headertit: "کنسرت همدان علی زندوکیلی  ",
      image: 'assets/images/76588d91-0199-4a58-9995-e6fdb79a586b.webp',
      group: "کسنرت سنتی"),
];
