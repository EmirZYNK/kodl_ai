// lib/screens/courses_screen.dart

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_code/l10n/strings.dart';
import 'package:learn_code/models/course_model.dart';
import 'package:learn_code/models/featured_item.dart';
import 'package:learn_code/screens/ai_chat_screen.dart';
import 'package:learn_code/theme/app_theme.dart';
import 'package:lottie/lottie.dart';

class CoursesScreen extends StatefulWidget {
  final Function(Course) onCourseSelected;

  const CoursesScreen({super.key, required this.onCourseSelected});

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 9), (Timer timer) {
      if (!mounted) return;
      setState(() {
        _currentPage = (_currentPage + 1) % 3;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    final List<Course> allCourses = [
      Course(
          name: "Python",
          logoPath: "assets/logos/python_logo.png",
          description: l10n.pythonDescription,
          tagline: l10n.taglineBeginnerFriendly),
      Course(
          name: "Java",
          logoPath: "assets/logos/java_logo.png",
          description: l10n.javaDescription,
          tagline: l10n.taglineEnterprisePower),
      Course(
          name: "C++",
          logoPath: "assets/logos/cplusplus_logo.png",
          description: l10n.cplusplusDescription,
          tagline: l10n.taglineHighPerformance),
      Course(
          name: "JavaScript",
          logoPath: "assets/logos/js_logo.png",
          description: l10n.javascriptDescription,
          isAvailable: true), // Hepsini erişilebilir yapıyoruz
      Course(
          name: "C",
          logoPath: "assets/logos/c_logo.png",
          description: l10n.cDescription,
          tagline: l10n.taglineSystemLanguage,
          isAvailable: true),
      Course(
          name: "Kotlin",
          logoPath: "assets/logos/kotlin_logo.png",
          description: l10n.kotlinDescription,
          tagline: l10n.taglineModernAndroid,
          isAvailable: true),
    ];

    // ... Diğer kurs listeleri aynı kalabilir ...
    final Map<String, Course> courseMap = {
      for (var course in allCourses) course.name: course
    };

    final List<Course> backendCourses = [
      courseMap["Python"]!,
      courseMap["Java"]!,
      courseMap["JavaScript"]!,
    ];

    final List<Course> mobileCourses = [
      courseMap["Java"]!,
      courseMap["Kotlin"]!,
    ];

    final List<Course> systemCourses = [
      courseMap["C++"]!,
      courseMap["C"]!,
    ];

    final List<Course> dataScienceCourses = [
      courseMap["Python"]!,
    ];

    final List<FeaturedItem> featuredItems = [
      FeaturedItem(
        title: l10n.featuredPythonTitle,
        subtitle: l10n.featuredPythonSubtitle,
        animationPath: 'assets/animations/python.json',
        buttonText: l10n.startNow,
        onTap: (context) {
          final pythonCourse =
          allCourses.firstWhere((c) => c.name == "Python");
          widget.onCourseSelected(pythonCourse);
        },
      ),
      FeaturedItem(
        title: l10n.featuredAiTitle,
        subtitle: l10n.featuredAiSubtitle,
        animationPath: 'assets/animations/robot.json',
        buttonText: l10n.chatNow,
        onTap: (context) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AIChatScreen()),
          );
        },
      ),
      FeaturedItem(
        title: l10n.featuredJavaTitle,
        subtitle: l10n.featuredJavaSubtitle,
        animationPath: 'assets/animations/java.json',
        buttonText: l10n.startNow,
        onTap: (context) {
          final javaCourse = allCourses.firstWhere((c) => c.name == "Java");
          widget.onCourseSelected(javaCourse);
        },
      ),
    ];

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppTheme.darkPurple2,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: AppTheme.darkPurple,
        appBar: AppBar(
          backgroundColor: AppTheme.darkPurple2,
          elevation: 0,
          automaticallyImplyLeading: false,
          titleSpacing: 16,
          title: Image.asset(
            'assets/logos/solusticon.png', // Uygulama logosu
            height: 50,
          ),
          // Premium butonu kaldırıldı.
        ),
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(height: 16),
            Divider(color: Colors.grey.shade900, thickness: 1.5, height: 1),
            _buildFeaturedCarousel(featuredItems),
            Divider(color: Colors.grey.shade900, thickness: 1.5, height: 1),
            _buildCategoryHeader(l10n.coursesTitle),
            _buildHorizontalCourseList(allCourses),
            const SizedBox(height: 20),
            _buildCategoryHeader(l10n.categoryWebBackend),
            _buildHorizontalCourseList(backendCourses),
            const SizedBox(height: 20),
            _buildCategoryHeader(l10n.categoryMobileAndroid),
            _buildHorizontalCourseList(mobileCourses),
            const SizedBox(height: 20),
            _buildCategoryHeader(l10n.categorySystemPerformance),
            _buildHorizontalCourseList(systemCourses),
            const SizedBox(height: 20),
            _buildCategoryHeader(l10n.categoryDataScienceAI),
            _buildHorizontalCourseList(dataScienceCourses),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // ... ( _buildCategoryHeader, _buildDot, _buildFeaturedCarousel, _buildFeaturedCard gibi diğer build metodları aynı kalabilir)
  Widget _buildCategoryHeader(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: AppTheme.textColor,
        ),
      ),
    );
  }

  Widget _buildHorizontalCourseList(List<Course> courses) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];
          return Container(
            width: 170,
            margin:
            EdgeInsets.only(right: index == courses.length - 1 ? 0 : 16),
            child: _buildCourseCard(course, context),
          );
        },
      ),
    );
  }

  Widget _buildDot(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: 8.0,
      width: _currentPage == index ? 16.0 : 8.0,
      decoration: BoxDecoration(
        color: _currentPage == index
            ? Colors.amber
            : Colors.black.withOpacity(0.4),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  Widget _buildFeaturedCarousel(List<FeaturedItem> featuredItems) {
    final List<Gradient> featuredGradients = [
      const LinearGradient(
        colors: [Color(0xFFF9772D), Color(0xFFFDBF46)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      const LinearGradient(
        colors: [Color(0xFF377DFF), Color(0xFF59C8F6)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      const LinearGradient(
        colors: [Color(0xFFD836F3), Color(0xFF9E49F0)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ];

    return SizedBox(
      height: 330,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 800),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            child: _buildFeaturedCard(
              featuredItems[_currentPage],
              featuredGradients[_currentPage],
              key: ValueKey<int>(_currentPage),
            ),
          ),
          Positioned(
            bottom: 16.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                featuredItems.length,
                    (index) => _buildDot(index),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturedCard(FeaturedItem item, Gradient gradient, {Key? key}) {
    return Container(
      key: key,
      decoration: BoxDecoration(
        gradient: gradient,
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: -20,
            bottom: -20,
            child: Lottie.asset(
              item.animationPath,
              width: 191.25,
              fit: BoxFit.contain,
            ),
          ),
          Positioned.fill(
            child: InkWell(
              onTap: () => item.onTap(context),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              shadows: [
                                Shadow(blurRadius: 10, color: Colors.black54)
                              ],
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            item.subtitle,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white.withOpacity(0.9),
                              height: 1.3,
                              shadows: const [
                                Shadow(blurRadius: 8, color: Colors.black54)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCourseCard(Course course, BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onCourseSelected(course), // Her zaman tıklanabilir
      child: Container(
        decoration: AppTheme.gradientDecoration.copyWith(
          borderRadius: BorderRadius.circular(16),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                course.logoPath,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 54,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          course.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        // İlerleme çubuğu kaldırıldı, çünkü ilerleme takibi yok.
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}