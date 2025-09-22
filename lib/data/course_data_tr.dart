// lib/data/course_data_tr.dart

import 'package:learn_code/models/roadmap_model.dart';

// Değişken adı 'courseRoadmapsTr' olarak güncellendi ve her derse benzersiz bir 'id' eklendi.
final Map<String, List<RoadmapSection>> courseRoadmapsTr = {
  'Python': [
    RoadmapSection(title: "Giriş", lessons: [
      Lesson(id: "py_what_is_programming", title: "Programlama nedir?", isLocked: false),
      Lesson(id: "py_what_is_python", title: "Python nedir, nerelerde kullanılır?"),
      Lesson(id: "py_setup", title: "Kurulum (Python & VS Code)"),
      Lesson(id: "py_hello_world", title: "'Merhaba Dünya' uygulaması"),
    ]),
    RoadmapSection(title: "Temeller", lessons: [
      Lesson(id: "py_variables_data_types", title: "Değişkenler ve Veri Türleri (int, float, str, bool)"),
      Lesson(id: "py_type_casting", title: "Tip Dönüşümleri"),
      Lesson(id: "py_comments", title: "Yorum Satırları"),
      Lesson(id: "py_user_input", title: "Kullanıcıdan Girdi Alma (input)"),
      Lesson(id: "py_print_function", title: "Print Fonksiyonu ve Çıktı Formatlama"),
      Lesson(id: "py_string_methods", title: "String Metotları ve İşlemleri"),
      Lesson(id: "py_f_strings", title: "f-string ile Modern String Formatlama"),
    ]),
    RoadmapSection(title: "Operatörler", lessons: [
      Lesson(id: "py_arithmetic_operators", title: "Aritmetik Operatörler"),
      Lesson(id: "py_assignment_operators", title: "Atama Operatörleri"),
      Lesson(id: "py_comparison_operators", title: "Karşılaştırma Operatörleri"),
      Lesson(id: "py_logical_operators", title: "Mantıksal Operatörler (and, or, not)"),
    ]),
    RoadmapSection(title: "Koşullar", isPremium: true, lessons: [
      Lesson(id: "py_if_elif_else", title: "if / elif / else Yapısı", isPremium: true),
      Lesson(id: "py_nested_conditions", title: "İç İçe Koşul Blokları", isPremium: true),
    ]),
    RoadmapSection(title: "Döngüler", isPremium: true, lessons: [
      Lesson(id: "py_for_loop", title: "for Döngüsü", isPremium: true),
      Lesson(id: "py_while_loop", title: "while Döngüsü", isPremium: true),
      Lesson(id: "py_break_continue", title: "break ve continue İfadeleri", isPremium: true),
      Lesson(id: "py_range_function", title: "range() Fonksiyonu", isPremium: true),
      Lesson(id: "py_enumerate_zip", title: "enumerate() ve zip() ile Döngüler", isPremium: true),
    ]),
    RoadmapSection(title: "Veri Koleksiyonları", isPremium: true, lessons: [
      Lesson(id: "py_lists", title: "Listeler (Lists) ve Metotları", isPremium: true),
      Lesson(id: "py_tuple_set", title: "Tuple ve Set Veri Tipleri", isPremium: true),
      Lesson(id: "py_dictionary", title: "Sözlükler (Dictionary)", isPremium: true),
      Lesson(id: "py_dictionary_methods", title: "Sözlük Metotları ve Döngüler (.items(), .values())", isPremium: true),
      Lesson(id: "py_list_comprehension", title: "List Comprehension", isPremium: true),
    ]),
    RoadmapSection(title: "Fonksiyonlar", isPremium: true, lessons: [
      Lesson(id: "py_function_definition", title: "Fonksiyon Tanımlama", isPremium: true),
      Lesson(id: "py_parameters_return", title: "Parametreler ve Dönüş Değeri (return)", isPremium: true),
      Lesson(id: "py_args_kwargs", title: "*args ve **kwargs ile Esnek Argümanlar", isPremium: true),
      Lesson(id: "py_scope", title: "Değişken Kapsamı (Scope: Global, Local)", isPremium: true),
      Lesson(id: "py_lambda", title: "Lambda Fonksiyonları", isPremium: true),
      Lesson(id: "py_docstrings", title: "Docstrings (Dökümantasyon Dizgeleri)", isPremium: true),
    ]),
    RoadmapSection(title: "Hata Yönetimi", isPremium: true, lessons: [
      Lesson(id: "py_try_except", title: "try / except Yapısı ile Hataları Yakalama", isPremium: true),
      Lesson(id: "py_finally_else", title: "finally ve else Blokları", isPremium: true),
      Lesson(id: "py_common_errors", title: "Yaygın Hata Türleri ve Anlamları", isPremium: true),
    ]),
    RoadmapSection(title: "Dosya İşlemleri", isPremium: true, lessons: [
      Lesson(id: "py_file_ops", title: "Dosya Açma, Okuma ve Yazma", isPremium: true),
      Lesson(id: "py_with_statement", title: "with Deyimi ile Güvenli Dosya İşlemleri", isPremium: true),
      Lesson(id: "py_json_files", title: "JSON Dosyaları ile Çalışmak", isPremium: true),
    ]),
    RoadmapSection(title: "Modüller ve Paketler", isPremium: true, lessons: [
      Lesson(id: "py_modules_import", title: "Modül Nedir ve Nasıl Kullanılır? (import, from)", isPremium: true),
      Lesson(id: "py_standard_library", title: "Python Standart Kütüphanesi (math, random, datetime)", isPremium: true),
      Lesson(id: "py_virtual_env", title: "Sanal Ortamlar (Virtual Environments)", isPremium: true),
      Lesson(id: "py_pip", title: "pip ile Üçüncü Parti Paket Yönetimi", isPremium: true),
    ]),
  ],

  'JavaScript': [
    RoadmapSection(title: "Giriş", lessons: [
      Lesson(id: "js_what_is_js", title: "JavaScript nedir?", isLocked: false),
      Lesson(id: "js_html_css_js_trio", title: "HTML + CSS + JS Üçlüsü"),
      Lesson(id: "js_setup", title: "Kurulum (VS Code ve Tarayıcı Konsolu)"),
      Lesson(id: "js_hello_world", title: "'Merhaba Dünya' (alert, console.log)"),
    ]),
    RoadmapSection(title: "Temeller", lessons: [
      Lesson(id: "js_variables", title: "Değişkenler (let, const, var)"),
      Lesson(id: "js_data_types", title: "Veri Türleri (Primitive & Object)"),
      Lesson(id: "js_type_coercion", title: "Tip Zorlaması ve Dönüşümleri"),
      Lesson(id: "js_comments", title: "Yorum Satırları"),
      Lesson(id: "js_prompt", title: "prompt ile Kullanıcıdan Girdi Alma"),
      Lesson(id: "js_template_literals", title: "Template Literals (Backtick ``)"),
    ]),
    RoadmapSection(title: "Operatörler", lessons: [
      Lesson(id: "js_arithmetic_assignment", title: "Aritmetik ve Atama Operatörleri"),
      Lesson(id: "js_comparison_operators", title: "Karşılaştırma Operatörleri (== vs ===)"),
      Lesson(id: "js_logical_operators", title: "Mantıksal Operatörler (&&, ||, !)"),
      Lesson(id: "js_ternary_operator", title: "Ternary (Koşul) Operatörü"),
    ]),
    RoadmapSection(title: "Koşullar ve Döngüler", isPremium: true, lessons: [
      Lesson(id: "js_if_else", title: "if / else if / else", isPremium: true),
      Lesson(id: "js_switch_case", title: "switch-case Yapısı", isPremium: true),
      Lesson(id: "js_for_loop", title: "for Döngüsü", isPremium: true),
      Lesson(id: "js_while_do_while", title: "while ve do-while Döngüleri", isPremium: true),
      Lesson(id: "js_break_continue", title: "break ve continue", isPremium: true),
    ]),
    RoadmapSection(title: "Fonksiyonlar", isPremium: true, lessons: [
      Lesson(id: "js_function_definition", title: "Fonksiyon Tanımlama ve Çağırma", isPremium: true),
      Lesson(id: "js_arrow_functions", title: "Arrow Functions (Ok Fonksiyonları)", isPremium: true),
      Lesson(id: "js_parameters_return", title: "Parametreler, Varsayılan Değerler ve Return", isPremium: true),
      Lesson(id: "js_scope", title: "Değişken Kapsamı (Global, Function, Block Scope)", isPremium: true),
    ]),
    RoadmapSection(title: "Diziler (Arrays)", isPremium: true, lessons: [
      Lesson(id: "js_arrays", title: "Dizi Oluşturma ve Elemanlara Erişim", isPremium: true),
      Lesson(id: "js_array_loops", title: "Dizilerde Döngü (for...of, forEach)", isPremium: true),
      Lesson(id: "js_array_methods_basic", title: "Temel Dizi Metotları (push, pop, shift, unshift, slice)", isPremium: true),
      Lesson(id: "js_array_methods_advanced", title: "İleri Seviye Dizi Metotları (map, filter, reduce, find)", isPremium: true),
    ]),
    RoadmapSection(title: "Objeler (Objects)", isPremium: true, lessons: [
      Lesson(id: "js_objects", title: "Obje Oluşturma ve Özelliklere Erişim", isPremium: true),
      Lesson(id: "js_object_methods", title: "Obje Metotları ve 'this' Anahtar Kelimesi", isPremium: true),
      Lesson(id: "js_object_loops", title: "Objelerde Döngü (for...in)", isPremium: true),
      Lesson(id: "js_json", title: "JSON ve `JSON.stringify`, `JSON.parse`", isPremium: true),
    ]),
    RoadmapSection(title: "ES6+ Modern Özellikler", isPremium: true, lessons: [
      Lesson(id: "js_destructuring", title: "Destructuring (Array & Object)", isPremium: true),
      Lesson(id: "js_spread_rest", title: "Spread (...) ve Rest (...) Operatörleri", isPremium: true),
    ]),
    RoadmapSection(title: "DOM (Document Object Model)", isPremium: true, lessons: [
      Lesson(id: "js_dom_intro", title: "DOM Nedir?", isPremium: true),
      Lesson(id: "js_dom_selectors", title: "Element Seçme (querySelector, getElementById vb.)", isPremium: true),
      Lesson(id: "js_dom_manipulation", title: "İçerik Değiştirme (textContent, innerHTML)", isPremium: true),
      Lesson(id: "js_dom_styling", title: "Stil Değiştirme (element.style, classList)", isPremium: true),
      Lesson(id: "js_dom_create_append", title: "Yeni Element Oluşturma ve Ekleme", isPremium: true),
      Lesson(id: "js_dom_events", title: "Olayları Dinleme (addEventListener)", isPremium: true),
      Lesson(id: "js_event_object", title: "Olay Objesi (Event Object) ve `event.target`", isPremium: true),
    ]),
    RoadmapSection(title: "Asenkron JavaScript", isPremium: true, lessons: [
      Lesson(id: "js_async_intro", title: "Senkron vs Asenkron Programlama", isPremium: true),
      Lesson(id: "js_settimeout_setinterval", title: "setTimeout ve setInterval", isPremium: true),
      Lesson(id: "js_promises", title: "Promise Yapısı (.then, .catch, .finally)", isPremium: true),
      Lesson(id: "js_async_await", title: "async/await ile Daha Okunabilir Asenkron Kod", isPremium: true),
      Lesson(id: "js_fetch_api", title: "Fetch API ile Sunucudan Veri Çekme", isPremium: true),
    ]),
    RoadmapSection(title: "Hata Yönetimi", isPremium: true, lessons: [
      Lesson(id: "js_try_catch", title: "Hata Yönetimi (try...catch...finally)", isPremium: true),
      Lesson(id: "js_throw", title: "Kasıtlı Hata Fırlatma (throw)", isPremium: true),
    ]),
    RoadmapSection(title: "Tarayıcı Depolama", isPremium: true, lessons: [
      Lesson(id: "js_local_storage", title: "localStorage ile Veri Saklama", isPremium: true),
      Lesson(id: "js_session_storage", title: "sessionStorage ile Oturum Verisi Saklama", isPremium: true),
    ]),
  ],

  'Java': [
    RoadmapSection(title: "Giriş", lessons: [
      Lesson(id: "java_what_is_java", title: "Java nedir? (JVM, JRE, JDK)", isLocked: false),
      Lesson(id: "java_setup", title: "Kurulum (JDK & IntelliJ/Eclipse)"),
      Lesson(id: "java_hello_world", title: "'Merhaba Dünya' uygulaması"),
      Lesson(id: "java_program_structure", title: "Java Programının Yapısı (class, main metodu)"),
    ]),
    RoadmapSection(title: "Temeller", lessons: [
      Lesson(id: "java_variables_types", title: "Değişkenler ve İlkel Veri Türleri"),
      Lesson(id: "java_type_casting", title: "Tip Dönüşümleri (Casting)"),
      Lesson(id: "java_string_class", title: "String Sınıfı ve Metotları"),
      Lesson(id: "java_println", title: "System.out.println ile Çıktı"),
      Lesson(id: "java_scanner", title: "Scanner Sınıfı ile Kullanıcıdan Girdi Alma"),
    ]),
    RoadmapSection(title: "Operatörler", lessons: [
      Lesson(id: "java_arithmetic_operators", title: "Aritmetik Operatörler"),
      Lesson(id: "java_assignment_operators", title: "Atama Operatörleri"),
      Lesson(id: "java_relational_operators", title: "İlişkisel (Karşılaştırma) Operatörler"),
      Lesson(id: "java_logical_operators", title: "Mantıksal Operatörler"),
    ]),
    RoadmapSection(title: "Koşul Yapıları", isPremium: true, lessons: [
      Lesson(id: "java_if_else", title: "if / else if / else", isPremium: true),
      Lesson(id: "java_switch_case", title: "switch-case Yapısı", isPremium: true),
    ]),
    RoadmapSection(title: "Döngüler", isPremium: true, lessons: [
      Lesson(id: "java_for_loop", title: "for Döngüsü", isPremium: true),
      Lesson(id: "java_while_loops", title: "while ve do-while Döngüleri", isPremium: true),
      Lesson(id: "java_break_continue", title: "break ve continue", isPremium: true),
      Lesson(id: "java_enhanced_for", title: "Enhanced for Döngüsü (for-each)", isPremium: true),
    ]),
    RoadmapSection(title: "Diziler (Arrays)", isPremium: true, lessons: [
      Lesson(id: "java_arrays", title: "Tek Boyutlu Diziler", isPremium: true),
      Lesson(id: "java_multidimensional_arrays", title: "Çok Boyutlu Diziler", isPremium: true),
      Lesson(id: "java_arrays_class", title: "Arrays Sınıfı Yardımcı Metotları", isPremium: true),
    ]),
    RoadmapSection(title: "Metotlar", isPremium: true, lessons: [
      Lesson(id: "java_methods", title: "Metot Tanımlama ve Çağırma", isPremium: true),
      Lesson(id: "java_parameters_return", title: "Parametreler ve `return`", isPremium: true),
      Lesson(id: "java_method_overloading", title: "Metot Overloading (Aşırı Yükleme)", isPremium: true),
      Lesson(id: "java_scope", title: "Değişken Kapsamı (Scope)", isPremium: true),
    ]),
    RoadmapSection(title: "OOP: Giriş", isPremium: true, lessons: [
      Lesson(id: "java_class_object", title: "Sınıf (class) ve Nesne (object)", isPremium: true),
      Lesson(id: "java_constructor", title: "Constructor (Yapıcı Metot)", isPremium: true),
      Lesson(id: "java_getters_setters", title: "Getters ve Setters Metotları", isPremium: true),
      Lesson(id: "java_this_keyword", title: "`this` anahtar kelimesi", isPremium: true),
    ]),
    RoadmapSection(title: "OOP: Temel İlkeler", isPremium: true, lessons: [
      Lesson(id: "java_encapsulation", title: "Encapsulation (Kapsülleme)", isPremium: true),
      Lesson(id: "java_inheritance", title: "Inheritance (Kalıtım) ve `super`", isPremium: true),
      Lesson(id: "java_polymorphism", title: "Polymorphism (Çok Biçimlilik)", isPremium: true),
      Lesson(id: "java_abstraction", title: "Abstraction (Soyutlama): Abstract Class", isPremium: true),
      Lesson(id: "java_interfaces", title: "Interfaces (Arayüzler)", isPremium: true),
    ]),
    RoadmapSection(title: "OOP: İleri Konular", isPremium: true, lessons: [
      Lesson(id: "java_static_keyword", title: "`static` Anahtar Kelimesi (Değişken ve Metotlar)", isPremium: true),
      Lesson(id: "java_final_keyword", title: "`final` Anahtar Kelimesi", isPremium: true),
    ]),
    RoadmapSection(title: "Hata Yönetimi (Exception Handling)", isPremium: true, lessons: [
      Lesson(id: "java_exceptions_intro", title: "Exception Nedir?", isPremium: true),
      Lesson(id: "java_try_catch_finally", title: "`try-catch-finally` Blokları", isPremium: true),
      Lesson(id: "java_checked_unchecked", title: "Checked ve Unchecked Exceptions", isPremium: true),
      Lesson(id: "java_throw_throws", title: "`throw` ve `throws` Anahtar Kelimeleri", isPremium: true),
    ]),
    RoadmapSection(title: "Java Koleksiyonlar Çerçevesi", isPremium: true, lessons: [
      Lesson(id: "java_collections_intro", title: "Koleksiyonlar Nedir?", isPremium: true),
      Lesson(id: "java_list_arraylist", title: "List Arayüzü ve ArrayList", isPremium: true),
      Lesson(id: "java_set_hashset", title: "Set Arayüzü ve HashSet", isPremium: true),
      Lesson(id: "java_map_hashmap", title: "Map Arayüzü ve HashMap", isPremium: true),
    ]),
    RoadmapSection(title: "Modern Java'ya Giriş", isPremium: true, lessons: [
      Lesson(id: "java_lambda_expressions", title: "Lambda İfadeleri", isPremium: true),
      Lesson(id: "java_stream_api", title: "Stream API'ye Giriş", isPremium: true),
    ]),
  ],

  'Kotlin': [
    RoadmapSection(title: "Giriş", lessons: [
      Lesson(id: "kt_what_is_kotlin", title: "Kotlin nedir? (Java ile Birlikte Çalışabilirlik)", isLocked: false),
      Lesson(id: "kt_setup", title: "Kurulum (IntelliJ / Android Studio)"),
      Lesson(id: "kt_hello_kotlin", title: "'Merhaba Kotlin'"),
      Lesson(id: "kt_program_structure", title: "Kotlin Programının Temel Yapısı"),
    ]),
    RoadmapSection(title: "Temeller", lessons: [
      Lesson(id: "kt_variables", title: "Değişkenler (val, var) ve Tip Çıkarımı"),
      Lesson(id: "kt_basic_types", title: "Temel Veri Türleri (Int, String, Boolean, vb.)"),
      Lesson(id: "kt_string_templates", title: "String Şablonları ve Metotları"),
      Lesson(id: "kt_io", title: "println ve readLine ile Girdi/Çıktı"),
    ]),
    RoadmapSection(title: "Operatörler", lessons: [
      Lesson(id: "kt_arithmetic_operators", title: "Aritmetik ve Atama Operatörleri"),
      Lesson(id: "kt_comparison_operators", title: "Karşılaştırma ve Eşitlik Operatörleri"),
      Lesson(id: "kt_logical_operators", title: "Mantıksal Operatörler"),
    ]),
    RoadmapSection(title: "Kontrol Akışı", isPremium: true, lessons: [
      Lesson(id: "kt_if_else", title: "if-else İfadeleri (Expression olarak kullanım)", isPremium: true),
      Lesson(id: "kt_when", title: "when İfadesi (switch'in gücü)", isPremium: true),
      Lesson(id: "kt_for_loop", title: "for Döngüsü", isPremium: true),
      Lesson(id: "kt_while_loop", title: "while ve do-while Döngüleri", isPremium: true),
      Lesson(id: "kt_ranges", title: "Aralıklar (Ranges) ve Döngülerde Kullanımı", isPremium: true),
    ]),
    RoadmapSection(title: "Null Güvenliği", isPremium: true, lessons: [
      Lesson(id: "kt_nullable_types", title: "Nullable Türler (?)", isPremium: true),
      Lesson(id: "kt_safe_calls_elvis", title: "Güvenli Çağrılar (?.) ve Elvis Operatörü (?:)", isPremium: true),
      Lesson(id: "kt_safe_let", title: "`let` ile Güvenli Kod Bloğu", isPremium: true),
      Lesson(id: "kt_not_null_assertion", title: "Not-null İddiası (!!) ve Ne Zaman Kullanılmamalı", isPremium: true),
    ]),
    RoadmapSection(title: "Fonksiyonlar", isPremium: true, lessons: [
      Lesson(id: "kt_functions", title: "Fonksiyon Tanımı ve Çağırma", isPremium: true),
      Lesson(id: "kt_named_default_args", title: "Varsayılan ve İsimli Parametreler", isPremium: true),
      Lesson(id: "kt_single_expression_functions", title: "Tek Satırlık Fonksiyonlar", isPremium: true),
      Lesson(id: "kt_extension_functions", title: "Genişletme Fonksiyonları (Extension Functions)", isPremium: true),
    ]),
    RoadmapSection(title: "Koleksiyonlar", isPremium: true, lessons: [
      Lesson(id: "kt_collections_overview", title: "List, Set ve Map'e Giriş", isPremium: true),
      Lesson(id: "kt_mutable_immutable", title: "Değişmez (Immutable) ve Değişebilir (Mutable) Koleksiyonlar", isPremium: true),
      Lesson(id: "kt_collection_loops", title: "Koleksiyonlar Üzerinde Döngü", isPremium: true),
    ]),
    RoadmapSection(title: "Lambda ve Üst Seviye Fonksiyonlar", isPremium: true, lessons: [
      Lesson(id: "kt_lambda_intro", title: "Lambda İfadelerine Giriş", isPremium: true),
      Lesson(id: "kt_higher_order_functions", title: "Üst Seviye Fonksiyonlar (Higher-Order Functions)", isPremium: true),
      Lesson(id: "kt_collection_functions_filter_map", title: "Koleksiyon Fonksiyonları (filter, map, forEach vb.)", isPremium: true),
    ]),
    RoadmapSection(title: "Nesne Yönelimli Programlama (OOP)", isPremium: true, lessons: [
      Lesson(id: "kt_class_object", title: "Sınıf ve Nesne", isPremium: true),
      Lesson(id: "kt_constructor_init", title: "Constructor ve init Bloğu", isPremium: true),
      Lesson(id: "kt_inheritance", title: "Kalıtım (`open`, `override`)", isPremium: true),
      Lesson(id: "kt_abstract_interface", title: "Abstract Sınıflar ve Interface'ler", isPremium: true),
      Lesson(id: "kt_data_class", title: "`data class` ile Veri Sınıfları", isPremium: true),
      Lesson(id: "kt_object_companion", title: "`object` ve `companion object` (Singleton ve Static)", isPremium: true),
      Lesson(id: "kt_sealed_class", title: "`sealed class` ile Kapalı Hiyerarşiler", isPremium: true),
    ]),
    RoadmapSection(title: "Hata Yönetimi", isPremium: true, lessons: [
      Lesson(id: "kt_exceptions", title: "Hata Yönetimi (try-catch-finally)", isPremium: true),
      Lesson(id: "kt_exception_expression", title: "try-catch'in Expression Olarak Kullanımı", isPremium: true),
    ]),
    RoadmapSection(title: "İleri Konulara Giriş", isPremium: true, lessons: [
      Lesson(id: "kt_generics", title: "Generics (Jenerikler)", isPremium: true),
      Lesson(id: "kt_coroutines_intro", title: "Coroutines ile Asenkron Programlamaya Giriş", isPremium: true),
    ]),
  ],

  'C': [
    RoadmapSection(title: "Giriş", lessons: [
      Lesson(id: "c_what_is_c", title: "C nedir? Tarihçesi ve Kullanım Alanları", isLocked: false),
      Lesson(id: "c_setup", title: "Kurulum (Derleyici ve IDE: MinGW & VS Code)"),
      Lesson(id: "c_hello_world", title: "'Hello, World!', Derleme ve Çalıştırma"),
      Lesson(id: "c_program_structure", title: "Bir C Programının Anatomisi"),
    ]),
    RoadmapSection(title: "Temeller", lessons: [
      Lesson(id: "c_variables_data_types", title: "Değişkenler ve Temel Veri Türleri"),
      Lesson(id: "c_format_specifiers", title: "Format Belirleyiciler (%d, %f, %c, %s)"),
      Lesson(id: "c_printf_scanf", title: "printf ve scanf ile Girdi/Çıktı"),
      Lesson(id: "c_comments", title: "Yorum Satırları"),
      Lesson(id: "c_constants", title: "Sabitler (const ve #define)"),
    ]),
    RoadmapSection(title: "Operatörler", lessons: [
      Lesson(id: "c_arithmetic_assignment", title: "Aritmetik ve Atama Operatörleri"),
      Lesson(id: "c_relational_logical", title: "İlişkisel ve Mantıksal Operatörler"),
      Lesson(id: "c_unary_sizeof", title: "Artırma/Azaltma ve sizeof Operatörleri"),
      Lesson(id: "c_ternary_operator", title: "Ternary Operatörü (? :)"),
      Lesson(id: "c_bitwise_operators", title: "Bitwise (Bitsel) Operatörler"),
    ]),
    RoadmapSection(title: "Kontrol Akışı", isPremium: true, lessons: [
      Lesson(id: "c_if_else", title: "if / else / else if", isPremium: true),
      Lesson(id: "c_switch_case", title: "switch-case Yapısı", isPremium: true),
      Lesson(id: "c_for_loop", title: "for Döngüsü", isPremium: true),
      Lesson(id: "c_while_loops", title: "while ve do-while Döngüleri", isPremium: true),
      Lesson(id: "c_break_continue", title: "break ve continue", isPremium: true),
    ]),
    RoadmapSection(title: "Fonksiyonlar", isPremium: true, lessons: [
      Lesson(id: "c_function_definition", title: "Fonksiyon Tanımlama ve Çağırma", isPremium: true),
      Lesson(id: "c_function_prototypes", title: "Fonksiyon Prototipleri", isPremium: true),
      Lesson(id: "c_return_value", title: "Geri Dönüş Değeri (return)", isPremium: true),
      Lesson(id: "c_scope", title: "Değişken Kapsamı (Global, Local, Static)", isPremium: true),
      Lesson(id: "c_pass_by_value", title: "Değere Göre Geçirme (Pass by Value)", isPremium: true),
      Lesson(id: "c_recursive_functions", title: "Özyinelemeli (Recursive) Fonksiyonlar", isPremium: true),
    ]),
    RoadmapSection(title: "Diziler ve String'ler", isPremium: true, lessons: [
      Lesson(id: "c_arrays", title: "Tek Boyutlu Diziler", isPremium: true),
      Lesson(id: "c_multidimensional_arrays", title: "Çok Boyutlu Diziler", isPremium: true),
      Lesson(id: "c_arrays_and_functions", title: "Fonksiyonlara Dizi Göndermek", isPremium: true),
      Lesson(id: "c_strings", title: "Karakter Dizileri (String) ve Null Karakteri", isPremium: true),
      Lesson(id: "c_string_library", title: "String Kütüphanesi Fonksiyonları (string.h)", isPremium: true),
    ]),
    RoadmapSection(title: "Pointer'lar (İşaretçiler)", isPremium: true, lessons: [
      Lesson(id: "c_pointers_intro", title: "Pointer Nedir? Adres (&) ve Değer (*) Operatörleri", isPremium: true),
      Lesson(id: "c_null_pointer", title: "NULL Pointer", isPremium: true),
      Lesson(id: "c_pointer_arithmetic", title: "Pointer Aritmetiği", isPremium: true),
      Lesson(id: "c_pointers_and_arrays", title: "Pointerlar ve Diziler Arasındaki İlişki", isPremium: true),
      Lesson(id: "c_pass_by_reference", title: "Referansa Göre Geçirme (Pointer ile)", isPremium: true),
      Lesson(id: "c_pointers_to_functions", title: "Fonksiyon İşaretçileri", isPremium: true),
    ]),
    RoadmapSection(title: "Kullanıcı Tanımlı Veri Tipleri", isPremium: true, lessons: [
      Lesson(id: "c_structs", title: "Yapılar (struct)", isPremium: true),
      Lesson(id: "c_structs_and_pointers", title: "Pointer ile Yapılara Erişim (-> operatörü)", isPremium: true),
      Lesson(id: "c_typedef", title: "`typedef` ile Tiplere Yeni İsim Verme", isPremium: true),
      Lesson(id: "c_enums", title: "Sıralamalar (enum)", isPremium: true),
      Lesson(id: "c_unions", title: "Birlikler (union)", isPremium: true),
    ]),
    RoadmapSection(title: "Dinamik Bellek Yönetimi", isPremium: true, lessons: [
      Lesson(id: "c_dynamic_memory_intro", title: "Stack ve Heap Bellek", isPremium: true),
      Lesson(id: "c_malloc_free", title: "`malloc` ve `free` ile Bellek Ayırma", isPremium: true),
      Lesson(id: "c_calloc_realloc", title: "`calloc` ve `realloc`", isPremium: true),
    ]),
    RoadmapSection(title: "Dosya İşlemleri", isPremium: true, lessons: [
      Lesson(id: "c_file_io_intro", title: "Dosya İşlemlerine Giriş (FILE*)", isPremium: true),
      Lesson(id: "c_fopen_fclose", title: "Dosya Açma (`fopen`) ve Kapatma (`fclose`)", isPremium: true),
      Lesson(id: "c_fprintf_fscanf", title: "Formatlı Dosya Okuma/Yazma", isPremium: true),
      Lesson(id: "c_fgets_fputs", title: "Satır Bazlı Dosya İşlemleri", isPremium: true),
    ]),
    RoadmapSection(title: "Önişlemci Direktifleri", isPremium: true, lessons: [
      Lesson(id: "c_preprocessor_intro", title: "Önişlemci Nedir?", isPremium: true),
      Lesson(id: "c_include_define", title: "`#include` ve `#define`", isPremium: true),
      Lesson(id: "c_conditional_compilation", title: "Koşullu Derleme (#ifdef, #ifndef, #if)", isPremium: true),
    ]),
  ],

  'C++': [
    RoadmapSection(title: "Giriş", lessons: [
      Lesson(id: "cpp_what_is_cpp", title: "C++ nedir? C ile Farkları", isLocked: false),
      Lesson(id: "cpp_setup", title: "Kurulum (Derleyici ve IDE)", isLocked: false),
      Lesson(id: "cpp_hello_world", title: "'Hello, World!' (iostream, cout)"),
      Lesson(id: "cpp_namespace", title: "Namespace Kavramı ve `std`"),
    ]),
    RoadmapSection(title: "Temeller ve Operatörler", lessons: [
      Lesson(id: "cpp_variables_types", title: "Değişkenler ve Veri Türleri"),
      Lesson(id: "cpp_cin_cout", title: "cin ve cout ile Girdi/Çıktı Akışları"),
      Lesson(id: "cpp_operators", title: "Aritmetik, Atama ve Mantıksal Operatörler"),
      Lesson(id: "cpp_references_pointers", title: "Referanslar (&) ve Pointerlar (*) Karşılaştırması"),
      Lesson(id: "cpp_const_auto", title: "`const` ve `auto` Anahtar Kelimeleri"),
    ]),
    RoadmapSection(title: "Kontrol Akışı", lessons: [
      Lesson(id: "cpp_if_else_switch", title: "if / else, switch-case Yapıları"),
      Lesson(id: "cpp_loops", title: "for ve while Döngüleri"),
      Lesson(id: "cpp_range_based_for", title: "Aralık Tabanlı for Döngüsü (Range-based for)"),
    ]),
    RoadmapSection(title: "Fonksiyonlar", isPremium: true, lessons: [
      Lesson(id: "cpp_functions", title: "Fonksiyon Tanımlama ve Çağırma", isPremium: true),
      Lesson(id: "cpp_pass_by_value_reference", title: "Değer ve Referans ile Parametre Geçirme", isPremium: true),
      Lesson(id: "cpp_function_overloading", title: "Fonksiyon Aşırı Yükleme (Overloading)", isPremium: true),
      Lesson(id: "cpp_default_arguments", title: "Varsayılan Argümanlar", isPremium: true),
    ]),
    RoadmapSection(title: "Veri Yapılarına Giriş", isPremium: true, lessons: [
      Lesson(id: "cpp_cstyle_arrays", title: "C-Stili Diziler ve Sınırları", isPremium: true),
      Lesson(id: "cpp_string_class", title: "std::string Sınıfı ve Metotları", isPremium: true),
      Lesson(id: "cpp_vector_intro", title: "std::vector Konteynerine Giriş", isPremium: true),
    ]),
    RoadmapSection(title: "OOP: Sınıfların Temelleri", isPremium: true, lessons: [
      Lesson(id: "cpp_class_object", title: "Sınıf (class) ve Nesne (object)", isPremium: true),
      Lesson(id: "cpp_access_specifiers", title: "Erişim Belirleyiciler (public, private, protected)", isPremium: true),
      Lesson(id: "cpp_constructors_destructor", title: "Constructor (Yapıcı) ve Destructor (Yıkıcı)", isPremium: true),
      Lesson(id: "cpp_initializer_list", title: "Başlatıcı Listeleri (Initializer Lists)", isPremium: true),
      Lesson(id: "cpp_this_pointer", title: "`this` İşaretçisi", isPremium: true),
      Lesson(id: "cpp_static_members", title: "Static Üyeler ve Metotlar", isPremium: true),
    ]),
    RoadmapSection(title: "OOP: Kalıtım ve Polimorfizm", isPremium: true, lessons: [
      Lesson(id: "cpp_inheritance", title: "Kalıtım (Inheritance)", isPremium: true),
      Lesson(id: "cpp_polymorphism_virtual", title: "Çok Biçimlilik (Polymorphism) ve Sanal Fonksiyonlar", isPremium: true),
      Lesson(id: "cpp_abstract_classes_interfaces", title: "Soyut Sınıflar ve Arayüzler", isPremium: true),
      Lesson(id: "cpp_operator_overloading", title: "Operatör Aşırı Yükleme", isPremium: true),
    ]),
    RoadmapSection(title: "STL (Standart Şablon Kütüphanesi)", isPremium: true, lessons: [
      Lesson(id: "cpp_stl_intro", title: "STL Nedir? (Konteyner, Yineleyici, Algoritma)", isPremium: true),
      Lesson(id: "cpp_iterators", title: "Yineleyiciler (Iterators) ile Gezinme", isPremium: true),
      Lesson(id: "cpp_stl_containers", title: "Sıralı Konteynerler (vector, deque, list)", isPremium: true),
      Lesson(id: "cpp_stl_associative", title: "İlişkisel Konteynerler (map, set)", isPremium: true),
      Lesson(id: "cpp_stl_algorithms", title: "STL Algoritmalarına Giriş (sort, find)", isPremium: true),
    ]),
    RoadmapSection(title: "Hata Yönetimi ve Şablonlar", isPremium: true, lessons: [
      Lesson(id: "cpp_exception_handling", title: "Hata Yönetimi (try, catch, throw)", isPremium: true),
      Lesson(id: "cpp_function_templates", title: "Fonksiyon Şablonları (Function Templates)", isPremium: true),
      Lesson(id: "cpp_class_templates", title: "Sınıf Şablonları (Class Templates)", isPremium: true),
    ]),
    RoadmapSection(title: "Modern C++ Özellikleri", isPremium: true, lessons: [
      Lesson(id: "cpp_smart_pointers", title: "Akıllı İşaretçiler (unique_ptr, shared_ptr)", isPremium: true),
      Lesson(id: "cpp_move_semantics", title: "Taşıma Semantiği (Move Semantics) ve rvalue Referansları", isPremium: true),
      Lesson(id: "cpp_lambda_expressions", title: "Lambda İfadeleri", isPremium: true),
    ]),
    RoadmapSection(title: "Dosya İşlemleri", isPremium: true, lessons: [
      Lesson(id: "cpp_fstream", title: "Dosya Akışları (fstream)", isPremium: true),
      Lesson(id: "cpp_file_read_write", title: "Dosyaya Yazma ve Dosyadan Okuma", isPremium: true),
    ]),
  ],
};