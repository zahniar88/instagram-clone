class Feed {
  final String avatar;
  final String image;
  final String username;
  final String text;
  final bool isLike;
  final int counterLike;

  Feed({
    required this.avatar,
    required this.image,
    required this.username,
    required this.text,
    required this.isLike,
    required this.counterLike,
  });

  static List<Feed> feeds = [
    Feed(
      avatar: "assets/avatars/ariefmuhammaddd.jpeg",
      image: "assets/feeds/ariefmuhammad.jpeg",
      username: "ariefmuhammad",
      text:
          "Billionaire’s Project X Elders. Rilis besok pukul 12 siang. Siap-siap baku hantam, karna produknya sangat terbatas. Cek intagram @billionairesproject. Kalian pasti suka.",
      isLike: true,
      counterLike: 9752,
    ),
    Feed(
      avatar: "assets/avatars/gadgetin.jpeg",
      image: "assets/feeds/gadgetin.jpeg",
      username: "gadgetins",
      text:
          "OPPO Reno6 5G udah mau launching nih 😍 HP yang lumayan banyak direquest di komen karena bentuknya yang 🟩. @OPPOIndonesia nyebut desain ini sebagai Ultra Slim Retro Design, karena penampilannya yang kerasa kayak nostalgia gitu.. Selain desainnya, OPPO Reno6 5G juga punya beberapa bagian fresh lain, yang sayangnya masih belum boleh diceritain sekarang 🤔.Kalau penasaran sama HP ini, tungguin aja launchingnya via online streaming di channel resmi OPPO Indonesia tanggal 19 Agustus 2021!.#OPPOReno65G #OPPOReno6Series5G #ForgottenEmotion",
      isLike: true,
      counterLike: 25670,
    ),
    Feed(
      avatar: "assets/avatars/buildwithangga.jpeg",
      image: "assets/feeds/buildwithangga.jpeg",
      username: "buildwithangga",
      text:
          "Traktiran langsung dari mentor Angga @jiwafounder nih untuk kalian para designer dan developer yang ingin belajar bikin website tanpa koding (zero to superstar).Kita akan belajar bersama gimana caranya mengimplementasikan hasil design di Figma menjadi sebuah website yang siap digunakan oleh pengguna di seluruh dunia. Bisa membangun online portfolio juga nih dengan bebas biaya karena Webflow telah menyediakan free domain dan hosting (waaa asik benar-benar pengertian). Kuy langsung gabung aja di kelas dan kami akan tunggu kehadirannya 🙌 Semoga bermanfaat dan terima kasih.BuildWith Angga.",
      isLike: true,
      counterLike: 2035,
    ),
  ];
}
