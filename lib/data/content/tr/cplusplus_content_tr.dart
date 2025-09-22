import 'package:learn_code/models/quiz_models.dart';

final Map<String, Map<String, dynamic>> cplusplusContentTr = {
  // =======================================================================
  // BÖLÜM 1: GİRİŞ
  // =======================================================================

  "cpp_what_is_cpp": {
    "sub_lessons": [
      {
        "title": "C++ Nedir? C ile Farkları",
        "parts": [
          {"text": "C++ dünyasına hoş geldin! Bu yolculukta güçlü ve hızlı uygulamalar yapmayı öğreneceksin."},
          {"text": "C++, C dilinin bir uzantısı olarak geliştirilmiş, ona Nesne Yönelimli Programlama (OOP) özellikleri eklenmiş çok güçlü bir dildir."},
          {"text": "Oyun motorları, yüksek performanslı bilimsel hesaplamalar, işletim sistemleri gibi hızın kritik olduğu alanlarda sıkça kullanılır."},
          {"text": "C dilinden en temel farkı, verileri ve bu veriler üzerinde işlem yapan fonksiyonları 'sınıflar' (classes) içinde bir araya getirerek daha düzenli ve yönetilebilir kod yazmamızı sağlamasıdır."},
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "C++'ın C diline eklediği en temel ve en önemli özellik nedir?",
            options: ["Daha hızlı derlenmesi", "Nesne Yönelimli Programlama (OOP)", "Daha basit yazım kuralları"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "C++, ___ dilinin bir uzantısı olarak kabul edilir.",
            codeTemplate: "C++, ___ dilinin bir uzantısı olarak kabul edilir.",
            correctAnswers: ["C"],
            options: ["Java", "Python", "C"],
          ),
          CodeCompletionQuestion(
            questionText: "C++, verileri ve fonksiyonları ___ adı verilen yapılar içinde birleştirir.",
            codeTemplate: "C++, verileri ve fonksiyonları ___ adı verilen yapılar içinde birleştirir.",
            correctAnswers: ["sınıflar"],
            options: ["dosyalar", "sınıflar", "değişkenler"],
          ),
          CodeCompletionQuestion(
            questionText: "C++, özellikle ___ gerektiren alanlarda, örneğin oyun motorlarında, tercih edilir.",
            codeTemplate: "C++, özellikle ___ gerektiren alanlarda, örneğin oyun motorlarında, tercih edilir.",
            correctAnswers: ["yüksek performans"],
            options: ["basit arayüz", "yüksek performans", "küçük dosya boyutu"],
          ),
          CodeCompletionQuestion(
            questionText: "Nesne Yönelimli Programlama'nın kısaltması ___'dir.",
            codeTemplate: "Nesne Yönelimli Programlama'nın kısaltması ___'dir.",
            correctAnswers: ["OOP"],
            options: ["NYP", "OOP", "C++"],
          ),
        ]
      }
    ]
  },

  "cpp_setup": {
    "sub_lessons": [
      {
        "title": "Kurulum (Derleyici ve IDE)",
        "parts": [
          {"text": "Kod yazmaya başlamadan önce iki temel araca ihtiyacımız var: Bir Derleyici ve bir IDE."},
          {"text": "Derleyici (Compiler), yazdığımız C++ kodunu bilgisayarın anlayacağı makine koduna çeviren programdır. Windows için MinGW (g++), macOS/Linux için Clang veya GCC popüler seçeneklerdir."},
          {"text": "IDE (Integrated Development Environment - Bütünleşik Geliştirme Ortamı), kod yazmamızı, derlememizi ve hataları ayıklamamızı kolaylaştıran gelişmiş bir metin editörüdür. VS Code veya Visual Studio gibi araçları kullanabiliriz."},
          {"text": "Kısacası, IDE'de kodumuzu yazarız, derleyici ise bu kodu çalıştırılabilir bir programa dönüştürür."},
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Yazdığımız C++ kodunu makine diline çeviren araca ne denir?",
            options: ["IDE", "İşletim Sistemi", "Derleyici (Compiler)"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Kodlarımızı daha verimli yazmamızı sağlayan editörlere ___ denir.",
            codeTemplate: "Kodlarımızı daha verimli yazmamızı sağlayan editörlere ___ denir.",
            correctAnswers: ["IDE"],
            options: ["Derleyici", "IDE", "Not Defteri"],
          ),
          CodeCompletionQuestion(
            questionText: "Windows'ta popüler bir C++ derleyicisi olan g++, ___ paketi ile birlikte gelir.",
            codeTemplate: "Windows'ta popüler bir C++ derleyicisi olan g++, ___ paketi ile birlikte gelir.",
            correctAnswers: ["MinGW"],
            options: ["Visual Studio", "MinGW", "VS Code"],
          ),
          CodeCompletionQuestion(
            questionText: "Kodumuzu bir ___ içinde yazarız ve bir ___ ile programa dönüştürürüz.",
            codeTemplate: "Kodumuzu bir ___ içinde yazarız ve bir ___ ile programa dönüştürürüz.",
            correctAnswers: ["IDE", "derleyici"],
            options: ["derleyici", "IDE", "tarayıcı", "konsol"],
          ),
          CodeCompletionQuestion(
            questionText: "VS Code, Microsoft tarafından geliştirilen popüler bir ___'dir.",
            codeTemplate: "VS Code, Microsoft tarafından geliştirilen popüler bir ___'dir.",
            correctAnswers: ["IDE"],
            options: ["derleyici", "işletim sistemi", "IDE"],
          ),
        ]
      }
    ]
  },

  "cpp_hello_world": {
    "sub_lessons": [
      {
        "title": "'Hello, World!' (iostream, cout)",
        "parts": [
          {"text": "İşte ilk C++ programımızı yazma zamanı!"},
          {"text": "Ekrana bir şeyler yazdırmak için `#include <iostream>` kütüphanesini programımıza dahil etmeliyiz."},
          {"text": "Her C++ programı, `int main() { ... }` fonksiyonu ile başlar. Programın ana giriş noktası burasıdır."},
          {
            "text": "`std::cout` nesnesini ve `<<` operatörünü kullanarak ekrana 'Hello, World!' yazdıracağız.",
            "code": "#include <iostream>\n\nint main() {\n  std::cout << \"Hello, World!\";\n  return 0;\n}",
            "code_explanation": "`#include <iostream>` C++'a girdi-çıktı özelliklerini ekler. `main` fonksiyonu programın çalışacağı yerdir. `std::cout` konsola çıktı göndermemizi sağlar ve `return 0;` programın başarıyla bittiğini belirtir."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "C++'da konsola çıktı yazdırmak için hangi kütüphane dahil edilmelidir?",
            options: ["<string>", "<math>", "<iostream>"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Ekrana çıktı vermek için kullanılan nesnenin tam adı ___'dur.",
            codeTemplate: "___ << \"Test\";",
            correctAnswers: ["std::cout"],
            options: ["std::cout", "cout", "std::cin"],
          ),
          CodeCompletionQuestion(
            questionText: "Her C++ programının çalışmaya başladığı ana fonksiyon ___ fonksiyonudur.",
            codeTemplate: "int ___() { return 0; }",
            correctAnswers: ["main"],
            options: ["main", "start", "program"],
          ),
          CodeCompletionQuestion(
            questionText: "Kütüphaneleri programa dahil etmek için ___ direktifi kullanılır.",
            codeTemplate: "___ <iostream>",
            correctAnswers: ["#include"],
            options: ["#include", "import", "using"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir C++ programının başarıyla bittiğini belirtmek için genellikle `main` fonksiyonundan `___` değeri döndürülür.",
            codeTemplate: "return ___;",
            correctAnswers: ["0"],
            options: ["0", "1", "-1"],
          ),
        ]
      }
    ]
  },

  "cpp_namespace": {
    "sub_lessons": [
      {
        "title": "Namespace Kavramı ve 'std'",
        "parts": [
          {"text": "Programlar büyüdükçe, farklı kütüphanelerde aynı isme sahip fonksiyonlar olabilir. Bu isim çakışmalarını önlemek için 'namespace' (isim alanı) kullanılır."},
          {"text": "`cout`, `cin`, `string` gibi standart C++ kütüphanesi elemanları `std` (standard) isim alanı içindedir."},
          {"text": "Bu elemanları kullanmak için ya başına `std::` ekleriz (`std::cout`) ya da programın başına `using namespace std;` yazarız."},
          {
            "text": "`using namespace std;` kullanımı, özellikle büyük projelerde isim çakışmalarına yol açabileceğinden genellikle önerilmez. `std::` kullanmak daha güvenlidir.",
            "code": "#include <iostream>\n\n// Bu satır sayesinde artık std:: yazmamıza gerek kalmaz\nusing namespace std;\n\nint main() {\n  cout << \"Artık daha kısa!\";\n  return 0;\n}",
            "code_explanation": "`using namespace std;` direktifi sayesinde, `cout`'u `std::cout` yerine doğrudan `cout` olarak kullanabildik."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Namespace'lerin temel amacı nedir?",
            options: ["Kodu yavaşlatmak", "İsim çakışmalarını önlemek", "Programı renklendirmek"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "`cout`, `cin` gibi standart kütüphane elemanları ___ isim alanı (namespace) içindedir.",
            codeTemplate: "`cout` ve `cin`, ___ isim alanı içindedir.",
            correctAnswers: ["std"],
            options: ["std", "global", "cpp"],
          ),
          CodeCompletionQuestion(
            questionText: "Her seferinde `std::` yazmaktan kaçınmak için ___ ___ `std;` komutu kullanılır.",
            codeTemplate: "___ ___ std;",
            correctAnswers: ["using", "namespace"],
            options: ["using", "namespace", "import", "from"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir isim alanındaki elemana erişmek için `::` operatörüne ___ operatörü denir.",
            codeTemplate: "Bu operatöre (::) ___ operatörü denir.",
            correctAnswers: ["kapsam çözümleme"],
            options: ["erişim", "kapsam çözümleme", "nokta"],
          ),
          CodeCompletionQuestion(
            questionText: "Daha güvenli kod için `using namespace std;` yerine her elemanın başına ___ eklemek tercih edilir.",
            codeTemplate: "Daha güvenli kod için ___cout; şeklinde yazmak daha iyidir.",
            correctAnswers: ["std::"],
            options: ["std::", "ns::", "std->"],
          ),
        ]
      }
    ]
  },

  // =======================================================================
  // BÖLÜM 2: TEMELLER VE OPERATÖRLER
  // =======================================================================

  "cpp_variables_types": {
    "sub_lessons": [
      {
        "title": "Değişkenler ve Veri Türleri",
        "parts": [
          {"text": "Değişkenler, verileri saklamak için kullandığımız isimlendirilmiş bellek alanlarıdır."},
          {"text": "C++ statik tipli bir dildir, yani bir değişken oluştururken onun tipini belirtmek zorundayız."},
          {"text": "Temel veri türleri şunlardır: `int` (tam sayılar), `double` veya `float` (ondalıklı sayılar), `char` (tek karakterler), `bool` (doğru/yanlış - true/false) ve `std::string` (metinler)."},
          {
            "text": "Birkaç değişken tanımlayalım ve onlara değer atayalım.",
            "code": "#include <iostream>\n#include <string>\n\nint main() {\n  int yas = 25;\n  double boy = 1.82;\n  char bas_harf = 'A';\n  bool ogrenci_mi = true;\n  std::string isim = \"Ahmet\";\n\n  return 0;\n}",
            "code_explanation": "Her değişken için önce türünü (`int`, `double` vb.) belirttik, sonra bir isim verdik ve `=` operatörü ile değerini atadık."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "10.5 gibi ondalıklı bir sayıyı saklamak için en uygun veri türü hangisidir?",
            options: ["int", "char", "double"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Tam sayıları saklamak için ___ veri türü kullanılır.",
            codeTemplate: "___ sayi = 100;",
            correctAnswers: ["int"],
            options: ["string", "char", "int"],
          ),
          CodeCompletionQuestion(
            questionText: "Metinleri saklamak için C++ standart kütüphanesindeki `std::___` sınıfı kullanılır.",
            codeTemplate: "std::___ ad = \"Mehmet\";",
            correctAnswers: ["string"],
            options: ["string", "text", "char_array"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir koşulun doğru (`true`) veya yanlış (`false`) olduğunu tutan veri türü ___'dur.",
            codeTemplate: "___ devam_edilsin = true;",
            correctAnswers: ["bool"],
            options: ["int", "char", "bool"],
          ),
          CodeCompletionQuestion(
            questionText: "Tek bir karakteri saklamak için `char` kullanılır ve değer ___ tırnak içine yazılır.",
            codeTemplate: "char cinsiyet = ___'E'___;",
            correctAnswers: ["'"],
            options: ["\"", "'", "`"],
          ),
        ]
      }
    ]
  },

  "cpp_cin_cout": {
    "sub_lessons": [
      {
        "title": "cin ve cout ile Girdi/Çıktı Akışları",
        "parts": [
          {"text": "`cout` (console output) ekrana veri yazdırmak için kullandığımız bir 'çıkış akışıdır'."},
          {"text": "`cin` (console input) ise kullanıcıdan veri almak için kullandığımız bir 'giriş akışıdır'."},
          {"text": "`cout` ile `<<` (insertion - ekleme) operatörünü, `cin` ile `>>` (extraction - çıkarma) operatörünü kullanırız."},
          {
            "text": "Kullanıcıdan yaşını alıp ekrana yazdıran bir program yapalım.",
            "code": "#include <iostream>\n\nint main() {\n  int yas;\n  std::cout << \"Lutfen yasinizi girin: \";\n  std::cin >> yas;\n  std::cout << \"Siz \" << yas << \" yasindasiniz.\" << std::endl;\n\n  return 0;\n}",
            "code_explanation": "`std::cin >> yas;` satırı, kullanıcının klavyeden girdiği değeri okur ve `yas` değişkeninin içine atar. `std::endl` ise imleci bir alt satıra geçirir."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Kullanıcıdan klavye ile veri almak için hangi nesne kullanılır?",
            options: ["cout", "cin", "main"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "`cin` nesnesi ile birlikte ___ operatörü kullanılır.",
            codeTemplate: "std::cin ___ degisken;",
            correctAnswers: [">>"],
            options: ["<<", ">>", "->"],
          ),
          CodeCompletionQuestion(
            questionText: "Kullanıcıdan adını alıp `isim` değişkenine atayan kodu tamamlayın.",
            codeTemplate: "std::string isim;\nstd::cout << \"Adiniz: \";\nstd::cin >> ___ ;",
            correctAnswers: ["isim"],
            options: ["isim", "&isim", "*isim"],
          ),
          CodeCompletionQuestion(
            questionText: "İki sayıyı kullanıcıdan alıp toplamlarını ekrana yazdıran kodu tamamlayın.",
            codeTemplate: "int a, b;\nstd::cin >> a ___ b;\nstd::cout << a + b;",
            correctAnswers: [">>"],
            options: [">>", "<<", "+"],
          ),
          CodeCompletionQuestion(
            questionText: "Çıktı sonunda imleci bir alt satıra geçiren manipülatör `std::___`'dır.",
            codeTemplate: "std::cout << \"Merhaba\" << std::___;",
            correctAnswers: ["endl"],
            options: ["endl", "newline", "nl"],
          ),
        ]
      }
    ]
  },

  "cpp_operators": {
    "sub_lessons": [
      {
        "title": "Aritmetik, Atama ve Mantıksal Operatörler",
        "parts": [
          {"text": "Aritmetik Operatörler: Matematiksel hesaplamalar için kullanılır: `+`, `-`, `*`, `/` ve `%` (mod alma - bölmeden kalan)."},
          {"text": "Atama Operatörleri: Bir değişkene değer atamak veya değerini güncellemek için kullanılır: `=`, `+=`, `-=`, `*=`, `/=`."},
          {"text": "Mantıksal Operatörler: Koşulları birleştirmek için kullanılır: `&&` (VE), `||` (VEYA), `!` (DEĞİL)."},
          {
            "text": "Bu operatörleri bir arada kullanan bir örnek görelim.",
            "code": "int a = 10, b = 4;\nint kalan = a % b; // 10'un 4'e bölümünden kalan 2'dir.\n\nint x = 5;\nx += 3; // x = x + 3 demek, x artık 8 olur.\n\nbool sonuc = (a > 5 && b < 5); // (true VE true) -> sonuç true olur.",
            "code_explanation": "Operatörler, programlarımızın hesaplama yapmasını ve karar vermesini sağlar."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`15 % 4` işleminin sonucu nedir?",
            options: ["3.75", "4", "3"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Bir sayının 2'ye bölümünden kalanı 0 ise o sayı çifttir. Bu kontrolü yapan kodu tamamlayın.",
            codeTemplate: "if (sayi ___ 2 == 0)",
            correctAnswers: ["%"],
            options: ["/", "%", "*"],
          ),
          CodeCompletionQuestion(
            questionText: "`puan` değişkeninin değerini 10 azaltan kısa atama operatörünü yazın.",
            codeTemplate: "puan ___ 10;",
            correctAnswers: ["-="],
            options: ["-=", "= -", "=-"],
          ),
          CodeCompletionQuestion(
            questionText: "Yaş 18'den büyük VEYA yanında ebeveyni varsa (`ebeveyn_var_mi` true ise) giriş izni veren kodu tamamlayın.",
            codeTemplate: "if (yas > 18 ___ ebeveyn_var_mi)",
            correctAnswers: ["||"],
            options: ["&&", "||", "!"],
          ),
          CodeCompletionQuestion(
            questionText: "Girişin `!` (DEĞİL) operatörü ile tersini alarak `giris_yapildi` false ise koşulun doğru olmasını sağlayın.",
            codeTemplate: "if ( ___ giris_yapildi )",
            correctAnswers: ["!"],
            options: ["!", "not", "&"],
          ),
        ]
      }
    ]
  },

  "cpp_references_pointers": {
    "sub_lessons": [
      {
        "title": "Referanslar (&) ve Pointerlar (*) Karşılaştırması",
        "parts": [
          {"text": "Pointer (İşaretçi): Bir değişkenin bellekteki adresini tutan özel bir değişkendir. `*` ile tanımlanır, `&` ile bir değişkenin adresi alınır."},
          {"text": "Referans: Var olan bir değişken için takma bir isim (alias) gibidir. Tanımlandığı anda bir değişkene bağlanmak zorundadır ve sonradan başka bir şeyi gösteremez."},
          {"text": "Pointer'lar `nullptr` (boş) olabilir ve gösterdiği adres değiştirilebilir. Referanslar ise asla boş olamaz ve her zaman aynı değişkeni işaret eder."},
          {
            "text": "Aralarındaki temel farkı görelim.",
            "code": "int sayi = 10;\n\n// Pointer\nint* ptr = &sayi;\n*ptr = 20; // sayi değişkeninin değeri 20 oldu.\n\n// Referans\nint& ref = sayi;\nref = 30; // sayi değişkeninin değeri 30 oldu.",
            "code_explanation": "Her ikisi de `sayi` değişkenini değiştirmek için kullanılabilir, ancak referanslar genellikle daha güvenli ve kullanımı daha kolaydır. Pointer'lar daha esnektir."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Hangisi tanımlandıktan sonra gösterdiği değişkeni DEĞİŞTİREMEZ?",
            options: ["Pointer", "Referans", "int"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir değişkenin bellek adresini almak için ___ operatörü kullanılır.",
            codeTemplate: "int* p = ___degisken;",
            correctAnswers: ["&"],
            options: ["&", "*", "->"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir pointer'ın gösterdiği adresteki değere erişmek için ___ operatörü kullanılır.",
            codeTemplate: "cout << ___p;",
            correctAnswers: ["*"],
            options: ["&", "*", "ptr"],
          ),
          CodeCompletionQuestion(
            questionText: "`orijinal` değişkeni için `takma_ad` isminde bir referans oluşturan kodu tamamlayın.",
            codeTemplate: "int orijinal = 5;\nint___ takma_ad = orijinal;",
            correctAnswers: ["&"],
            options: ["&", "*", "\$"],
          ),
          CodeCompletionQuestion(
            questionText: "Hiçbir yeri göstermeyen bir pointer oluşturmak için ona ___ değeri atanır.",
            codeTemplate: "int* bos_gosterici = ___;",
            correctAnswers: ["nullptr"],
            options: ["nullptr", "NULL", "0"],
          ),
        ]
      }
    ]
  },

  "cpp_const_auto": {
    "sub_lessons": [
      {
        "title": "'const' ve 'auto' Anahtar Kelimeleri",
        "parts": [
          {"text": "`const` (constant - sabit), bir değişkenin değerinin tanımlandıktan sonra değiştirilemeyeceğini belirtir. Bu, programda yanlışlıkla değiştirilmemesi gereken değerler (pi sayısı gibi) için kullanılır."},
          {"text": "`auto`, derleyicinin bir değişkenin türünü, atanan değere bakarak otomatik olarak belirlemesini sağlar. Kodu kısaltır ve okunabilirliği artırabilir."},
          {
            "text": "Bu iki modern C++ anahtar kelimesini inceleyelim.",
            "code": "#include <iostream>\n\nint main() {\n  const double PI = 3.14159;\n  // PI = 3; // Bu satır HATA verir, çünkü PI sabittir.\n\n  auto sayi = 42; // sayi'nin türü int olarak belirlenir.\n  auto isim = \"C++\"; // isim'in türü const char* olarak belirlenir.\n\n  std::cout << \"PI degeri: \" << PI << std::endl;\n  return 0;\n}",
            "code_explanation": "`const` ile `PI` sayısını koruma altına aldık. `auto` ile de `sayi` ve `isim` değişkenlerinin türünü belirtmemize gerek kalmadı, derleyici bizim için bu işi yaptı."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Derleyicinin bir değişkenin türünü otomatik olarak bulmasını sağlayan anahtar kelime hangisidir?",
            options: ["const", "int", "auto"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Değeri program boyunca değişmeyecek bir sabit oluşturmak için ___ anahtar kelimesi kullanılır.",
            codeTemplate: "___ int MAX_KULLANICI = 100;",
            correctAnswers: ["const"],
            options: ["const", "static", "auto"],
          ),
          CodeCompletionQuestion(
            questionText: "`auto` kullanarak `sonuc` değişkeninin türünün `double` olmasını sağlayın.",
            codeTemplate: "___ sonuc = 5.0 * 2.5;",
            correctAnswers: ["auto"],
            options: ["int", "double", "auto"],
          ),
          CodeCompletionQuestion(
            questionText: "Sabit (const) bir değişkene ilk değer ataması ___'dur.",
            codeTemplate: "// Sabit bir değişkene ilk değer ataması ___'dur.",
            correctAnswers: ["zorunlu"],
            options: ["isteğe bağlı", "zorunlu", "yasak"],
          ),
          CodeCompletionQuestion(
            questionText: "`auto` ile tanımlanan bir referans oluşturmak için kodu tamamlayın.",
            codeTemplate: "int x = 10;\nauto___ ref_x = x;",
            correctAnswers: ["&"],
            options: ["&", "*", "ref"],
          ),
        ]
      }
    ]
  },

  // =======================================================================
  // BÖLÜM 3: KONTROL AKIŞI
  // =======================================================================

  "cpp_if_else_switch": {
    "sub_lessons": [
      {
        "title": "if / else, switch-case Yapıları",
        "parts": [
          {"text": "Programlarımızın karar vermesini sağlayan yapılara kontrol akışı denir."},
          {"text": "`if`, `else if`, `else`: Belirtilen bir veya daha fazla koşulun sonucuna göre farklı kod bloklarını çalıştırır."},
          {"text": "`switch`: Bir değişkenin alabileceği farklı sabit değerlere göre farklı işlemler yapmak için kullanılır. `if-else if` zincirine göre daha temiz bir alternatif olabilir."},
          {
            "text": "Bir öğrencinin notuna göre harf notunu belirleyen bir örnek yapalım.",
            "code": "int notu = 85;\nchar harf_notu;\n\nif (notu >= 90) {\n  harf_notu = 'A';\n} else if (notu >= 80) {\n  harf_notu = 'B'; // Bu blok çalışır\n} else {\n  harf_notu = 'F';\n}\n// switch örneği: int secim = 2; switch(secim) { case 1: ...; break; case 2: ...; break; }",
            "code_explanation": "`if` ile koşullar sırayla kontrol edilir. Doğru olan ilk koşulun (`notu >= 80`) bloğu çalışır ve diğerleri atlanır. `switch` yapısında ise her `case`'den sonra `break;` koymak önemlidir."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir değişkenin birden çok sabit değere eşit olup olmadığını kontrol etmek için en uygun yapı hangisidir?",
            options: ["if", "for", "switch"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "`if` koşulu sağlanmadığında çalışacak olan alternatif blok ___ ile belirtilir.",
            codeTemplate: "if (kosul) { ... } ___ { ... }",
            correctAnswers: ["else"],
            options: ["then", "elif", "else"],
          ),
          CodeCompletionQuestion(
            questionText: "`switch` yapısında bir `case` bloğundan sonra diğerine geçişi engellemek için ___ komutu kullanılır.",
            codeTemplate: "case 1: cout << \"Bir\"; ___ ;",
            correctAnswers: ["break"],
            options: ["break", "stop", "continue"],
          ),
          CodeCompletionQuestion(
            questionText: "İkiden fazla koşul zinciri oluşturmak için `if` ve `else` arasına ___ ___ bloğu eklenir.",
            codeTemplate: "if (kosul1) { ... } ___ ___ (kosul2) { ... }",
            correctAnswers: ["else", "if"],
            options: ["else", "if", "or", "and"],
          ),
          CodeCompletionQuestion(
            questionText: "`switch` yapısında hiçbir `case` eşleşmediğinde çalışacak olan varsayılan blok ___'tur.",
            codeTemplate: "switch(x) { ... ___: cout << \"Geçersiz\"; }",
            correctAnswers: ["default"],
            options: ["default", "else", "case_else"],
          ),
        ]
      }
    ]
  },

  "cpp_loops": {
    "sub_lessons": [
      {
        "title": "for ve while Döngüleri",
        "parts": [
          {"text": "Döngüler, bir kod bloğunu belirli bir koşul sağlandığı sürece tekrar tekrar çalıştırmamızı sağlar."},
          {"text": "`for` döngüsü, genellikle tekrar sayısının baştan belli olduğu durumlar için kullanılır. Başlatma, koşul ve artırma/azaltma adımlarından oluşur."},
          {"text": "`while` döngüsü, koşul doğru (`true`) olduğu sürece çalışmaya devam eder. Tekrar sayısı başlangıçta bilinmiyorsa daha uygundur."},
          {
            "text": "1'den 5'e kadar olan sayıları hem `for` hem de `while` ile yazdıralım.",
            "code": "#include <iostream>\n\nint main() {\n  // for döngüsü\n  for (int i = 1; i <= 5; i++) {\n    std::cout << i << \" \";\n  }\n  std::cout << std::endl;\n\n  // while döngüsü\n  int j = 1;\n  while (j <= 5) {\n    std::cout << j << \" \";\n    j++;\n  }\n  return 0;\n}",
            "code_explanation": "`for` döngüsü kendi içinde `i`'yi başlatır, `i <= 5` koşulunu kontrol eder ve her adımdan sonra `i++` ile `i`'yi artırır. `while` döngüsünde ise sayacın (`j`) döngüden önce başlatılması ve döngü içinde manuel olarak artırılması gerekir."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Tekrar sayısı genellikle baştan bilindiğinde hangi döngü daha çok tercih edilir?",
            options: ["while", "if", "for"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "0'dan 9'a kadar (10 kez) dönen bir `for` döngüsünü tamamlayın.",
            codeTemplate: "for (int i = 0; i < 10; ___)",
            correctAnswers: ["i++"],
            options: ["i++", "i--", "i=0"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir `while` döngüsünün devam etmesi için koşulunun ne olması gerekir?",
            codeTemplate: "while (___) { /* döngü devam eder */ }",
            correctAnswers: ["true"],
            options: ["true", "false", "0"],
          ),
          CodeCompletionQuestion(
            questionText: "`for` döngüsünün üç bölümünü ayırmak için hangi noktalama işareti kullanılır?",
            codeTemplate: "for (baslatma___ kosul___ artirma)",
            correctAnswers: [";", ";"],
            options: [",", ";", ":", " "],
          ),
          CodeCompletionQuestion(
            questionText: "`sayac` 5'ten büyük olduğu sürece devam eden bir `while` döngüsünü tamamlayın.",
            codeTemplate: "while (sayac > ___)",
            correctAnswers: ["5"],
            options: ["5", "4", "6"],
          ),
        ]
      }
    ]
  },

  "cpp_range_based_for": {
    "sub_lessons": [
      {
        "title": "Aralık Tabanlı for Döngüsü (Range-based for)",
        "parts": [
          {"text": "Modern C++ (C++11 ve sonrası), koleksiyonlar (diziler, vector, string vb.) üzerinde gezinmeyi çok daha kolaylaştıran bir yapı sunar: aralık tabanlı `for` döngüsü."},
          {"text": "Bu döngü, yineleyicileri veya indeksleri manuel olarak yönetme ihtiyacını ortadan kaldırır, bu da kodu daha temiz ve daha az hataya açık hale getirir."},
          {"text": "Sözdizimi şöyledir: `for (eleman_tanimi : koleksiyon) { ... }`"},
          {
            "text": "Bir vektörün elemanlarını bu modern döngü ile yazdıralım.",
            "code": "#include <iostream>\n#include <vector>\n\nint main() {\n  std::vector<int> sayilar = {10, 20, 30};\n\n  for (int sayi : sayilar) {\n    std::cout << sayi << \" \";\n  }\n  return 0;\n}",
            "code_explanation": "Bu döngü, `sayilar` vektöründeki her elemanı sırayla alır ve bir kopyasını `sayi` değişkenine atar. Döngünün her adımında `sayi` değişkeni bir sonraki elemanın değerini alır."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Aralık tabanlı for döngüsünün en büyük avantajı nedir?",
            options: ["Daha hızlı çalışması", "Daha okunabilir ve basit olması", "Daha az bellek kullanması"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Aralık tabanlı for döngüsünde koleksiyon ve eleman arasına hangi karakter konur?",
            codeTemplate: "for (auto eleman ___ koleksiyon)",
            correctAnswers: [":"],
            options: [":", ";", "in", "of"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir `string`'in karakterlerini ekrana yazdıran aralık tabanlı for döngüsünü tamamlayın.",
            codeTemplate: "std::string metin = \"abc\";\nfor (___ harf : metin) { std::cout << harf; }",
            correctAnswers: ["char"],
            options: ["int", "char", "string"],
          ),
          CodeCompletionQuestion(
            questionText: "Döngü içinde koleksiyonun orijinal elemanlarını değiştirmek için elemanı nasıl tanımlamalıyız?",
            codeTemplate: "for (int___ sayi : sayilar) { sayi++; }",
            correctAnswers: ["&"],
            options: ["*", "&", "const"],
          ),
          CodeCompletionQuestion(
            questionText: "Döngü değişkeninin türünü derleyicinin otomatik belirlemesi için `auto` kullanarak kodu tamamlayın.",
            codeTemplate: "for (___ item : myList) { /* ... */ }",
            correctAnswers: ["auto"],
            options: ["int", "var", "auto"],
          ),
        ]
      }
    ]
  },

  // =======================================================================
  // BÖLÜM 4: FONKSİYONLAR
  // =======================================================================

  "cpp_functions": {
    "sub_lessons": [
      {
        "title": "Fonksiyon Tanımlama ve Çağırma",
        "parts": [
          {"text": "Fonksiyonlar, belirli bir işi yapan, tekrar tekrar kullanılabilen isimlendirilmiş kod bloklarıdır."},
          {"text": "Kendini tekrar eden kodları azaltır ve programı daha modüler, okunabilir hale getirir."},
          {"text": "Bir fonksiyonu tanımlarken geri dönüş tipini, adını ve alacağı parametreleri belirtiriz."},
          {
            "text": "Ekrana bir selamlama mesajı yazan basit bir fonksiyon yazalım.",
            "code": "#include <iostream>\n\n// Fonksiyon tanımı\nvoid selamVer() {\n    std::cout << \"Merhaba!\" << std::endl;\n}\n\nint main() {\n    // Fonksiyonu çağırma\n    selamVer();\n    return 0;\n}",
            "code_explanation": "`void` fonksiyonun bir değer döndürmediğini belirtir. `selamVer` fonksiyonun adıdır. `main` içinde adını yazarak onu çağırdık ve içindeki kodun çalışmasını sağladık."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir fonksiyonun herhangi bir değer döndürmediğini belirtmek için hangi anahtar kelime kullanılır?",
            options: ["int", "void", "return"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir fonksiyonu tanımlarken geri dönüş tipi, adı ve ___ listesi belirtilir.",
            codeTemplate: "___ isim(parametreler) { ... }",
            correctAnswers: ["dönüş_tipi"],
            options: ["dönüş_tipi", "class", "void"],
          ),
          CodeCompletionQuestion(
            questionText: "İki sayıyı toplayıp ekrana yazdıran `topla` fonksiyonunu tanımlayın.",
            codeTemplate: "___ topla(int a, int b) {\n    std::cout << a + b;\n}",
            correctAnswers: ["void"],
            options: ["int", "void", "double"],
          ),
          CodeCompletionQuestion(
            questionText: "Aşağıda tanımlanan `cizgiCiz` fonksiyonunu `main` içinde çağırın.",
            codeTemplate: "void cizgiCiz() { std::cout << \"---\"; }\nint main() { ___ ; return 0; }",
            correctAnswers: ["cizgiCiz()"],
            options: ["cizgiCiz()", "void cizgiCiz", "call cizgiCiz"],
          ),
          CodeCompletionQuestion(
            questionText: "Fonksiyonlar kodu daha ___ hale getirir ve kod tekrarını ___.",
            codeTemplate: "Fonksiyonlar kodu daha ___ hale getirir ve kod tekrarını ___.",
            correctAnswers: ["modüler", "önler"],
            options: ["modüler", "karmaşık", "önler", "artırır"],
          ),
        ]
      }
    ]
  },

  "cpp_pass_by_value_reference": {
    "sub_lessons": [
      {
        "title": "Değer ve Referans ile Parametre Geçirme",
        "parts": [
          {"text": "Bir fonksiyona veri aktarmanın iki temel yolu vardır: değer ile geçirme (pass-by-value) ve referans ile geçirme (pass-by-reference)."},
          {"text": "Değer ile Geçirme: Fonksiyona gönderilen değişkenin bir kopyası oluşturulur. Fonksiyon içinde bu kopya üzerinde yapılan değişiklikler, orijinal değişkeni etkilemez."},
          {"text": "Referans ile Geçirme: Değişkenin kendisi (bellekteki adresi) fonksiyona gönderilir. Fonksiyon içinde parametre üzerinde yapılan her değişiklik, orijinal değişkeni de değiştirir. Büyük nesneler için kopyalama maliyetinden kurtarır."},
          {
            "text": "Bu iki yöntemin farkını bir örnekle görelim.",
            "code": "#include <iostream>\n\nvoid degerleDegistir(int x) { x = 20; }\nvoid referanslaDegistir(int& y) { y = 30; }\n\nint main() {\n    int a = 10, b = 10;\n    degerleDegistir(a);\n    referanslaDegistir(b);\n\n    std::cout << \"a: \" << a << std::endl; // a hala 10\n    std::cout << \"b: \" << b << std::endl; // b artık 30\n    return 0;\n}",
            "code_explanation": "`degerleDegistir` fonksiyonu `a`'nın bir kopyasını aldığı için orijinal `a` değişmedi. Ancak `referanslaDegistir` fonksiyonu `b`'nin kendisini (referansını) aldığı için yaptığı değişiklik orijinal `b`'yi etkiledi."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Fonksiyon içinde yapılan değişikliğin orijinal değişkeni ETKİLEMEMESİ için hangi yöntem kullanılır?",
            options: ["Referans ile geçirme", "Değer ile geçirme", "Pointer ile geçirme"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir parametreyi referans ile alan bir fonksiyonu tanımlamak için değişkenin türünden sonra hangi sembol konur?",
            codeTemplate: "void fonksiyon(int___ sayi) { }",
            correctAnswers: ["&"],
            options: ["&", "*", "[]"],
          ),
          CodeCompletionQuestion(
            questionText: "Büyük bir nesneyi kopyalama maliyetinden kaçınmak ama aynı zamanda orijinalini değiştirmek istemiyorsak, nasıl bir parametre kullanırız?",
            codeTemplate: "void fonksiyon(const BuyukNesne___ bn) { }",
            correctAnswers: ["&"],
            options: ["&", "*", " "],
          ),
          CodeCompletionQuestion(
            questionText: "Değer ile geçirmede, fonksiyona argümanın bir ___'sı gönderilir.",
            codeTemplate: "// Argümanın bir ___'sı gönderilir.",
            correctAnswers: ["kopya"],
            options: ["kendisi", "referansı", "kopyası"],
          ),
          CodeCompletionQuestion(
            questionText: "Referans ile geçirme, fonksiyonun çağrıldığı yerdeki orijinal değişkeni ___'sine olanak tanır.",
            codeTemplate: "// Orijinal değişkeni ___ olanak tanır.",
            correctAnswers: ["değiştirme"],
            options: ["değiştirme", "kopyalama", "silme"],
          ),
        ]
      }
    ]
  },

  "cpp_function_overloading": {
    "sub_lessons": [
      {
        "title": "Fonksiyon Aşırı Yükleme (Overloading)",
        "parts": [
          {"text": "Fonksiyon aşırı yükleme, aynı isme sahip fakat farklı parametre listelerine (farklı türde veya sayıda) sahip birden fazla fonksiyon tanımlamamıza olanak tanır."},
          {"text": "Derleyici, fonksiyonu hangi argümanlarla çağırdığımıza bakarak doğru olan versiyonu kendisi seçer."},
          {"text": "Bu, benzer işleri farklı veri tipleriyle yapan fonksiyonlar için (örneğin toplama) ayrı ayrı isimler bulma zorunluluğunu ortadan kaldırır."},
          {
            "text": "`topla` isimli fonksiyonu hem `int` hem de `double` türleri için aşırı yükleyelim.",
            "code": "#include <iostream>\n\nint topla(int a, int b) {\n    return a + b;\n}\n\ndouble topla(double a, double b) {\n    return a + b;\n}\n\nint main() {\n    std::cout << topla(5, 3) << std::endl;      // int versiyonu çağrılır\n    std::cout << topla(4.2, 1.5) << std::endl; // double versiyonu çağrılır\n    return 0;\n}",
            "code_explanation": "İki `topla` fonksiyonu da aynı isme sahip, ancak biri iki `int`, diğeri ise iki `double` parametre alıyor. `main` içinde `topla(5, 3)` çağrısı yapıldığında, derleyici argümanların `int` olduğunu görerek ilk fonksiyonu çalıştırır."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "İki fonksiyonun aşırı yüklenebilmesi için neleri farklı olmalıdır?",
            options: ["Sadece dönüş tipleri", "Sadece isimleri", "Parametre listeleri (sayı veya tür)"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Aşırı yüklenmiş fonksiyonları ayırt etmek için fonksiyonun ___ listesine bakılır.",
            codeTemplate: "// Fonksiyonun ___ listesine bakılır.",
            correctAnswers: ["parametre"],
            options: ["dönüş", "parametre", "isim"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir fonksiyonun sadece ___ tipi, onu aşırı yüklemek için yeterli değildir.",
            codeTemplate: "// Sadece ___ tipi yeterli değildir.",
            correctAnswers: ["dönüş"],
            options: ["parametre", "dönüş", "isim"],
          ),
          CodeCompletionQuestion(
            questionText: "`int` ve `string` parametreleri alan `yazdir` fonksiyonunu tanımlayın.",
            codeTemplate: "void yazdir(___ a, ___ b) { }",
            correctAnswers: ["int", "string"],
            options: ["int", "string", "double", "char"],
          ),
          CodeCompletionQuestion(
            questionText: "Aşağıdaki çağrı, hangi `hesapla` fonksiyonunu çalıştırır: `hesapla(10.5, 5);`?",
            codeTemplate: "void hesapla(double a, int b); // Bu çağrılır mı?\nvoid hesapla(int a, double b); // Bu çağrılır mı?",
            correctAnswers: ["ilki"],
            options: ["ilki", "ikincisi", "ikiside değil"],
          ),
        ]
      }
    ]
  },

  "cpp_default_arguments": {
    "sub_lessons": [
      {
        "title": "Varsayılan Argümanlar",
        "parts": [
          {"text": "C++'da bir fonksiyon tanımlarken, parametrelerine varsayılan değerler atayabiliriz."},
          {"text": "Eğer fonksiyon çağrılırken bu parametreler için bir değer verilmezse, tanımlanmış olan varsayılan değerler kullanılır."},
          {"text": "Bu özellik, fonksiyonun esnekliğini artırır ve bazı argümanların opsiyonel olmasını sağlar."},
          {"text": "ÖNEMLİ KURAL: Varsayılan değeri olan bir parametreden sonra gelen tüm parametrelerin de varsayılan değeri olmak zorundadır."},
          {
            "text": "Bir selamlama fonksiyonunda, selamlama mesajı için varsayılan bir değer belirleyelim.",
            "code": "#include <iostream>\n#include <string>\n\nvoid selamla(std::string isim, std::string mesaj = \"Merhaba\") {\n    std::cout << mesaj << \", \" << isim << \"!\" << std::endl;\n}\n\nint main() {\n    selamla(\"Ahmet\");                     // Varsayılan mesaj kullanılır\n    selamla(\"Zeynep\", \"İyi günler\"); // Verilen mesaj kullanılır\n    return 0;\n}",
            "code_explanation": "İlk `selamla` çağrısında `mesaj` için bir argüman verilmediği için, fonksiyon tanımındaki varsayılan değer olan \"Merhaba\" kullanıldı. İkinci çağrıda ise \"İyi günler\" değeri verildiği için varsayılan değer ezildi."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Varsayılan argümanlarla ilgili temel kural nedir?",
            options: ["Tüm argümanlar varsayılan olmalıdır", "Sadece ilk argüman varsayılan olabilir", "Varsayılan bir argümandan sonraki tüm argümanlar da varsayılan olmalıdır"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Bir fonksiyonda varsayılan argümanı tanımlamak için ___ operatörü kullanılır.",
            codeTemplate: "void fonksiyon(int sayi ___ 10) { }",
            correctAnswers: ["="],
            options: [":", "=", "->"],
          ),
          CodeCompletionQuestion(
            questionText: "`guc` parametresine 100 varsayılan değerini atayan fonksiyonu tamamlayın.",
            codeTemplate: "void saldir(int guc ___ 100) { }",
            correctAnswers: ["="],
            options: ["==", "=", ":"],
          ),
          CodeCompletionQuestion(
            questionText: "`kdv` parametresi için 0.18 varsayılan değerini atayın.",
            codeTemplate: "double fiyatHesapla(double tutar, double kdv = ___) { }",
            correctAnswers: ["0.18"],
            options: ["0.18", "18", "1.18"],
          ),
          CodeCompletionQuestion(
            questionText: "Varsayılan argümanlar, fonksiyonun tanımında değil, ___'nda belirtilmelidir.",
            codeTemplate: "// Genellikle fonksiyonun ___'nda (declaration) belirtilir.",
            correctAnswers: ["bildirimi"],
            options: ["gövdesinde", "bildiriminde", "çağrısında"],
          ),
        ]
      }
    ]
  },

  // =======================================================================
  // BÖLÜM 5: VERİ YAPILARINA GİRİŞ
  // =======================================================================

  "cpp_cstyle_arrays": {
    "sub_lessons": [
      {
        "title": "C-Stili Diziler ve Sınırları",
        "parts": [
          {"text": "Diziler, aynı türden birden fazla veriyi tek bir isim altında sıralı bir şekilde saklamamızı sağlar."},
          {"text": "C-stili dizilerin boyutu derleme zamanında sabitlenir ve sonradan değiştirilemez."},
          {"text": "Dizinin elemanlarına 0'dan başlayan indeks numaraları ile erişilir."},
          {"text": "ÇOK ÖNEMLİ: C++ dizilerin sınırlarını kontrol etmez! Dizinin dışındaki bir indekse erişmeye çalışmak tanımsız davranışa (undefined behavior) yol açar ve programı çökertebilir."},
          {
            "text": "5 elemanlı bir tam sayı dizisi oluşturalım ve elemanlarına erişelim.",
            "code": "#include <iostream>\n\nint main() {\n    int notlar[5] = {85, 90, 78, 95, 88};\n\n    std::cout << \"Ilk not: \" << notlar[0] << std::endl;\n    notlar[1] = 92; // Ikinci notu guncelle\n    std::cout << \"Yeni ikinci not: \" << notlar[1] << std::endl;\n\n    return 0;\n}",
            "code_explanation": "`int notlar[5]` ile 5 tam sayı tutabilen bir dizi tanımladık. `notlar[0]` ilk elemana, `notlar[4]` ise son elemana karşılık gelir."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "5 elemanlı bir dizinin son elemanının indeksi kaçtır?",
            options: ["5", "4", "son"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "10 tane `double` türünde değer tutacak bir dizi tanımlayın.",
            codeTemplate: "___ sayilar[10];",
            correctAnswers: ["double"],
            options: ["int", "string", "double"],
          ),
          CodeCompletionQuestion(
            questionText: "`harfler` dizisinin üçüncü elemanı olan 'C'ye erişen kodu tamamlayın.",
            codeTemplate: "char harfler[] = {'A', 'B', 'C'};\nchar ucuncu_harf = harfler[___];",
            correctAnswers: ["2"],
            options: ["1", "2", "3"],
          ),
          CodeCompletionQuestion(
            questionText: "C-stili dizilerin boyutu program çalışırken ___.",
            codeTemplate: "C-stili dizilerin boyutu program çalışırken ___.",
            correctAnswers: ["değiştirilemez"],
            options: ["değiştirilebilir", "değiştirilemez", "iki katına çıkar"],
          ),
          CodeCompletionQuestion(
            questionText: "Dizinin sınırları dışına taşmak ___ davranışa yol açar.",
            codeTemplate: "Dizinin sınırları dışına taşmak ___ davranışa yol açar.",
            correctAnswers: ["tanımsız"],
            options: ["beklenen", "güvenli", "tanımsız"],
          ),
        ]
      }
    ]
  },

  "cpp_string_class": {
    "sub_lessons": [
      {
        "title": "std::string Sınıfı ve Metotları",
        "parts": [
          {"text": "C-stili karakter dizileri (char array) yerine, Modern C++'da metinlerle çalışmak için `std::string` sınıfını kullanmak çok daha güvenli ve pratiktir."},
          {"text": "`std::string` kullanmak için `<string>` başlık dosyasını dahil etmelisiniz."},
          {"text": "`string` nesneleri dinamik boyutludur, yani boyutları program çalışırken değişebilir. Bellek yönetimini kendisi yapar."},
          {"text": "Birleştirme (`+`), uzunluk bulma (`.length()` veya `.size()`), karakterlere erişim (`[]`) gibi birçok kullanışlı metoda sahiptir."},
          {
            "text": "Birkaç temel `string` işlemini görelim.",
            "code": "#include <iostream>\n#include <string>\n\nint main() {\n    std::string ad = \"Ahmet\";\n    std::string soyad = \"Yılmaz\";\n    std::string tam_ad = ad + \" \" + soyad; // Birleştirme\n\n    std::cout << tam_ad << std::endl;\n    std::cout << \"Uzunluk: \" << tam_ad.length() << std::endl;\n    tam_ad += \", Dr.\"; // Sonuna ekleme (append)\n    std::cout << tam_ad << std::endl;\n    return 0;\n}",
            "code_explanation": "`+` operatörü ile string'leri kolayca birleştirdik. `.length()` metodu ile karakter sayısını öğrendik ve `+=` operatörü ile string'in sonuna yeni bir metin ekledik."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`std::string` kullanmanın C-stili karakter dizilerine göre en büyük avantajı nedir?",
            options: ["Daha hızlı olması", "Otomatik bellek yönetimi ve kullanışlı metotlar", "Daha az yer kaplaması"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "`std::string` sınıfını kullanabilmek için programınıza ___ başlık dosyasını eklemelisiniz.",
            codeTemplate: "#include <___>",
            correctAnswers: ["string"],
            options: ["string", "cstring", "text"],
          ),
          CodeCompletionQuestion(
            questionText: "İki `string`'i birleştirmek için `+` operatörünü kullanan kodu tamamlayın.",
            codeTemplate: "std::string s1 = \"a\", s2 = \"b\";\nstd::string s3 = s1 ___ s2;",
            correctAnswers: ["+"],
            options: ["&", "+", "."],
          ),
          CodeCompletionQuestion(
            questionText: "Bir `string`'in boş olup olmadığını kontrol eden metodu yazın.",
            codeTemplate: "if (metin.___()) { /* boştur */ }",
            correctAnswers: ["empty"],
            options: ["empty", "is_null", "size()==0"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir `string`'in karakter sayısını (uzunluğunu) bulan metodu yazın.",
            codeTemplate: "int uzunluk = metin.___();",
            correctAnswers: ["length"],
            options: ["length", "count", "len"],
          ),
        ]
      }
    ]
  },

  "cpp_vector_intro": {
    "sub_lessons": [
      {
        "title": "std::vector Konteynerine Giriş",
        "parts": [
          {"text": "STL'in en çok kullanılan konteyneri olan `std::vector`, C-stili dizilerin gelişmiş ve güvenli bir versiyonudur."},
          {"text": "`std::vector` kullanmak için `<vector>` başlık dosyasını dahil etmelisiniz."},
          {"text": "En büyük özelliği, boyutunun dinamik olmasıdır. Yani, program çalışırken eleman ekleyip çıkarabilirsiniz ve boyutu otomatik olarak ayarlanır."},
          {"text": "Sona eleman eklemek (`push_back`), boyutu öğrenmek (`.size()`) ve elemanlara erişmek (`[]` veya `.at()`) için kolay metotlar sunar."},
          {
            "text": "Tam sayılardan oluşan bir `vector` oluşturalım ve temel işlemleri yapalım.",
            "code": "#include <iostream>\n#include <vector>\n\nint main() {\n    std::vector<int> notlar;\n    notlar.push_back(85); // Sona 85 ekle\n    notlar.push_back(90);\n\n    std::cout << \"İlk not: \" << notlar[0] << std::endl;\n    std::cout << \"Not sayısı: \" << notlar.size() << std::endl;\n    return 0;\n}",
            "code_explanation": "`std::vector<int>` ile `int` türünde elemanlar tutan bir vektör tanımladık. `push_back` ile sonuna yeni elemanlar ekledik. `[]` operatörü ile elemanlara eriştik ve `.size()` ile içindeki eleman sayısını öğrendik."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`std::vector`'ın C-stili dizilere göre en temel üstünlüğü nedir?",
            options: ["Daha hızlı eleman erişimi", "Dinamik boyutlu olması", "Derleme zamanında boyutunun bilinmesi"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir `vector`'ün sonuna yeni bir eleman eklemek için kullanılan metot ___'tır.",
            codeTemplate: "v. ___ (10);",
            correctAnswers: ["push_back"],
            options: ["push_back", "add", "insert"],
          ),
          CodeCompletionQuestion(
            questionText: "`string`'ler tutan bir `vector` tanımlayın.",
            codeTemplate: "std::vector< ___ > isimler;",
            correctAnswers: ["std::string"],
            options: ["std::string", "char*", "int"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir `vector`'ün içindeki eleman sayısını öğrenmek için ___ metodu kullanılır.",
            codeTemplate: "int eleman_sayisi = v.___();",
            correctAnswers: ["size"],
            options: ["size", "length", "count"],
          ),
          CodeCompletionQuestion(
            questionText: "`vector`'ün ikinci elemanına erişmek için köşeli parantez kullanan kodu tamamlayın.",
            codeTemplate: "int ikinci_eleman = v[ ___ ];",
            correctAnswers: ["1"],
            options: ["0", "1", "2"],
          ),
        ]
      }
    ]
  },

  // =======================================================================
  // BÖLÜM 6: OOP: SINIFLARIN TEMELLERİ
  // =======================================================================

  "cpp_class_object": {
    "sub_lessons": [
      {
        "title": "Sınıf (class) ve Nesne (object)",
        "parts": [
          {"text": "Nesne Yönelimli Programlamanın temeli sınıflar ve nesnelerdir."},
          {"text": "Sınıf (Class): Bir nesnenin planı veya şablonudur. Hangi verileri (üye değişkenler) ve bu verilerle ne gibi işlemler (üye fonksiyonlar/metotlar) yapılabileceğini tanımlar."},
          {"text": "Nesne (Object): Bir sınıf tanımından oluşturulan somut bir örnektir. Sınıf arabanın planıysa, nesne o plandan üretilmiş gerçek bir arabadır."},
          {
            "text": "Basit bir `Ogrenci` sınıfı ve bu sınıftan bir nesne oluşturalım.",
            "code": "#include <iostream>\n#include <string>\n\nclass Ogrenci {\npublic:\n    std::string isim;\n    int numara;\n\n    void bilgileriYazdir() {\n        std::cout << \"Isim: \" << isim << \", No: \" << numara << std::endl;\n    }\n};\n\nint main() {\n    Ogrenci ogr1; // 'ogr1' adında bir Ogrenci nesnesi oluşturuldu\n    ogr1.isim = \"Ali Veli\";\n    ogr1.numara = 123;\n    ogr1.bilgileriYazdir();\n\n    return 0;\n}",
            "code_explanation": "`class Ogrenci { ... }` ile şablonumuzu tanımladık. `main` içinde `Ogrenci ogr1;` satırıyla bu şablondan gerçek bir nesne yarattık ve `.` operatörü ile üyelerine eriştik."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir nesnenin planı veya şablonu olarak tanımlanan yapı hangisidir?",
            options: ["Nesne (Object)", "Sınıf (Class)", "Fonksiyon"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir sınıftan oluşturulan somut örneğe ___ denir.",
            codeTemplate: "Bir sınıftan oluşturulan somut örneğe ___ denir.",
            correctAnswers: ["nesne"],
            options: ["nesne", "kalıtım", "kopya"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir nesnenin üye değişkenlerine veya metotlarına erişmek için ___ operatörü kullanılır.",
            codeTemplate: "nesne___uye",
            correctAnswers: ["."],
            options: [".", "->", "::"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir sınıf tanımı ___ anahtar kelimesi ile başlar.",
            codeTemplate: "___ Araba { ... };",
            correctAnswers: ["class"],
            options: ["class", "object", "struct"],
          ),
          CodeCompletionQuestion(
            questionText: "Sınıf içindeki fonksiyonlara üye ___, değişkenlere ise üye ___ denir.",
            codeTemplate: "Sınıf içindeki fonksiyonlara üye ___, değişkenlere ise üye ___ denir.",
            correctAnswers: ["fonksiyonlar", "değişkenler"],
            options: ["fonksiyonlar", "değişkenler", "veriler", "metotlar"],
          ),
        ]
      }
    ]
  },

  "cpp_access_specifiers": {
    "sub_lessons": [
      {
        "title": "Erişim Belirleyiciler (public, private, protected)",
        "parts": [
          {"text": "Erişim belirleyiciler, sınıf üyelerine (değişkenler ve metotlar) nereden erişilebileceğini kontrol eder. Bu, kapsülleme (encapsulation) prensibinin temelidir."},
          {"text": "`public`: Bu bölümde tanımlanan üyelere sınıfın içinden de dışından da her yerden erişilebilir."},
          {"text": "`private`: Bu bölümde tanımlanan üyelere sadece sınıfın kendi üye fonksiyonları tarafından erişilebilir. Sınıf dışından erişim yasaktır. Bir sınıfta varsayılan (default) erişim belirleyicidir."},
          {"text": "`protected`: `private`'a benzer, ancak ek olarak bu sınıftan türetilmiş (kalıtım alan) diğer sınıflar da bu üyelere erişebilir."},
          {
            "text": "Genellikle, üye değişkenler `private` yapılır ve onlara erişim `public` metotlar (getter/setter) aracılığıyla sağlanır.",
            "code": "class BankaHesabi {\nprivate:\n    double bakiye;\npublic:\n    void paraYatir(double miktar) { bakiye += miktar; }\n    double bakiyeOgren() { return bakiye; }\n};\n\nint main() {\n    BankaHesabi hsp;\n    // hsp.bakiye = 1000; // HATA! 'bakiye' private olduğu için dışarıdan erişilemez.\n    hsp.paraYatir(1000);\n    return 0;\n}",
            "code_explanation": "`bakiye` değişkenini `private` yaparak dışarıdan doğrudan değiştirilmesini engelledik. Bakiye üzerinde işlem yapmak için kontrollü bir yol olan `public paraYatir` metodunu kullanmak zorunludur."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir sınıf içinde herhangi bir belirleyici yazılmazsa, üyeler varsayılan olarak ne kabul edilir?",
            options: ["public", "protected", "private"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Sınıf dışından erişilebilen üyeler ___ anahtar kelimesinin altına yazılır.",
            codeTemplate: "___:\n    void herkeseAcikMetot();",
            correctAnswers: ["public"],
            options: ["public", "private", "protected"],
          ),
          CodeCompletionQuestion(
            questionText: "Sadece sınıfın kendi içinden erişilebilen üyeler için ___ belirleyicisi kullanılır.",
            codeTemplate: "___:\n    int gizliVeri;",
            correctAnswers: ["private"],
            options: ["public", "private", "protected"],
          ),
          CodeCompletionQuestion(
            questionText: "`private` üyelere kontrollü erişim sağlayan `public` fonksiyonlara genellikle ___ ve ___ fonksiyonları denir.",
            codeTemplate: "// Onlara ___ ve ___ denir.",
            correctAnswers: ["getter", "setter"],
            options: ["getter", "setter", "public", "private"],
          ),
          CodeCompletionQuestion(
            questionText: "`protected` üyeler, kendi sınıfı ve ondan ___ sınıflar tarafından erişilebilir.",
            codeTemplate: "// Kendi sınıfı ve ondan ___ sınıflar...",
            correctAnswers: ["türetilmiş"],
            options: ["türetilmiş", "bağımsız", "arkadaş"],
          ),
        ]
      }
    ]
  },

  "cpp_constructors_destructor": {
    "sub_lessons": [
      {
        "title": "Constructor (Yapıcı) ve Destructor (Yıkıcı)",
        "parts": [
          {"text": "Constructor (Yapıcı Metot): Bir sınıftan nesne oluşturulduğu anda otomatik olarak çağrılan özel bir metottur. Adı, sınıfın adıyla aynı olmak zorundadır ve geri dönüş tipi yoktur."},
          {"text": "Temel görevi, nesnenin üye değişkenlerine başlangıç değerlerini atamak ve gerekli başlangıç ayarlarını yapmaktır."},
          {"text": "Destructor (Yıkıcı Metot): Bir nesnenin ömrü bittiğinde (örneğin, kapsam dışına çıktığında veya `delete` ile silindiğinde) otomatik olarak çağrılan özel bir metottur."},
          {"text": "Adı, sınıf adının başına bir tilde `~` işareti konularak oluşturulur. Parametre almaz ve geri dönüş tipi yoktur. Temel görevi, nesnenin kullandığı kaynakları (ayrılan bellek, açılan dosyalar vb.) serbest bırakmaktır."},
          {
            "text": "Bir `Oyuncu` sınıfı için yapıcı ve yıkıcı metotları görelim.",
            "code": "#include <iostream>\n\nclass Oyuncu {\npublic:\n    Oyuncu() { std::cout << \"Oyuncu oluşturuldu!\\n\"; } // Constructor\n    ~Oyuncu() { std::cout << \"Oyuncu yok edildi!\\n\"; }  // Destructor\n};\n\nint main() {\n    Oyuncu o1; // Constructor çağrılır\n    return 0;  // main bitince o1 yok edilir, destructor çağrılır\n}",
            "code_explanation": "`Oyuncu o1;` satırı çalıştığında `Oyuncu` sınıfının constructor'ı otomatik olarak çağrılır ve ekrana mesaj yazar. `main` fonksiyonu bittiğinde `o1` nesnesinin ömrü sona erer ve destructor'ı otomatik olarak çağrılır."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir nesne oluşturulurken otomatik olarak çağrılan özel metodun adı nedir?",
            options: ["Destructor", "Main Metot", "Constructor"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Bir constructor'ın adı, ___ adıyla aynı olmalıdır.",
            codeTemplate: "// Adı, ___ adıyla aynı olmalıdır.",
            correctAnswers: ["sınıfın"],
            options: ["sınıfın", "nesnenin", "programın"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir destructor'ın adının başında hangi özel karakter bulunur?",
            codeTemplate: "___Oyuncu() { }",
            correctAnswers: ["~"],
            options: ["&", "*", "~"],
          ),
          CodeCompletionQuestion(
            questionText: "Parametre alan bir constructor tanımlayın.",
            codeTemplate: "Araba(int yil) { this->yil = yil; }\nAraba a1(___);",
            correctAnswers: ["2023"],
            options: ["2023", "\"Audi\"", "true"],
          ),
          CodeCompletionQuestion(
            questionText: "Constructor'lar ve Destructor'ların ___ tipi yoktur.",
            codeTemplate: "// ___ tipi yoktur, void bile değildir.",
            correctAnswers: ["geri dönüş"],
            options: ["parametre", "geri dönüş", "isim"],
          ),
        ]
      }
    ]
  },

  "cpp_initializer_list": {
    "sub_lessons": [
      {
        "title": "Başlatıcı Listeleri (Initializer Lists)",
        "parts": [
          {"text": "Başlatıcı listeleri, constructor (yapıcı metot) içinde üye değişkenlere ilk değer atamanın özel ve daha verimli bir yoludur."},
          {"text": "Constructor'ın parametre listesinden sonra, gövdesinden (`{}`) önce iki nokta üst üste (`:`) ile başlatılır."},
          {"text": "Neden kullanılır? \n1. Verimlilik: Değişkenler önce varsayılan olarak oluşturulup sonra atanmak yerine, doğrudan istenen değerle oluşturulur.\n2. Zorunluluk: `const` ve referans (`&`) türündeki üye değişkenlere sadece başlatıcı listesinde ilk değer atanabilir."},
          {
            "text": "`const` bir üye değişkeni olan bir sınıfı, başlatıcı listesi kullanarak tanımlayalım.",
            "code": "class Kimlik {\npublic:\n    const int id;\n    std::string ad;\n\n    // Başlatıcı listesi kullanımı\n    Kimlik(int baslangic_id, std::string baslangic_ad) : id(baslangic_id), ad(baslangic_ad) {\n        // Constructor gövdesi boş kalabilir\n    }\n};",
            "code_explanation": "`Kimlik` constructor'ı, `id` ve `ad` üyelerini gövde içinde atamak yerine, başlatıcı listesi `: id(baslangic_id), ad(baslangic_ad)` ile başlatır. `id` `const` olduğu için bu yöntem zorunludur."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Hangi tür üye değişkenler için başlatıcı listesi kullanmak zorunludur?",
            options: ["Sadece int", "const ve referans üyeler", "Sadece pointer'lar"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Başlatıcı listesi, constructor imzasında hangi karakterden sonra başlar?",
            codeTemplate: "Ogrenci(int no) ___ no(no) { }",
            correctAnswers: [":"],
            options: [";", ",", ":"],
          ),
          CodeCompletionQuestion(
            questionText: "Başlatıcı listesinde bir üyeye değer atayan sözdizimini tamamlayın.",
            codeTemplate: ": uye(___deger___)",
            correctAnswers: ["(", ")"],
            options: ["{", "}", "(", ")", "=", ";"],
          ),
          CodeCompletionQuestion(
            questionText: "Verimlilik açısından, atama yerine ___ listelerini kullanmak tercih edilir.",
            codeTemplate: "// Atama yerine ___ listelerini kullanmak...",
            correctAnswers: ["başlatıcı"],
            options: ["parametre", "başlatıcı", "dönüş"],
          ),
          CodeCompletionQuestion(
            questionText: "`x_` ve `y_` üyelerini başlatıcı listesi ile başlatan kodu tamamlayın.",
            codeTemplate: "Nokta(int x, int y) : x_(x), ___ { }",
            correctAnswers: ["y_(y)"],
            options: ["y_(y)", "y_=y", "y(y_)"],
          ),
        ]
      }
    ]
  },

  "cpp_this_pointer": {
    "sub_lessons": [
      {
        "title": "this İşaretçisi",
        "parts": [
          {"text": "Bir sınıfın üye fonksiyonları içinde, `this` anahtar kelimesi o anki nesnenin kendisine işaret eden bir pointer'dır (işaretçi)."},
          {"text": "Herhangi bir nesne kendi üye fonksiyonunu çağırdığında, derleyici o fonksiyona nesnenin adresini gizli bir parametre olarak geçirir. İşte bu parametre `this`'tir."},
          {"text": "En yaygın kullanım amacı, üye değişkenler ile aynı isme sahip olan fonksiyon parametrelerini ayırt etmektir (isim çakışmasını önlemek)."},
          {
            "text": "Parametre adı ile üye değişken adının aynı olduğu bir constructor'da `this` kullanımını görelim.",
            "code": "class Dikdortgen {\nprivate:\n    int genislik, yukseklik;\npublic:\n    Dikdortgen(int genislik, int yukseklik) {\n        this->genislik = genislik;\n        this->yukseklik = yukseklik;\n    }\n};",
            "code_explanation": "Constructor'ın `genislik` parametresi ile sınıfın `genislik` üyesi aynı isme sahip. `this->genislik` diyerek 'bu nesnenin üyesi olan genişlik' demek istediğimizi, `=`'in sağındaki `genislik`'in ise 'parametre olan genişlik' olduğunu belirtmiş olduk."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`this` anahtar kelimesi nedir?",
            options: ["Bir sınıfın adı", "Mevcut nesneye bir referans", "Mevcut nesneye bir işaretçi (pointer)"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "`this` bir işaretçi olduğu için, üyelerine erişmek amacıyla ___ operatörü kullanılır.",
            codeTemplate: "this___uyeDegiskeni",
            correctAnswers: ["->"],
            options: [".", "->", "::"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir üye değişken ile aynı ada sahip parametreyi ayırt etmek için `this` kullanan kodu tamamlayın.",
            codeTemplate: "this->___ = renk;",
            correctAnswers: ["renk"],
            options: ["renk", "this.renk", "this"],
          ),
          CodeCompletionQuestion(
            questionText: "`this` işaretçisi, ___ olmayan üye fonksiyonları içinde kullanılabilir.",
            codeTemplate: "// ___ olmayan üye fonksiyonları...",
            correctAnswers: ["static"],
            options: ["public", "private", "static"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir metotun kendi nesnesinin bir kopyasını döndürmesi için ne yapması gerekir?",
            codeTemplate: "return ___this;",
            correctAnswers: ["*"],
            options: ["&", "*", "this"],
          ),
        ]
      }
    ]
  },

  "cpp_static_members": {
    "sub_lessons": [
      {
        "title": "static Üyeler ve Metotlar",
        "parts": [
          {"text": "`static` anahtar kelimesi, sınıf üyelerinin (değişken veya metot) nesnelere değil, doğrudan sınıfın kendisine ait olmasını sağlar."},
          {"text": "`static` Değişken: Sınıfın tüm nesneleri tarafından paylaşılan tek bir değişkendir. Her nesne için ayrı bir kopyası oluşturulmaz. Örneğin, oluşturulan toplam nesne sayısını saymak için kullanılabilir."},
          {"text": "`static` Metot: Bir nesne oluşturmaya gerek kalmadan, doğrudan sınıf adı üzerinden (`Sınıf::Metot()`) çağrılabilir. Sadece diğer `static` üyelere erişebilir, çünkü belirli bir nesneye (`this`) bağlı değildir."},
          {
            "text": "Oluşturulan `Kutu` nesnelerinin sayısını takip eden bir `static` değişken örneği.",
            "code": "#include <iostream>\n\nclass Kutu {\npublic:\n    static int nesneSayisi;\n    Kutu() { nesneSayisi++; }\n};\n\nint Kutu::nesneSayisi = 0; // Static değişkeni başlatma\n\nint main() {\n    Kutu k1, k2;\n    std::cout << Kutu::nesneSayisi; // Ekrana 2 yazar\n    return 0;\n}",
            "code_explanation": "`nesneSayisi` `static` olduğu için tüm `Kutu` nesneleri aynı değişkeni paylaşır. Her yeni `Kutu` oluşturulduğunda constructor bu sayacı bir artırır. `static` üye, sınıf dışında `int Kutu::nesneSayisi = 0;` şeklinde başlatılmalıdır."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`static` bir üye değişkenin özelliği nedir?",
            options: ["Her nesne için ayrı kopyası vardır", "Sınıfın tüm nesneleri tarafından paylaşılır", "Değeri değiştirilemez"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "`static` bir metodu çağırmak için nesne oluşturmak yerine sınıf adı ve ___ operatörü kullanılır.",
            codeTemplate: "SinifAdi___staticMetot();",
            correctAnswers: ["::"],
            options: [".", "->", "::"],
          ),
          CodeCompletionQuestion(
            questionText: "Sınıf içinde `static` olarak tanımlanan bir değişken, sınıf ___'nda başlatılmalıdır.",
            codeTemplate: "// Sınıf ___'nda başlatılmalıdır.",
            correctAnswers: ["dışında"],
            options: ["içinde", "dışında", "constructor'da"],
          ),
          CodeCompletionQuestion(
            questionText: "`static` bir metot, `static` olmayan bir üyeye doğrudan ___.",
            codeTemplate: "// Doğrudan ___.",
            correctAnswers: ["erişemez"],
            options: ["erişebilir", "erişemez", "değiştirebilir"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir sınıfa ait `static` bir tamsayı sayacını tanımlayın.",
            codeTemplate: "class Oyuncu { public: ___ int sayac; };",
            correctAnswers: ["static"],
            options: ["const", "static", "auto"],
          ),
        ]
      }
    ]
  },


  // =======================================================================
  // BÖLÜM 7: OOP: KALITIM VE POLİMORFİZM
  // =======================================================================

  "cpp_inheritance": {
    "sub_lessons": [
      {
        "title": "Kalıtım (Inheritance)",
        "parts": [
          {"text": "Nesne Yönelimli Programlamanın temel taşlarından biri kalıtımdır."},
          {"text": "Kalıtım, bir sınıfın özelliklerini ve metotlarını başka bir sınıfa aktarmasını sağlar. Bu, kod tekrarını önler ve hiyerarşik bir yapı kurmamızı sağlar."},
          {"text": "Özelliklerini aktaran sınıfa 'temel sınıf' (base class), bu özellikleri alan sınıfa ise 'türetilmiş sınıf' (derived class) denir."},
          {
            "text": "`public` kalıtım, temel sınıfın `public` üyelerinin türetilmiş sınıfta da `public` olmasını sağlar. Bu en yaygın kullanım türüdür.",
            "code":
            "// Temel sınıf\nclass Hayvan {\npublic:\n  void yemekYe() {\n    cout << \"Hayvan yemek yiyor.\" << endl;\n  }\n};\n\n// Türetilmiş sınıf\nclass Kopek : public Hayvan {\npublic:\n  void havla() {\n    cout << \"Hav hav!\" << endl;\n  }\n};\n\nint main() {\n  Kopek k1;\n  k1.yemekYe(); // Temel sınıftan gelen metot\n  k1.havla();   // Kendi metodu\n  return 0;\n}",
            "code_explanation":
            "`Kopek` sınıfı, `Hayvan` sınıfından `public` olarak türetilmiştir. Bu sayede `Kopek` nesnesi, hem kendi `havla()` metoduna hem de `Hayvan` sınıfından miras aldığı `yemekYe()` metoduna erişebilir."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir sınıfın özelliklerini başka bir sınıfa aktarma işlemine ne denir?",
            options: ["Polimorfizm", "Kapsülleme", "Kalıtım"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Türetilmiş sınıfın temel sınıftan kalıtım aldığını belirten satırı tamamlayın.",
            codeTemplate: "class Turetlimis ___ public Temel { };",
            correctAnswers: [":"],
            options: [":", "::", "->", "."],
          ),
          CodeCompletionQuestion(
            questionText: "Bir `Kus` sınıfını, `Hayvan` sınıfından `public` olarak türeten kodu tamamlayın.",
            codeTemplate: "class Kus : ___ Hayvan { };",
            correctAnswers: ["public"],
            options: ["public", "private", "protected", "class"],
          ),
          CodeCompletionQuestion(
            questionText: "`kedi` nesnesinin, temel sınıf olan `Hayvan`'dan gelen `uyku()` metodunu çağırmasını sağlayın.",
            codeTemplate: "Kedi kedi;\nkedi.___();",
            correctAnswers: ["uyku"],
            options: ["miyavla", "uyku", "Kedi", "Hayvan"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir temel ve bir türetilmiş sınıf tanımında eksik olan anahtar kelimeleri tamamlayın.",
            codeTemplate: "___ Temel { };\nclass Turetlimis : public ___ { };",
            correctAnswers: ["class", "Temel"],
            options: ["class", "struct", "Temel", "Turetlimis"],
          )
        ]
      }
    ]
  },

  "cpp_polymorphism_virtual": {
    "sub_lessons": [
      {
        "title": "Çok Biçimlilik (Polymorphism) ve Sanal Fonksiyonlar",
        "parts": [
          {"text": "Polimorfizm, 'çok biçimlilik' anlamına gelir. Bir nesneye farklı durumlarda farklı şekillerde davranma yeteneği kazandırır."},
          {"text": "C++'da polimorfizm genellikle temel sınıf işaretçileri (base class pointers) ve sanal fonksiyonlar (virtual functions) ile sağlanır."},
          {"text": "Temel sınıfta `virtual` olarak işaretlenen bir fonksiyon, türetilmiş sınıflarda `override` edilerek (ezilerek) yeniden tanımlanabilir."},
          {"text": "Temel sınıf türünden bir işaretçi, türetilmiş sınıfın nesnesini gösterdiğinde ve bu sanal fonksiyon çağrıldığında, C++ doğru (türetilmiş sınıftaki) fonksiyonu çalıştırır."},
          {
            "text": "Bu mekanizma, nesnelerin türünü bilmeden ortak bir arayüz üzerinden onlarla çalışmamızı sağlar.",
            "code":
            "class Hayvan {\npublic:\n  virtual void sesCikar() { cout << \"Bir ses...\" << endl; }\n};\n\nclass Kedi : public Hayvan {\npublic:\n  void sesCikar() override { cout << \"Miyav!\" << endl; }\n};\n\nint main() {\n  Hayvan* pHayvan = new Kedi();\n  pHayvan->sesCikar(); // Ekrana \"Miyav!\" yazar.\n  delete pHayvan;\n  return 0;\n}",
            "code_explanation":
            "`sesCikar()` fonksiyonu `Hayvan` sınıfında `virtual` olduğu için, `Hayvan*` türündeki işaretçi bir `Kedi` nesnesini gösterse bile, `Kedi` sınıfının `sesCikar()` metodu çağrılır. Buna 'geç bağlama' (late binding) denir."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir temel sınıf fonksiyonunun türetilmiş sınıflar tarafından ezilebilmesini sağlayan anahtar kelime nedir?",
            options: ["static", "virtual", "override"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Türetilmiş sınıfta bir sanal fonksiyonu ezerken, bunun bilinçli yapıldığını belirtmek için hangi anahtar kelime kullanılır?",
            codeTemplate: "void metod() ___ { /* ... */ }",
            correctAnswers: ["override"],
            options: ["override", "virtual", "base", "super"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir fonksiyonu sanal (virtual) olarak işaretleyen kodu tamamlayın.",
            codeTemplate: "class Temel {\npublic:\n  ___ void fonksiyon();\n};",
            correctAnswers: ["virtual"],
            options: ["virtual", "class", "void", "public"],
          ),
          CodeCompletionQuestion(
            questionText: "Temel sınıf işaretçisi üzerinden türetilmiş sınıfın metodunu çağıran kodu tamamlayın.",
            codeTemplate: "Temel* pNesne = new Turetlimis();\npNesne___metod();",
            correctAnswers: ["->"],
            options: [".", "::", "->", " "],
          ),
          CodeCompletionQuestion(
            questionText: "Bir `Kopek` nesnesi oluşturup adresini `Hayvan` işaretçisine atayan kodu tamamlayın.",
            codeTemplate: "Hayvan* pCanli = new ___();",
            correctAnswers: ["Kopek"],
            options: ["Kopek", "Hayvan", "Canli", "int"],
          )
        ]
      }
    ]
  },

  "cpp_abstract_classes_interfaces": {
    "sub_lessons": [
      {
        "title": "Soyut Sınıflar ve Arayüzler",
        "parts": [
          {"text": "Bazen, nesnesi oluşturulmasını istemediğimiz, sadece kalıtım için var olan temel sınıflar tasarlamak isteriz. Bunlara 'Soyut Sınıflar' (Abstract Classes) denir."},
          {"text": "Bir sınıfı soyut yapmak için içinde en az bir tane 'saf sanal fonksiyon' (pure virtual function) bulunması gerekir."},
          {"text": "Saf sanal fonksiyon, `= 0` ifadesiyle biten ve gövdesi olmayan bir sanal fonksiyondur."},
          {"text": "Eğer bir sınıfın tüm fonksiyonları saf sanal ise, bu yapı C++'da bir 'Arayüz' (Interface) olarak kabul edilir. Arayüzler, türetilecek sınıfların hangi metotları uygulamak zorunda olduğunu belirten bir sözleşme görevi görür."},
          {
            "text": "Bir 'Şekil' arayüzü ve ondan türeyen 'Daire' sınıfı örneği.",
            "code":
            "// Arayüz (Soyut Sınıf)\nclass Sekil {\npublic:\n  virtual void ciz() = 0; // Saf sanal fonksiyon\n};\n\nclass Daire : public Sekil {\npublic:\n  void ciz() override {\n    cout << \"Daire ciziliyor.\" << endl;\n  }\n};\n\nint main() {\n  // Sekil s; // HATA! Soyut sınıftan nesne oluşturulamaz.\n  Daire d;\n  d.ciz();\n  return 0;\n}",
            "code_explanation":
            "`Sekil` sınıfı içinde `ciz()` fonksiyonu `= 0` ile bittiği için saf sanaldır ve `Sekil` soyut bir sınıftır. `Daire` sınıfı, `Sekil`'den türediği için `ciz()` fonksiyonunu implemente etmek (gövdesini yazmak) zorundadır."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir fonksiyonu 'saf sanal' (pure virtual) yapan ifade hangisidir?",
            options: ["override", "= 0", "virtual", "{} "],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir `alanHesapla` fonksiyonunu saf sanal olarak tanımlayan kodu tamamlayın.",
            codeTemplate: "virtual double alanHesapla() ___ = 0;",
            correctAnswers: ["const"],
            options: ["const", "override", "public", "{}"],
          ),
          CodeCompletionQuestion(
            questionText: "Soyut bir sınıftan türeyen somut bir sınıfın, saf sanal fonksiyonu ne yapması gerekir?",
            codeTemplate: "// Onu ___ etmesi gerekir.",
            correctAnswers: ["override"],
            options: ["silmesi", "override", "gizlemesi", "çağırması"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir `Cizilebilir` arayüzü tanımlayın ve içine `ciz` adında saf sanal bir fonksiyon ekleyin.",
            codeTemplate: "class Cizilebilir {\npublic:\n  virtual void ciz() ___ ___; \n};",
            correctAnswers: ["=", "0"],
            options: [";", "=", "0", "{}"],
          ),
          CodeCompletionQuestion(
            questionText: "Soyut bir sınıftan nesne oluşturmaya çalışınca ne olur?",
            codeTemplate: "// ___ hatası alınır.",
            correctAnswers: ["Derleme"],
            options: ["Çalışma zamanı", "Derleme", "Bağlantı", "Mantık"],
          )
        ]
      }
    ]
  },

  "cpp_operator_overloading": {
    "sub_lessons": [
      {
        "title": "Operatör Aşırı Yükleme",
        "parts": [
          {"text": "C++, kendi oluşturduğumuz sınıflar (class) için `+`, `-`, `*`, `==`, `<<` gibi operatörlerin davranışını yeniden tanımlamamıza olanak tanır. Bu işleme 'operatör aşırı yükleme' denir."},
          {"text": "Bu sayede, kendi veri tiplerimizle çalışırken kodumuz daha sezgisel ve okunabilir hale gelir."},
          {"text": "Örneğin, iki `Vektor` nesnesini toplamak için `v1.topla(v2)` yazmak yerine, doğrudan `v1 + v2` yazabiliriz."},
          {"text": "Operatörler, sınıfa üye fonksiyon olarak veya global fonksiyon olarak aşırı yüklenebilir."},
          {
            "text": "İki `Puan` nesnesini `+` operatörü ile toplayan bir örnek.",
            "code":
            "class Puan {\npublic:\n  int x, y;\n  Puan(int x=0, int y=0) : x(x), y(y) {}\n\n  Puan operator+(const Puan& diger) {\n    Puan yeniPuan;\n    yeniPuan.x = this->x + diger.x;\n    yeniPuan.y = this->y + diger.y;\n    return yeniPuan;\n  }\n};\n\nint main() {\n  Puan p1(1, 2), p2(3, 4);\n  Puan p3 = p1 + p2; // operator+ çağrılır\n  cout << p3.x << \", \" << p3.y << endl; // 4, 6\n  return 0;\n}",
            "code_explanation":
            "`operator+` adında özel bir üye fonksiyon tanımladık. Bu fonksiyon, `p1 + p2` ifadesi kullanıldığında otomatik olarak çağrılır. `p1` `this` işaretçisi ile, `p2` ise `diger` parametresi ile temsil edilir."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Mevcut operatörlerin kendi sınıflarımız için davranışını yeniden tanımlama işlemine ne denir?",
            options: ["Operatör kalıtımı", "Operatör aşırı yükleme", "Operatör sanallaştırma"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir `Vektor` sınıfı için toplama operatörünü aşırı yükleyen fonksiyonun adını tamamlayın.",
            codeTemplate: "Vektor ___+(const Vektor& v);",
            correctAnswers: ["operator"],
            options: ["function", "operator", "op", "method"],
          ),
          CodeCompletionQuestion(
            questionText: "İki `Para` nesnesinin eşitliğini kontrol eden `==` operatörünü aşırı yükleyin.",
            codeTemplate: "bool operator___(const Para& p) { /*...*/ }",
            correctAnswers: ["=="],
            options: ["=", "==", "!=", "equals"],
          ),
          CodeCompletionQuestion(
            questionText: "Aşırı yüklenmiş `+` operatörünü kullanarak iki `KarmasikSayi` nesnesini toplayın.",
            codeTemplate: "KarmasikSayi k1, k2;\nKarmasikSayi k3 = k1 ___ k2;",
            correctAnswers: ["+"],
            options: ["+", "topla", "add", "."],
          ),
          CodeCompletionQuestion(
            questionText: "`cout` ile bir nesneyi yazdırmak için hangi operatör aşırı yüklenmelidir?",
            codeTemplate: "// ___ operatörü (ostream << nesne)",
            correctAnswers: ["<<"],
            options: [">>", "<<", ">>=", "print"],
          )
        ]
      }
    ]
  },

  // =======================================================================
  // BÖLÜM 8: STL (STANDART ŞABLON KÜTÜPHANESİ)
  // =======================================================================

  "cpp_stl_intro": {
    "sub_lessons": [
      {
        "title": "STL Nedir? (Konteyner, Yineleyici, Algoritma)",
        "parts": [
          {"text": "STL (Standard Template Library - Standart Şablon Kütüphanesi), C++'ın en güçlü özelliklerinden biridir."},
          {"text": "Veri yapıları ve algoritmaları içeren, yeniden kullanılabilir ve verimli bir kütüphanedir."},
          {"text": "STL üç ana bileşenden oluşur:"},
          {"text": "1. Konteynerler (Containers): Verileri saklamak için kullanılan veri yapılarıdır (örn: `vector`, `list`, `map`)."},
          {"text": "2. Yineleyiciler (Iterators): Konteynerler içindeki elemanlar arasında gezinmek için kullanılan nesnelerdir. Pointer'lara benzerler."},
          {"text": "3. Algoritmalar (Algorithms): Konteynerler üzerinde sıralama, arama, kopyalama gibi işlemleri yapan fonksiyonlardır (örn: `sort`, `find`)."},
          {
            "text": "Bu üç bileşen birlikte çalışarak çok güçlü ve esnek kodlar yazmamızı sağlar.",
            "code":
            "#include <iostream>\n#include <vector>     // Konteyner\n#include <algorithm>  // Algoritma\n\nint main() {\n  std::vector<int> sayilar = {5, 2, 8, 1};\n\n  // sort algoritması, yineleyicileri kullanarak vektörü sıralar\n  std::sort(sayilar.begin(), sayilar.end());\n\n  // Range-based for döngüsü (arkaplanda yineleyici kullanır)\n  for (int sayi : sayilar) {\n    std::cout << sayi << \" \"; // 1 2 5 8\n  }\n  return 0;\n}",
            "code_explanation":
            "`std::vector` bir konteynerdir. `std::sort` bir algoritmadır. `sort` fonksiyonu, vektörün başını (`sayilar.begin()`) ve sonunu (`sayilar.end()`) gösteren yineleyicileri kullanarak hangi aralığı sıralayacağını anlar."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Aşağıdakilerden hangisi STL'in üç ana bileşeninden biri DEĞİLDİR?",
            options: ["Konteynerler", "Yineleyiciler", "Değişkenler"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "STL'de verileri saklayan yapılara genel olarak ne ad verilir?",
            codeTemplate: "// ___ denir. (Örn: vector, map)",
            correctAnswers: ["Konteyner"],
            options: ["Algoritma", "Yineleyici", "Konteyner", "Fonksiyon"],
          ),
          CodeCompletionQuestion(
            questionText: "STL konteynerleri üzerinde sıralama, arama gibi işlemleri yapan fonksiyonlara ne denir?",
            codeTemplate: "// ___ denir. (Örn: sort, find)",
            correctAnswers: ["Algoritma"],
            options: ["Algoritma", "Yineleyici", "Konteyner", "Sınıf"],
          ),
          CodeCompletionQuestion(
            questionText: "Konteyner elemanları arasında gezinmeyi sağlayan, pointer benzeri nesnelere ne ad verilir?",
            codeTemplate: "// ___ denir.",
            correctAnswers: ["Yineleyici"],
            options: ["Algoritma", "Yineleyici", "Konteyner", "Yapı"],
          ),
          CodeCompletionQuestion(
            questionText: "STL'in üç temel bileşenini tamamlayın.",
            codeTemplate: "STL; ___, ___ ve algoritmalardan oluşur.",
            correctAnswers: ["konteyner", "yineleyici"],
            options: ["fonksiyon", "konteyner", "yineleyici", "değişken"],
          )
        ]
      }
    ]
  },

  "cpp_iterators": {
    "sub_lessons": [
      {
        "title": "Yineleyiciler (Iterators) ile Gezinme",
        "parts": [
          {"text": "Yineleyiciler (Iterators), bir konteynerin elemanlarına sırayla erişmek için kullanılan nesnelerdir."},
          {"text": "Pointer'lara çok benzer şekilde çalışırlar. `*` operatörü ile işaret ettikleri elemanın değerine erişebilir, `++` operatörü ile bir sonraki elemana geçebiliriz."},
          {"text": "Her konteynerin, ilk elemanı gösteren `begin()` ve son elemandan bir sonrasını gösteren `end()` adında metotları vardır."},
          {"text": "Algoritmalar, hangi veri aralığı üzerinde çalışacaklarını bu `begin()` ve `end()` ile dönen yineleyiciler sayesinde bilirler."},
          {
            "text": "Bir `vector` üzerinde geleneksel `for` döngüsü ve yineleyiciler ile gezinelim.",
            "code":
            "#include <iostream>\n#include <vector>\n\nint main() {\n  std::vector<int> v = {10, 20, 30};\n  \n  // Yineleyici tanımlama\n  std::vector<int>::iterator it;\n\n  for (it = v.begin(); it != v.end(); ++it) {\n    std::cout << *it << \" \"; // Değere erişmek için * kullanılır\n  }\n  // Çıktı: 10 20 30\n  return 0;\n}",
            "code_explanation":
            "`std::vector<int>::iterator` türünde bir `it` yineleyicisi tanımladık. Döngü, `it` `v.begin()` ile başlayıp, `v.end()`'e eşit olana kadar devam eder. Her adımda `++it` ile bir sonraki elemana geçilir ve `*it` ile o anki elemanın değeri okunur."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir konteynerin ilk elemanını gösteren yineleyiciyi hangi metot döndürür?",
            options: ["start()", "begin()", "first()"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir yineleyicinin gösterdiği değere erişmek için hangi operatör kullanılır?",
            codeTemplate: "std::cout << ___it;",
            correctAnswers: ["*"],
            options: ["&", "*", "->", "."],
          ),
          CodeCompletionQuestion(
            questionText: "Bir konteynerin son elemanından bir sonrasını gösteren yineleyiciyi döndüren metodu yazın.",
            codeTemplate: "for (it = v.begin(); it != v.___(); ++it)",
            correctAnswers: ["end"],
            options: ["end", "last", "finish", "stop"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir `string` vektörü için yineleyici türünü tamamlayın.",
            codeTemplate: "std::vector<string>::___ it;",
            correctAnswers: ["iterator"],
            options: ["iterator", "pointer", "iter", "ref"],
          ),
          CodeCompletionQuestion(
            questionText: "Yineleyiciyi bir sonraki elemana ilerleten ifadeyi yazın.",
            codeTemplate: "// Döngü içinde ___ kullanılır.",
            correctAnswers: ["++it"],
            options: ["it++", "++it", "it+1", "next(it)"],
          )
        ]
      }
    ]
  },

  "cpp_stl_containers": {
    "sub_lessons": [
      {
        "title": "Sıralı Konteynerler (vector, deque, list)",
        "parts": [
          {"text": "Sıralı konteynerler, elemanları girdikleri sırada tutan veri yapılarıdır."},
          {"text": "`std::vector`: Dinamik bir dizidir. Elemanlara hızlı rastgele erişim sağlar (indeks ile). En çok kullanılan konteynerdir. Sona eleman eklemek/çıkarmak hızlıdır, ancak başa veya araya eklemek yavaştır."},
          {"text": "`std::list`: Çift yönlü bağlı bir listedir. Herhangi bir konuma eleman eklemek/çıkarmak çok hızlıdır. Ancak rastgele erişim yavaştır (indeksle doğrudan erişim yoktur)."},
          {"text": "`std::deque` (Double-ended queue): Hem başa hem de sona hızlı eleman ekleme/çıkarma imkanı sunan bir yapıdır."},
          {
            "text": "`vector` ve `list`'in temel kullanım farklarına bakalım.",
            "code":
            "#include <vector>\n#include <list>\n\nint main() {\n  std::vector<int> v = {1, 2, 3};\n  v.push_back(4); // Sona ekler: {1, 2, 3, 4}\n  // v.push_front(0); // HATA! Vector'de bu metot yoktur.\n\n  std::list<int> l = {1, 2, 3};\n  l.push_back(4);  // Sona ekler: {1, 2, 3, 4}\n  l.push_front(0); // Başa ekler: {0, 1, 2, 3, 4}\n  return 0;\n}",
            "code_explanation":
            "`push_back` her ikisinde de varken, listenin en büyük avantajlarından biri olan `push_front` (başa ekleme) `vector`'de bulunmaz. Her konteynerin güçlü ve zayıf yönleri vardır."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Elemanlara indeks ile en hızlı rastgele erişim sağlayan sıralı konteyner hangisidir?",
            options: ["std::list", "std::vector", "std::map"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir `vector`'ün sonuna eleman eklemek için kullanılan metodu yazın.",
            codeTemplate: "v. ___ (10);",
            correctAnswers: ["push_back"],
            options: ["push_back", "push_front", "insert", "add"],
          ),
          CodeCompletionQuestion(
            questionText: "Hem başa hem de sona hızlı eleman ekleme/çıkarma sağlayan konteynerin adını tamamlayın.",
            codeTemplate: "std::___<int> d;",
            correctAnswers: ["deque"],
            options: ["vector", "list", "deque", "map"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir `list`'in başına eleman ekleyen metodu yazın.",
            codeTemplate: "l. ___ (5);",
            correctAnswers: ["push_front"],
            options: ["push_back", "push_front", "insert_first", "add"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir `vector`'deki eleman sayısını (boyutunu) hangi metotla öğreniriz?",
            codeTemplate: "int boyut = v.___();",
            correctAnswers: ["size"],
            options: ["size", "length", "count", "capacity"],
          )
        ]
      }
    ]
  },

  "cpp_stl_associative": {
    "sub_lessons": [
      {
        "title": "İlişkisel Konteynerler (map, set)",
        "parts": [
          {"text": "İlişkisel konteynerler, elemanları belirli bir anahtara (key) göre sıralı bir şekilde saklarlar. Bu, elemanlara hızlı erişim ve arama imkanı tanır."},
          {"text": "`std::set`: Sadece benzersiz (unique) anahtarlar saklar. Bir elemanın kümede olup olmadığını çok hızlı bir şekilde kontrol etmek için idealdir."},
          {"text": "`std::map`: Anahtar-değer (key-value) çiftleri saklar. Her anahtar benzersizdir ve bir değere karşılık gelir. Python'daki dictionary veya sözlüklere çok benzer."},
          {
            "text": "`map` kullanarak bir kişinin notlarını saklayalım.",
            "code":
            "#include <iostream>\n#include <map>\n#include <string>\n\nint main() {\n  std::map<std::string, int> notlar;\n\n  // Anahtar-değer çiftleri ekleme\n  notlar[\"Matematik\"] = 90;\n  notlar[\"Fizik\"] = 85;\n\n  std::cout << \"Matematik Notu: \" << notlar[\"Matematik\"] << std::endl;\n\n  // Map üzerinde gezinme\n  for (auto const& [ders, notu] : notlar) {\n    std::cout << ders << \": \" << notu << std::endl;\n  }\n  return 0;\n}",
            "code_explanation":
            "`std::map<std::string, int>` ifadesi, `string` türünde anahtarlar ve `int` türünde değerler tutan bir map tanımlar. `notlar[\"Matematik\"] = 90;` kodu ile 'Matematik' anahtarına 90 değerini atarız. Bu anahtar zaten varsa değeri güncellenir, yoksa yeni bir çift oluşturulur."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Anahtar-değer (key-value) çiftlerini saklayan ilişkisel konteyner hangisidir?",
            options: ["std::set", "std::vector", "std::map"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Sadece benzersiz ve sıralı elemanları tutan konteyneri tanımlayın.",
            codeTemplate: "std::___<int> benzersizSayilar;",
            correctAnswers: ["set"],
            options: ["map", "set", "list", "vector"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir `map`'teki bir anahtarın değerine erişmek için hangi operatör kullanılır?",
            codeTemplate: "int yas = yaslar[___];",
            correctAnswers: ["\"Ahmet\""],
            options: ["\"Ahmet\"", "0", "yas", "yaslar"],
          ),
          CodeCompletionQuestion(
            questionText: "string anahtarlar ve double değerler tutan bir `map` tanımlayın.",
            codeTemplate: "std::map<std::string, ___> fiyatlar;",
            correctAnswers: ["double"],
            options: ["int", "double", "char*", "string"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir `set`'e yeni bir eleman eklemek için hangi metot kullanılır?",
            codeTemplate: "harfler. ___ ('a');",
            correctAnswers: ["insert"],
            options: ["push_back", "add", "insert", "append"],
          )
        ]
      }
    ]
  },

  "cpp_stl_algorithms": {
    "sub_lessons": [
      {
        "title": "STL Algoritmalarına Giriş (sort, find)",
        "parts": [
          {"text": "STL'in algoritma kütüphanesi (`<algorithm>`), konteynerler üzerinde işlem yapmak için hazır fonksiyonlar sunar."},
          {"text": "Bu algoritmalar yineleyicilerle çalışır, bu da onları `vector`, `list` gibi farklı konteyner türleriyle uyumlu hale getirir."},
          {"text": "`std::sort(baslangic, bitis)`: Belirtilen aralığı sıralar."},
          {"text": "`std::find(baslangic, bitis, deger)`: Belirtilen aralıkta bir değeri arar. Değeri bulursa o elemanı gösteren bir yineleyici, bulamazsa `bitis` yineleyicisini döndürür."},
          {
            "text": "Bir vektörde arama ve sıralama yapalım.",
            "code":
            "#include <iostream>\n#include <vector>\n#include <algorithm>\n\nint main() {\n  std::vector<int> sayilar = {4, 1, 3, 2};\n\n  // 3 değerini arayalım\n  auto it = std::find(sayilar.begin(), sayilar.end(), 3);\n\n  if (it != sayilar.end()) {\n    std::cout << \"3 bulundu!\" << std::endl;\n  }\n\n  // Sıralayalım\n  std::sort(sayilar.begin(), sayilar.end());\n  return 0;\n}",
            "code_explanation":
            "`std::find` fonksiyonu, `sayilar.begin()` ile `sayilar.end()` aralığında `3` değerini arar. Sonuç, bulunan elemanın yineleyicisidir. Bu sonucun `sayilar.end()`'e eşit olup olmadığını kontrol ederek elemanın bulunup bulunmadığını anlarız."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "STL algoritmalarını kullanmak için hangi başlık dosyası dahil edilmelidir?",
            options: ["<vector>", "<iterator>", "<algorithm>"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Bir `vector`'ü baştan sona sıralayan `sort` fonksiyonu çağrısını tamamlayın.",
            codeTemplate: "std::sort(v.begin(), v.___());",
            correctAnswers: ["end"],
            options: ["end", "back", "last", "size"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir aralıkta belirli bir değeri arayan STL algoritmasının adı nedir?",
            codeTemplate: "auto it = std::___(v.begin(), v.end(), 42);",
            correctAnswers: ["find"],
            options: ["search", "find", "locate", "get"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir konteynerdeki elemanların sayısını sayan `count` algoritmasını tamamlayın.",
            codeTemplate: "int adet = std::count(v.begin(), v.end(), ___);",
            correctAnswers: ["5"],
            options: ["5", "adet", "v", "count"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir vektördeki tüm elemanları ters çeviren `reverse` algoritmasını çağırın.",
            codeTemplate: "std::___(v.begin(), v.end());",
            correctAnswers: ["reverse"],
            options: ["sort", "reverse", "flip", "swap"],
          )
        ]
      }
    ]
  },

  // =======================================================================
  // BÖLÜM 9: HATA YÖNETİMİ VE ŞABLONLAR
  // =======================================================================

  "cpp_exception_handling": {
    "sub_lessons": [
      {
        "title": "Hata Yönetimi (try, catch, throw)",
        "parts": [
          {"text": "Programlar çalışırken beklenmedik durumlar oluşabilir (örn: sıfıra bölme, dosya bulunamaması). Bu durumlara 'istisna' (exception) denir."},
          {"text": "C++, bu istisnaları yönetmek için `try`, `catch`, ve `throw` anahtar kelimelerini sunar."},
          {"text": "`try`: Hata oluşturma potansiyeli olan kod bu blok içine yazılır."},
          {"text": "`throw`: Bir hata durumu oluştuğunda, bir istisna 'fırlatmak' için kullanılır."},
          {"text": "`catch`: `try` bloğunda fırlatılan bir istisnayı 'yakalamak' için kullanılır. Programın çökmesini önler ve hatayı yönetmemizi sağlar."},
          {
            "text": "Sıfıra bölme hatasını yöneten bir örnek.",
            "code":
            "#include <iostream>\n\ndouble bol(int a, int b) {\n  if (b == 0) {\n    throw \"Sıfıra bölme hatası!\"; // Hata fırlat\n  }\n  return (double)a / b;\n}\n\nint main() {\n  try {\n    double sonuc = bol(10, 0);\n    std::cout << sonuc << std::endl;\n  } catch (const char* hataMesaji) { // Hata yakala\n    std::cout << \"İstisna yakalandı: \" << hataMesaji << std::endl;\n  }\n  return 0;\n}",
            "code_explanation":
            "`bol(10, 0)` çağrıldığında `b` sıfır olduğu için `throw` ifadesi çalışır ve bir karakter dizisi fırlatır. `try` bloğunun çalışması durur ve kontrol, fırlatılan veri türüyle eşleşen `catch` bloğuna geçer. Böylece program çökmeden hata mesajı ekrana yazdırılır."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir istisna (exception) fırlatmak için hangi anahtar kelime kullanılır?",
            options: ["try", "catch", "throw"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Hata potansiyeli taşıyan kod hangi blok içine yazılır?",
            codeTemplate: "___ {\n  // Tehlikeli kod\n}",
            correctAnswers: ["try"],
            options: ["try", "catch", "throw", "if"],
          ),
          CodeCompletionQuestion(
            questionText: "Fırlatılan bir istisnayı yakalayan bloğu tamamlayın.",
            codeTemplate: "} ___ (int hataKodu) {\n  // Hata yönetimi\n}",
            correctAnswers: ["catch"],
            options: ["try", "catch", "throw", "except"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir `try...catch` bloğunu tamamlayın.",
            codeTemplate: "___ {\n  throw 404;\n} ___ (int e) {\n  cout << e;\n}",
            correctAnswers: ["try", "catch"],
            options: ["try", "catch", "if", "else"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir `string` nesnesi fırlatan `throw` ifadesini yazın.",
            codeTemplate: "throw std::string(___);",
            correctAnswers: ["\"Hata!\""],
            options: ["\"Hata!\"", "error", "101", "main"],
          )
        ]
      }
    ]
  },

  "cpp_function_templates": {
    "sub_lessons": [
      {
        "title": "Fonksiyon Şablonları (Function Templates)",
        "parts": [
          {"text": "Farklı veri tipleriyle aynı işi yapan fonksiyonlar yazmamız gerektiğinde kod tekrarı yaparız. Örneğin `int` için `topla`, `double` için `topla`..."},
          {"text": "Fonksiyon şablonları, bu sorunu çözer. Belirli bir veri tipine bağlı olmayan, genel bir fonksiyon tanımı yapmamızı sağlar."},
          {"text": "`template <typename T>` veya `template <class T>` ifadesiyle bir şablon tanımlanır. Buradaki `T` (geleneksel bir isimdir), fonksiyon çağrıldığında derleyici tarafından gerçek veri tipiyle (int, double, string vb.) değiştirilecek olan bir yer tutucudur."},
          {
            "text": "Herhangi bir türden iki değeri toplayan bir şablon fonksiyonu.",
            "code":
            "#include <iostream>\n\ntemplate <typename T>\nT topla(T a, T b) {\n  return a + b;\n}\n\nint main() {\n  std::cout << topla(5, 3) << std::endl;         // T = int olur, çıktı: 8\n  std::cout << topla(5.5, 3.2) << std::endl;   // T = double olur, çıktı: 8.7\n  return 0;\n}",
            "code_explanation":
            "`topla` fonksiyonunu `template` olarak tanımladık. `topla(5, 3)` çağrısında derleyici `T`'nin `int` olduğunu anlar ve `int topla(int, int)` fonksiyonunu otomatik olarak oluşturur. `topla(5.5, 3.2)` çağrısında ise `double` için aynısını yapar."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Fonksiyon şablonlarının temel amacı nedir?",
            options: ["Kodun daha hızlı çalışmasını sağlamak", "Farklı veri tipleri için aynı fonksiyonu tekrar yazmayı önlemek", "Hataları yönetmek"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir fonksiyon şablonu tanımını başlatan anahtar kelimeyi yazın.",
            codeTemplate: "___ <typename T>\nT fonksiyon(T a) { return a; }",
            correctAnswers: ["template"],
            options: ["template", "class", "typename", "function"],
          ),
          CodeCompletionQuestion(
            questionText: "Şablon tanımındaki genel tip yer tutucusunu (`T`) tamamlayın.",
            codeTemplate: "template <typename ___>\nT max(T a, T b) { return a > b ? a : b; }",
            correctAnswers: ["T"],
            options: ["T", "Type", "Data", "V"],
          ),
          CodeCompletionQuestion(
            questionText: "Şablon parametresini `class` anahtar kelimesiyle tanımlayın.",
            codeTemplate: "template <___ T>\nvoid yazdir(T deger) { cout << deger; }",
            correctAnswers: ["class"],
            options: ["class", "typename", "struct", "auto"],
          ),
          CodeCompletionQuestion(
            questionText: "İki şablon parametresi (`T1`, `T2`) alan bir fonksiyon şablonu tanımını tamamlayın.",
            codeTemplate: "template <typename T1, typename ___>\nvoid fonksiyon(T1 a, T2 b) { }",
            correctAnswers: ["T2"],
            options: ["T", "T1", "T2", "U"],
          )
        ]
      }
    ]
  },

  "cpp_class_templates": {
    "sub_lessons": [
      {
        "title": "Sınıf Şablonları (Class Templates)",
        "parts": [
          {"text": "Tıpkı fonksiyonlar gibi, sınıfları da şablon olarak tanımlayabiliriz."},
          {"text": "Sınıf şablonları, farklı veri tiplerini depolayabilen genel sınıflar oluşturmamızı sağlar. STL'deki `vector`, `map` gibi tüm konteynerler aslında sınıf şablonlarıdır."},
          {"text": "Örneğin, `int` tutan bir `vector<int>`, `string` tutan bir `vector<string>` oluşturabiliriz. Hepsi aynı `vector` şablonundan türetilir."},
          {
            "text": "Herhangi bir türden veri tutabilen basit bir `Kutu` sınıfı şablonu oluşturalım.",
            "code":
            "#include <iostream>\n\ntemplate <class T>\nclass Kutu {\nprivate:\n  T icerik;\npublic:\n  void koy(T yeniIcerik) { icerik = yeniIcerik; }\n  T al() { return icerik; }\n};\n\nint main() {\n  Kutu<int> intKutusu;\n  intKutusu.koy(10);\n  std::cout << intKutusu.al() << std::endl; // 10\n\n  Kutu<std::string> stringKutusu;\n  stringKutusu.koy(\"Merhaba\");\n  std::cout << stringKutusu.al() << std::endl; // Merhaba\n  return 0;\n}",
            "code_explanation":
            "`Kutu` sınıfını `T` tipine bağlı olarak tanımladık. `Kutu<int>` yazdığımızda, derleyici `T`'nin `int` olduğu bir `Kutu` sınıfı versiyonu oluşturur. `Kutu<std::string>` için de aynısını `string` tipiyle yapar."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`std::vector`, `std::map` gibi STL konteynerleri aslında ne tür yapılardır?",
            options: ["Normal Sınıflar", "Sınıf Şablonları", "Fonksiyon Şablonları"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "`T` tipinde bir eleman tutan bir sınıf şablonu tanımını başlatın.",
            codeTemplate: "___ <typename T>\nclass Veri { T eleman; };",
            correctAnswers: ["template"],
            options: ["template", "class", "typename", "auto"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir sınıf şablonundan nesne oluştururken, kullanılacak spesifik tipi hangi karakterler arasına yazarız?",
            codeTemplate: "Kutu___int___ intKutusu;",
            correctAnswers: ["<", ">"],
            options: ["(", ")", "[", "]", "<", ">"],
          ),
          CodeCompletionQuestion(
            questionText: "`string` tutacak bir `Depo` şablon sınıfından nesne oluşturun.",
            codeTemplate: "Depo<___> stringDeposu;",
            correctAnswers: ["std::string"],
            options: ["std::string", "char*", "int", "Depo"],
          ),
          CodeCompletionQuestion(
            questionText: "Sınıf şablonunun metotlarını sınıf dışında tanımlarken `template` ve sınıf adını nasıl yazarsınız?",
            codeTemplate: "template<typename T>\nvoid Depo<___>::metot() { }",
            correctAnswers: ["T"],
            options: ["T", "Depo", "typename", "void"],
          )
        ]
      }
    ]
  },

  // =======================================================================
  // BÖLÜM 10: MODERN C++ ÖZELLİKLERİ
  // =======================================================================

  "cpp_smart_pointers": {
    "sub_lessons": [
      {
        "title": "Akıllı İşaretçiler (unique_ptr, shared_ptr)",
        "parts": [
          {"text": "Geleneksel C++'da `new` ile ayrılan belleğin `delete` ile serbest bırakılması programcının sorumluluğundadır. Bu, unutulduğunda 'bellek sızıntılarına' (memory leaks) yol açar."},
          {"text": "Modern C++, bu sorunu çözmek için 'akıllı işaretçiler' (smart pointers) sunar. Bu işaretçiler, yönettikleri bellek alanını kapsamları (scope) bittiğinde otomatik olarak serbest bırakırlar."},
          {"text": "`std::unique_ptr`: Yönettiği nesnenin tek sahibi odur. Kopyalanamaz, sadece taşınabilir (move)."},
          {"text": "`std::shared_ptr`: Yönettiği nesnenin birden fazla sahibi olmasına izin verir. Bir referans sayacı tutar. Sayaç sıfıra ulaştığında bellek serbest bırakılır."},
          {
            "text": "Akıllı işaretçileri kullanmak için `<memory>` başlık dosyasını dahil etmeliyiz.",
            "code":
            "#include <iostream>\n#include <memory>\n\nint main() {\n  // unique_ptr: Tek sahip\n  std::unique_ptr<int> p1 = std::make_unique<int>(100);\n  std::cout << *p1 << std::endl;\n  // p1 kapsam dışına çıktığında bellek otomatik olarak silinir.\n\n  // shared_ptr: Paylaşılan sahip\n  std::shared_ptr<int> p2 = std::make_shared<int>(200);\n  std::shared_ptr<int> p3 = p2; // Kopyalanabilir, sayaç artar.\n  std::cout << *p2 << \" - Sayaç: \" << p2.use_count() << std::endl;\n  // p2 ve p3 kapsam dışına çıktığında bellek silinir.\n  return 0;\n}",
            "code_explanation":
            "`make_unique` ve `make_shared` fonksiyonları, akıllı işaretçileri güvenli bir şekilde oluşturmanın en iyi yoludur. Gördüğünüz gibi kodda hiç `delete` kullanmadık."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Akıllı işaretçilerin temel amacı nedir?",
            options: ["Pointer'ları daha hızlı yapmak", "Bellek sızıntılarını önlemek", "Daha fazla bellek ayırmak"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Akıllı işaretçileri kullanmak için hangi başlık dosyası dahil edilmelidir?",
            codeTemplate: "#include <___>",
            correctAnswers: ["memory"],
            options: ["memory", "pointer", "smart", "iostream"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir nesnenin tek sahibi olan ve kopyalanamayan akıllı işaretçi hangisidir?",
            codeTemplate: "std::___<MyClass> ptr;",
            correctAnswers: ["unique_ptr"],
            options: ["unique_ptr", "shared_ptr", "weak_ptr", "auto_ptr"],
          ),
          CodeCompletionQuestion(
            questionText: "Paylaşımlı sahipliğe izin veren ve referans sayacı tutan akıllı işaretçi hangisidir?",
            codeTemplate: "std::___<MyClass> ptr;",
            correctAnswers: ["shared_ptr"],
            options: ["unique_ptr", "shared_ptr", "weak_ptr", "raw_ptr"],
          ),
          CodeCompletionQuestion(
            questionText: "Güvenli bir şekilde `unique_ptr` oluşturmak için hangi fonksiyon kullanılır?",
            codeTemplate: "auto p = std::___<int>(42);",
            correctAnswers: ["make_unique"],
            options: ["make_unique", "new_unique", "create_unique", "alloc_unique"],
          )
        ]
      }
    ]
  },

  "cpp_move_semantics": {
    "sub_lessons": [
      {
        "title": "Taşıma Semantiği (Move Semantics) ve rvalue Referansları",
        "parts": [
          {"text": "Geleneksel olarak, nesneleri kopyalamak (özellikle `vector` gibi büyük nesneleri) pahalı bir işlemdir. Yeni bellek ayrılır ve tüm veriler kopyalanır."},
          {"text": "Taşıma Semantiği (Move Semantics), bir nesnenin kaynaklarını (örneğin bellek işaretçisini) kopyalamak yerine, geçici bir nesneden kalıcı bir nesneye 'çalmayı' veya 'taşımayı' sağlar."},
          {"text": "Bu, gereksiz kopyalamaları önleyerek performansı önemli ölçüde artırır."},
          {"text": "Bu mekanizma, `&&` ile belirtilen 'rvalue referansları' kullanılarak gerçekleştirilir. Rvalue, genellikle ifadenin sağ tarafında yer alan geçici değerleri ifade eder."},
          {
            "text": "`std::move`, bir nesneyi rvalue'ya dönüştürerek taşıma işleminin tetiklenmesini sağlar.",
            "code":
            "#include <iostream>\n#include <vector>\n\nint main() {\n  std::vector<int> v1 = {1, 2, 3};\n  // std::vector<int> v2 = v1; // Kopyalama, pahalı olabilir\n\n  // Taşıma: v1'in kaynakları v2'ye taşınır. v1 geçersiz hale gelir.\n  std::vector<int> v2 = std::move(v1);\n\n  std::cout << \"v2 boyutu: \" << v2.size() << std::endl;\n  // std::cout << \"v1 boyutu: \" << v1.size() << std::endl; // v1 artık kullanılmamalı\n  return 0;\n}",
            "code_explanation":
            "`std::move(v1)` ifadesi, `v1`'in içeriğini kopyalamak yerine doğrudan `v2`'ye aktarır. Bu işlemden sonra `v1` boş ve tanımsız bir durumda kalır, bu yüzden tekrar kullanılmamalıdır. Bu, özellikle büyük veri yapılarında büyük bir performans kazancı sağlar."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Taşıma Semantiği'nin (Move Semantics) ana avantajı nedir?",
            options: ["Daha güvenli kod", "Gereksiz kopyalamaları önleyerek performansı artırmak", "Daha az kod yazmak"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir lvalue'yu rvalue'ya dönüştürerek taşıma işlemini tetikleyen fonksiyonun adı nedir?",
            codeTemplate: "std::vector<int> v2 = std::___(v1);",
            correctAnswers: ["move"],
            options: ["move", "copy", "transfer", "cast"],
          ),
          CodeCompletionQuestion(
            questionText: "Rvalue referansı hangi sembollerle gösterilir?",
            codeTemplate: "void fonksiyon(std::string___ s);",
            correctAnswers: ["&&"],
            options: ["&", "&&", "*", "**"],
          ),
          CodeCompletionQuestion(
            questionText: "Taşıma işlemi sonrası kaynak nesne ne durumda olur?",
            codeTemplate: "// ___ ve kullanılmamalıdır.",
            correctAnswers: ["Geçersiz"],
            options: ["Değişmemiş", "Kopyalanmış", "Geçersiz", "Boş"],
          ),
          CodeCompletionQuestion(
            questionText: "Taşıma kurucusunu (move constructor) tanımlayın.",
            codeTemplate: "MyClass(MyClass___ other) noexcept { /* ... */ }",
            correctAnswers: ["&&"],
            options: ["&", "const&", "&&", "*"],
          )
        ]
      }
    ]
  },

  "cpp_lambda_expressions": {
    "sub_lessons": [
      {
        "title": "Lambda İfadeleri",
        "parts": [
          {"text": "Lambda ifadeleri, C++11 ile gelen ve isimsiz, yerinde (inline) fonksiyonlar oluşturmamızı sağlayan güçlü bir özelliktir."},
          {"text": "Genellikle STL algoritmaları gibi, argüman olarak fonksiyon bekleyen yerlerde kullanılırlar. Ayrı bir fonksiyon tanımlama zahmetinden kurtarırlar."},
          {"text": "Temel yapısı şöyledir: `[yakalama_listesi](parametreler) -> dönüş_tipi { fonksiyon_gövdesi }`."},
          {"text": "`[ ]`: Yakalama listesi (Capture list). Dış kapsamdaki değişkenlere erişimi kontrol eder. `[&]` referans ile, `[=]` kopya ile yakalar."},
          {
            "text": "Bir vektördeki elemanları `for_each` algoritması ve bir lambda ifadesi ile yazdıralım.",
            "code":
            "#include <iostream>\n#include <vector>\n#include <algorithm>\n\nint main() {\n  std::vector<int> v = {1, 2, 3, 4, 5};\n  int carpan = 3;\n\n  // Lambda ifadesi burada kullanılıyor\n  std::for_each(v.begin(), v.end(), \n    [&carpan](int x) { \n      std::cout << x * carpan << \" \"; \n    }\n  );\n  // Çıktı: 3 6 9 12 15\n  return 0;\n}",
            "code_explanation":
            "`for_each` algoritmasının üçüncü argümanı olarak bir lambda ifadesi verdik. `[&carpan]` ifadesi, dışarıdaki `carpan` değişkenini referans yoluyla yakalar, böylece lambda içinde kullanılabilir. `(int x)` ise lambdanın aldığı parametredir."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Lambda ifadeleri ne işe yarar?",
            options: ["Sınıf oluşturur", "İsimsiz, yerinde fonksiyonlar oluşturur", "Bellek yönetimi yapar"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir lambda ifadesinin başlangıcını belirten semboller hangileridir?",
            codeTemplate: "auto f = ___() { };",
            correctAnswers: ["[]"],
            options: ["()", "{}", "[]", "<>"],
          ),
          CodeCompletionQuestion(
            questionText: "Dış kapsamdaki tüm değişkenleri referans yoluyla yakalayan yakalama listesini (capture list) yazın.",
            codeTemplate: "auto f = [___]() { };",
            correctAnswers: ["&"],
            options: ["&", "=", "this", "*"],
          ),
          CodeCompletionQuestion(
            questionText: "`x` ve `y` adında iki `int` parametre alan bir lambda ifadesinin parametre listesini tamamlayın.",
            codeTemplate: "auto topla = [](___ x, int y) { return x + y; };",
            correctAnswers: ["int"],
            options: ["int", "auto", "var", "double"],
          ),
          CodeCompletionQuestion(
            questionText: "Dış kapsamdaki tüm değişkenleri kopya yoluyla yakalayan yakalama listesini yazın.",
            codeTemplate: "auto f = [___]() { };",
            correctAnswers: ["="],
            options: ["&", "=", "all", "copy"],
          )
        ]
      }
    ]
  },

  // =======================================================================
  // BÖLÜM 11: DOSYA İŞLEMLERİ
  // =======================================================================

  "cpp_fstream": {
    "sub_lessons": [
      {
        "title": "Dosya Akışları (fstream)",
        "parts": [
          {"text": "C++, dosya işlemleri için akış (stream) tabanlı bir yaklaşım kullanır. Bu, konsol G/Ç (`cin`, `cout`) ile benzer ve tutarlı bir yapı sunar."},
          {"text": "Dosya işlemleri için `<fstream>` başlık dosyası kullanılır."},
          {"text": "Üç temel dosya akış sınıfı vardır:"},
          {"text": "`ofstream`: Çıktı dosyası akışı (Output File Stream). Dosyaya yazmak için kullanılır."},
          {"text": "`ifstream`: Girdi dosyası akışı (Input File Stream). Dosyadan okumak için kullanılır."},
          {"text": "`fstream`: Hem okuma hem de yazma yapabilen dosya akışı."},
          {
            "text": "Dosya işlemleri bittiğinde, açılan dosyanın `close()` metodu ile kapatılması önemlidir.",
            "code":
            "#include <fstream>\n#include <iostream>\n\nint main() {\n  // Dosyaya yazma\n  std::ofstream yazmaDosyasi(\"selam.txt\");\n  if (yazmaDosyasi.is_open()) {\n    yazmaDosyasi << \"Merhaba C++ Dosya İşlemleri!\\n\";\n    yazmaDosyasi.close();\n  } else {\n    std::cout << \"Dosya açılamadı.\";\n  }\n  return 0;\n}",
            "code_explanation":
            "`ofstream` türünde bir nesne oluşturarak 'selam.txt' dosyasını yazma modunda açtık. `is_open()` ile dosyanın başarıyla açılıp açılmadığını kontrol ettik. `<<` operatörünü kullanarak, `cout`'a yazar gibi dosyaya yazdık ve son olarak dosyayı kapattık."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "C++'da dosya işlemlerini kullanmak için hangi başlık dosyası dahil edilmelidir?",
            options: ["<iostream>", "<string>", "<fstream>"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Bir dosyadan veri okumak için kullanılan temel sınıf hangisidir?",
            codeTemplate: "std::___ dosya(\"veri.txt\");",
            correctAnswers: ["ifstream"],
            options: ["ifstream", "ofstream", "fstream", "iostream"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir dosyaya veri yazmak için kullanılan temel sınıf hangisidir?",
            codeTemplate: "std::___ dosya(\"cikti.txt\");",
            correctAnswers: ["ofstream"],
            options: ["ifstream", "ofstream", "fstream", "strstream"],
          ),
          CodeCompletionQuestion(
            questionText: "Açılan bir dosya ile işimiz bittiğinde hangi metodu çağırmalıyız?",
            codeTemplate: "dosya.___();",
            correctAnswers: ["close"],
            options: ["close", "end", "stop", "finish"],
          ),
          CodeCompletionQuestion(
            questionText: "Dosyanın başarıyla açılıp açılmadığını kontrol eden metodu tamamlayın.",
            codeTemplate: "if (dosya.___()) { /* ... */ }",
            correctAnswers: ["is_open"],
            options: ["is_open", "good", "ready", "opened"],
          )
        ]
      }
    ]
  },

  "cpp_file_read_write": {
    "sub_lessons": [
      {
        "title": "Dosyaya Yazma ve Dosyadan Okuma",
        "parts": [
          {"text": "Dosya yazma ve okuma işlemleri, `<<` (insertion) ve `>>` (extraction) operatörleri ile oldukça basittir."},
          {"text": "Dosyaya Yazma (`ofstream`): `<<` operatörü ile veriler dosyaya yazılır. Tıpkı `cout` gibi."},
          {"text": "Dosyadan Okuma (`ifstream`): `>>` operatörü ile veriler dosyadan okunur. Boşluk karakterine (space, tab, newline) kadar okuma yapar."},
          {"text": "Dosyanın tüm satırını okumak için `std::getline(dosya_akisi, string_degiskeni)` fonksiyonu kullanılır."},
          {
            "text": "Bir dosyaya birkaç satır yazıp sonra bu satırları teker teker okuyalım.",
            "code":
            "#include <fstream>\n#include <iostream>\n#include <string>\n\nint main() {\n  // Yazma\n  std::ofstream yaz(\"gunluk.txt\");\n  yaz << \"Satır 1\\n\";\n  yaz << \"Satır 2\\n\";\n  yaz.close();\n\n  // Okuma\n  std::ifstream oku(\"gunluk.txt\");\n  std::string satir;\n  while (std::getline(oku, satir)) {\n    std::cout << \"Okunan: \" << satir << std::endl;\n  }\n  oku.close();\n  return 0;\n}",
            "code_explanation":
            "Önce `ofstream` ile dosyayı açıp iki satır yazdık. Sonra `ifstream` ile aynı dosyayı okuma modunda açtık. `while` döngüsü ve `std::getline` ile dosyanın sonuna kadar tüm satırları tek tek okuyup ekrana yazdırdık."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir dosyadan boşluk içeren tüm satırı okumak için en uygun yöntem hangisidir?",
            options: ["operator >>", "std::getline()", "read()"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir `ofstream` nesnesi kullanarak dosyaya 'Merhaba' yazan kodu tamamlayın.",
            codeTemplate: "yazmaDosyasi ___ \"Merhaba\";",
            correctAnswers: ["<<"],
            options: [">>", "<<", "->", "."],
          ),
          CodeCompletionQuestion(
            questionText: "Bir `ifstream` nesnesinden bir `int` değişkenine sayı okuyan kodu tamamlayın.",
            codeTemplate: "int sayi;\nokumaDosyasi ___ sayi;",
            correctAnswers: [">>"],
            options: [">>", "<<", "get", "read"],
          ),
          CodeCompletionQuestion(
            questionText: "`getline` fonksiyonu ile dosyadan bir satır okuyup `str` değişkenine atayan kodu tamamlayın.",
            codeTemplate: "std::string str;\nstd::getline(___, str);",
            correctAnswers: ["okumaDosyasi"],
            options: ["okumaDosyasi", "str", "cin", "cout"],
          ),
          CodeCompletionQuestion(
            questionText: "Dosyanın sonuna ulaşıp ulaşılmadığını kontrol eden `while` döngüsünü tamamlayın. (>> operatörü başarı durumunda true döner)",
            codeTemplate: "while (dosya ___ kelime) { /* ... */ }",
            correctAnswers: [">>"],
            options: ["<<", ">>", "getline", "read"],
          )
        ]
      }
    ]
  },
};

