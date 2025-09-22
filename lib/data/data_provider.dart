// lib/data/data_provider.dart

// =============================================================================
// 1. İÇERİK (CONTENT) DOSYALARI İÇİN IMPORT'LAR
// =============================================================================

// --- Türkçe İçerikler ---
import 'package:learn_code/data/content/tr/python_content_tr.dart';
import 'package:learn_code/data/content/tr/java_content_tr.dart';
import 'package:learn_code/data/content/tr/cplusplus_content_tr.dart';
// import 'package:learn_code/data/content/tr/javascript_content_tr.dart';
// import 'package:learn_code/data/content/tr/c_content_tr.dart';
// import 'package:learn_code/data/content/tr/kotlin_content_tr.dart';


// =============================================================================
// 2. YOL HARİTASI (ROADMAP) DOSYALARI İÇİN IMPORT'LAR
// =============================================================================

import 'package:learn_code/data/course_data_tr.dart';
import 'package:learn_code/models/roadmap_model.dart';


class DataProvider {
  static Map<String, dynamic>? getLessonContent(String courseName, String lessonId, String languageCode) {
    Map<String, Map<String, dynamic>>? contentMap;

    // Sadece Türkçe (tr) dil desteği
    if (languageCode == 'tr') {
      switch (courseName) {
        case 'Python':
          contentMap = pythonContentTr;
          break;
        case 'Java':
          contentMap = javaContentTr;
          break;
        case 'C++':
          contentMap = cplusplusContentTr;
          break;
      // case 'JavaScript': contentMap = javascriptContentTr; break;
      // case 'C': contentMap = cContentTr; break;
      // case 'Kotlin': contentMap = kotlinContentTr; break;
      }
    } else {
      // Desteklenmeyen diller için null döndür
      contentMap = null;
    }

    if (contentMap != null && contentMap[lessonId] != null) {
      print("[DEBUG-PROVIDER] Ders: '$lessonId' | Quiz verisi bulundu: ${contentMap[lessonId]!['quiz']}");
    }

    return contentMap != null ? contentMap[lessonId] : null;
  }

  static List<RoadmapSection> getCourseRoadmap(String courseName, String languageCode) {
    // Sadece Türkçe (tr) dilini destekle, diğer tüm durumlar için Türkçe verisini varsayılan yap.
    return courseRoadmapsTr[courseName] ?? [];
  }
}