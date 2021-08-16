class Snapgram {
  final String image;
  final String username;
  final bool isUser;

  Snapgram({
    required this.image,
    required this.username,
    required this.isUser,
  });

  static List<Snapgram> snaps = [
    Snapgram(
      image: "assets/avatars/user.jpeg",
      username: "Your Story",
      isUser: true,
    ),
    Snapgram(
      image: "assets/avatars/ariefmuhammaddd.jpeg",
      username: "ariefmuhammad",
      isUser: false,
    ),
    Snapgram(
      image: "assets/avatars/gadgetin.jpeg",
      username: "gadgetin",
      isUser: false,
    ),
    Snapgram(
      image: "assets/avatars/rifqieh.jpeg",
      username: "rifqieh",
      isUser: false,
    ),
    Snapgram(
      image: "assets/avatars/galihpratama.jpeg",
      username: "galih.pratama",
      isUser: false,
    ),
    Snapgram(
      image: "assets/avatars/sekolahkoding.jpeg",
      username: "sekolahkoding",
      isUser: false,
    ),
    Snapgram(
      image: "assets/avatars/sandhikagalih.jpeg",
      username: "sandhikagalih",
      isUser: false,
    ),
    Snapgram(
      image: "assets/avatars/buildwithangga.jpeg",
      username: "buildwithangga",
      isUser: false,
    ),
  ];
}
