class Course {
  final String name;
  final String logoPath;
  final String description;
  final int progress; // Bu alan artık kullanılmayacak ama modelde kalabilir.
  final bool isAvailable;
  final String? prerequisite;
  final String? tagline;

  Course({
    required this.name,
    required this.logoPath,
    required this.description,
    this.progress = 0,
    this.isAvailable = true,
    this.prerequisite,
    this.tagline,
  });
}