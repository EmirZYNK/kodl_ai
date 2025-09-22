class Lesson {
  final String id;
  final String title;
  bool isCompleted; // Artık kullanılmayacak.
  final bool isLocked; // Artık kullanılmayacak.
  final bool isPremium; // Artık kullanılmayacak.
  final String duration;
  final int questionCount;
  Lesson({
    required this.id,
    required this.title,
    this.isCompleted = false,
    this.isLocked = true,
    this.isPremium = false,
    this.duration = "5 min",
    this.questionCount = 3,
  });
}
class RoadmapSection {
  final String title;
  final List<Lesson> lessons;
  final bool isPremium; // Artık kullanılmayacak.
  RoadmapSection({
    required this.title,
    required this.lessons,
    this.isPremium = false,
  });
}