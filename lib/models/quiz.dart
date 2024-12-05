class Answer {
  final String text;
  final int score;

  Answer({
    required this.text,
    required this.score,
  });
}

class Quiz {
  final String question;
  final String image;
  final List<Answer> answers;

  Quiz({
    required this.question,
    required this.image,
    required this.answers,
  });
}

final List<Quiz> questions = [
  Quiz(
    question: 'Bagaimana Anda menghadapi masalah?',
    image: 'assets/images/chill1.jpg',
    answers: [
      Answer(text: 'Santai saja, hidup jalan terus.', score: 10),
      Answer(text: 'Mencari solusi secara logis.', score: 7),
      Answer(text: 'Kadang panik, tapi mencoba tenang.', score: 5),
      Answer(text: 'Langsung stres dan sulit fokus.', score: 2),
    ],
  ),
  Quiz(
    question: 'Apa yang Anda lakukan saat punya waktu luang?',
    image: 'assets/images/chill2.jpg',
    answers: [
      Answer(text: 'Mendengarkan musik santai.', score: 10),
      Answer(text: 'Membaca buku atau belajar.', score: 7),
      Answer(text: 'Menonton film atau serial.', score: 5),
      Answer(text: 'Tidur sepanjang hari.', score: 2),
    ],
  ),
  Quiz(
    question: 'Bagaimana cara Anda bersosialisasi?',
    image: 'assets/images/chill3.jpg',
    answers: [
      Answer(text: 'Bertemu teman dengan santai.', score: 10),
      Answer(text: 'Hanya berbicara jika diperlukan.', score: 7),
      Answer(text: 'Lebih suka mengamati dulu.', score: 5),
      Answer(text: 'Menghindari interaksi sosial.', score: 2),
    ],
  ),
  Quiz(
    question: 'Apa minuman favorit seorang Chill Guy?',
    image: 'assets/images/chill4.jpg',
    answers: [
      Answer(text: 'Kopi.', score: 10),
      Answer(text: 'Teh.', score: 7),
      Answer(text: 'Jus buah.', score: 5),
      Answer(text: 'Air putih.', score: 2),
    ],
  ),
  Quiz(
    question: 'Bagaimana Anda mengatasi tekanan pekerjaan?',
    image: 'assets/images/chill5.jpg',
    answers: [
      Answer(text: 'Beristirahat sejenak.', score: 10),
      Answer(text: 'Berbagi dengan teman.', score: 7),
      Answer(text: 'Melakukan aktivitas fisik.', score: 5),
      Answer(text: 'Menghindari tugas tersebut.', score: 2),
    ],
  ),
  Quiz(
    question: 'Jenis liburan apa yang Anda sukai?',
    image: 'assets/images/chill6.jpg',
    answers: [
      Answer(text: 'Bersantai di pantai.', score: 10),
      Answer(text: 'Mengunjungi tempat budaya.', score: 7),
      Answer(text: 'Trekking di gunung.', score: 5),
      Answer(text: 'Tinggal di rumah saja.', score: 2),
    ],
  ),
  Quiz(
    question: 'Musik apa yang membuat Anda rileks?',
    image: 'assets/images/chill7.jpg',
    answers: [
      Answer(text: 'Lo-fi.', score: 10),
      Answer(text: 'Jazz.', score: 7),
      Answer(text: 'Instrumental.', score: 5),
      Answer(text: 'Pop mainstream.', score: 2),
    ],
  ),
  Quiz(
    question: 'Bagaimana Anda menanggapi konflik?',
    image: 'assets/images/chill8.jpg',
    answers: [
      Answer(text: 'Berusaha memahami sisi lain.', score: 10),
      Answer(text: 'Membicarakan solusi.', score: 7),
      Answer(text: 'Menghindari konflik.', score: 5),
      Answer(text: 'Langsung menyerang balik.', score: 2),
    ],
  ),
  Quiz(
    question: 'Apa hobi seorang Chill Guy?',
    image: 'assets/images/chill9.jpg',
    answers: [
      Answer(text: 'Meditasi atau yoga.', score: 10),
      Answer(text: 'Membaca atau menulis.', score: 7),
      Answer(text: 'Bermain game.', score: 5),
      Answer(text: 'Scroll media sosial.', score: 2),
    ],
  ),
  Quiz(
    question: 'Apa arti kesuksesan bagi Anda?',
    image: 'assets/images/chill10.jpg',
    answers: [
      Answer(text: 'Ketenangan batin.', score: 10),
      Answer(text: 'Pencapaian tujuan.', score: 7),
      Answer(text: 'Keseimbangan hidup.', score: 5),
      Answer(text: 'Kekayaan materi.', score: 2),
    ],
  ),
];
