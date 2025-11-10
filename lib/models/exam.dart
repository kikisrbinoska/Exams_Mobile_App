class Exam {
  final String subject;
  final DateTime dateTime;
  final List<String> rooms;

  Exam({
    required this.subject,
    required this.dateTime,
    required this.rooms,
  });

  bool get isPast {
    return dateTime.isBefore(DateTime.now());
  }

  String get timeRemaining {
    final now = DateTime.now();
    final difference = dateTime.difference(now);

    if (difference.isNegative) {
      return "Испитот е поминат";
    }

    final days = difference.inDays;
    final hours = difference.inHours % 24;

    return "$days дена, $hours часа";
  }

  String get formattedDate {
    return "${dateTime.day}.${dateTime.month}.${dateTime.year}";
  }

  String get formattedTime {
    return "${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}";
  }
}

final List<Exam> exams = [
  Exam(
    subject: "Мобилни информациски системи",
    dateTime: DateTime(2025, 11, 15, 10, 0),
    rooms: ["Амфитеатар 1", "Лаб 1"],
  ),
  Exam(
    subject: "Веб програмирање",
    dateTime: DateTime(2025, 11, 18, 12, 0),
    rooms: ["Амфитеатар 2"],
  ),
  Exam(
    subject: "Сервисно ориентирани архитектури",
    dateTime: DateTime(2025, 11, 20, 9, 0),
    rooms: ["Лаб 2", "Лаб 3"],
  ),
  Exam(
    subject: "Бази на податоци",
    dateTime: DateTime(2025, 11, 22, 14, 0),
    rooms: ["Амфитеатар 3"],
  ),
  Exam(
    subject: "Вештачка интелигенција",
    dateTime: DateTime(2025, 11, 25, 11, 0),
    rooms: ["Лаб 1"],
  ),
  Exam(
    subject: "Електронска и мобилна трговија",
    dateTime: DateTime(2025, 11, 28, 13, 0),
    rooms: ["Амфитеатар 1", "Амфитеатар 2"],
  ),
  Exam(
    subject: "Алгоритми и податочни структури",
    dateTime: DateTime(2025, 12, 1, 10, 0),
    rooms: ["Лаб 2"],
  ),
  Exam(
    subject: "Софтверско инженерство",
    dateTime: DateTime(2025, 12, 3, 15, 0),
    rooms: ["Амфитеатар 3"],
  ),
  Exam(
    subject: "Дискретна математика",
    dateTime: DateTime(2025, 12, 5, 9, 0),
    rooms: ["Лаб 3"],
  ),
  Exam(
    subject: "Веројатност и статистика",
    dateTime: DateTime(2025, 12, 8, 12, 0),
    rooms: ["Амфитеатар 1"],
  ),
  Exam(
    subject: "Психологија на училишна возраст",
    dateTime: DateTime(2024, 11, 5, 10, 0),
    rooms: ["Амфитеатар 2"],
  ),
]..sort((a, b) => a.dateTime.compareTo(b.dateTime)); 