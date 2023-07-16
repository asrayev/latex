class DataModel {
  int id;
  Book book;
  Chapter chapter;
  Book topic;
  String questionContent;
  dynamic audioQuestion;
  String answerContent;
  dynamic audioAnswer;
  bool hasAudio;

  DataModel({
    required this.id,
    required this.book,
    required this.chapter,
    required this.topic,
    required this.questionContent,
    this.audioQuestion,
    required this.answerContent,
    this.audioAnswer,
    required this.hasAudio,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
    id: json["id"],
    book: Book.fromJson(json["book"]),
    chapter: Chapter.fromJson(json["chapter"]),
    topic: Book.fromJson(json["topic"]),
    questionContent: json["question_content"],
    audioQuestion: json["audio_question"],
    answerContent: json["answer_content"],
    audioAnswer: json["audio_answer"],
    hasAudio: json["has_audio"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "book": book.toJson(),
    "chapter": chapter.toJson(),
    "topic": topic.toJson(),
    "question_content": questionContent,
    "audio_question": audioQuestion,
    "answer_content": answerContent,
    "audio_answer": audioAnswer,
    "has_audio": hasAudio,
  };
}

class Book {
  int id;
  String title;

  Book({
    required this.id,
    required this.title,
  });

  factory Book.fromJson(Map<String, dynamic> json) => Book(
    id: json["id"],
    title: json["title"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
  };
}

class Chapter {
  int id;
  String title;
  Book book;

  Chapter({
    required this.id,
    required this.title,
    required this.book,
  });

  factory Chapter.fromJson(Map<String, dynamic> json) => Chapter(
    id: json["id"],
    title: json["title"],
    book: Book.fromJson(json["book"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "book": book.toJson(),
  };
}
