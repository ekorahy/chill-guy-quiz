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
      Answer(text: 'Santai saja, hidup jalan terus.', score: 14),
      Answer(text: 'Mencari solusi secara logis.', score: 20),
      Answer(text: 'Kadang panik, tapi mencoba tenang.', score: 10),
      Answer(text: 'Langsung stres dan sulit fokus.', score: 4),
    ],
  ),
  Quiz(
    question: 'Apa yang Anda lakukan saat punya waktu luang?',
    image: 'assets/images/chill2.jpg',
    answers: [
      Answer(text: 'Mendengarkan musik santai.', score: 14),
      Answer(text: 'Membaca buku atau belajar.', score: 20),
      Answer(text: 'Menonton film atau serial.', score: 10),
      Answer(text: 'Tidur sepanjang hari.', score: 4),
    ],
  ),
  Quiz(
    question: 'Bagaimana cara Anda bersosialisasi?',
    image: 'assets/images/chill3.jpg',
    answers: [
      Answer(text: 'Bertemu teman dengan santai.', score: 20),
      Answer(text: 'Hanya berbicara jika diperlukan.', score: 14),
      Answer(text: 'Lebih suka mengamati dulu.', score: 10),
      Answer(text: 'Menghindari interaksi sosial.', score: 4),
    ],
  ),
  Quiz(
    question: 'Apa minuman favorit seorang Chill Guy?',
    image: 'assets/images/chill4.jpg',
    answers: [
      Answer(text: 'Kopi.', score: 20),
      Answer(text: 'Teh.', score: 14),
      Answer(text: 'Jus buah.', score: 10),
      Answer(text: 'Air putih.', score: 4),
    ],
  ),
  Quiz(
    question: 'Bagaimana Anda mengatasi tekanan pekerjaan?',
    image: 'assets/images/chill5.jpg',
    answers: [
      Answer(text: 'Beristirahat sejenak.', score: 20),
      Answer(text: 'Berbagi dengan teman.', score: 14),
      Answer(text: 'Melakukan aktivitas fisik.', score: 10),
      Answer(text: 'Menghindari tugas tersebut.', score: 4),
    ],
  ),
];
