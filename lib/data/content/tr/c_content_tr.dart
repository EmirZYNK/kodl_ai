import 'package:learn_code/models/quiz_models.dart'; // Bu importun dosyanızda olduğundan emin olun

final Map<String, Map<String, dynamic>> cContentTr = {
  // BÖLÜM 1: GİRİŞ
  "c_what_is_c": {
    "parts": [
      {"text": "C, 1970'lerin başında Dennis Ritchie tarafından Bell Laboratuvarları'nda geliştirilmiş, yapısal bir programlama dilidir."},
      {"text": "Hem yüksek seviyeli dillerin okunabilirliğine hem de düşük seviyeli dillerin donanıma erişim gücüne sahip olduğu için 'orta seviyeli' bir dil olarak kabul edilir."},
      {"text": "İşletim sistemleri (Unix, Windows, Linux), derleyiciler, veritabanları ve sayısız modern programlama dilinin geliştirilmesinde temel teşkil etmiştir."},
      {"text": "Performansın kritik olduğu, bellek yönetiminin doğrudan kontrol edilmesi gereken gömülü sistemler ve sistem programlama gibi alanlarda hala vazgeçilmezdir."},
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "C dili kim tarafından ve nerede geliştirilmiştir?",
        options: ["Bjarne Stroustrup, AT&T", "Dennis Ritchie, Bell Labs", "James Gosling, Sun Microsystems"],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "Aşağıdakilerden hangisi C dilinin en belirgin özelliklerinden biridir?",
        options: ["Otomatik bellek yönetimi (Garbage Collection)", "Platformdan tamamen bağımsız olması (JVM gibi)", "Doğrudan bellek yönetimi ve donanıma yakın olması"],
        correctAnswerIndex: 2,
      ),
      MultipleChoiceQuestion(
        questionText: "C dili hangi programlama paradigmasına dayanır?",
        options: ["Nesne Yönelimli", "Yapısal (Prosedürel)", "Fonksiyonel"],
        correctAnswerIndex: 1,
      ),
    ]
  },
  "c_setup": {
    "parts": [
      {"text": "C kodu yazmak ve çalıştırmak için bir derleyiciye ve bir metin editörüne ihtiyacımız var."},
      {"text": "Derleyici, yazdığımız C kodunu (.c uzantılı dosya) makinenin anlayabileceği makine koduna (.exe, .o uzantılı dosyalar) çeviren programdır."},
      {"text": "Windows kullanıcıları için popüler bir derleyici seti MinGW (Minimalist GNU for Windows)'dir. Bu set, GCC (GNU Compiler Collection) derleyicisini içerir."},
      {"text": "Kodlarımızı yazmak için ise bir IDE (Bütünleşik Geliştirme Ortamı) kullanmak işimizi çok kolaylaştırır. Code::Blocks (MinGW ile birlikte gelir) veya Visual Studio Code (MinGW'yi ayrıca kurarak) yeni başlayanlar için harika seçeneklerdir."},
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Yazdığımız C kodunu makine diline çeviren programa ne denir?",
        options: ["Yorumlayıcı (Interpreter)", "Derleyici (Compiler)", "Hata Ayıklayıcı (Debugger)"],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "Windows için popüler GCC derleyici dağıtımı hangisidir?",
        options: ["Clang", "MinGW", "MSVC"],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "Code::Blocks veya VS Code gibi araçların genel adı nedir?",
        options: ["İşletim Sistemi", "IDE (Bütünleşik Geliştirme Ortamı)", "Donanım"],
        correctAnswerIndex: 1,
      ),
    ]
  },
  "c_hello_world": {
    "parts": [
      {"text": "C'de ilk programımız olan 'Hello, World!' uygulamasını yazalım."},
      {"text": "`#include <stdio.h>`: Bu bir 'ön işlemci komutudur'. Standart giriş/çıkış fonksiyonlarını (örneğin `printf`) içeren `stdio.h` (Standard Input/Output Header) kütüphanesini programımıza dahil eder."},
      {"text": "`int main()`: Her C programının bir giriş noktası vardır ve bu, `main` fonksiyonudur. Program çalışmaya buradan başlar."},
      {"text": "`printf(\"Hello, World!\");`: `printf` fonksiyonu, ekrana formatlı çıktı yazdırmak için kullanılır."},
      {"text": "`return 0;`: `main` fonksiyonunun başarıyla tamamlandığını işletim sistemine bildirir."},
      {
        "text": "İşte ilk C kodumuz:",
        "code": "#include <stdio.h>\n\nint main() {\n  printf(\"Hello, World!\\n\");\n  return 0;\n}",
        "code_explanation": "Bu kod derlendiğinde ve çalıştırıldığında, ekrana 'Hello, World!' yazdırır. `\\n` ise bir alt satıra geçmeyi sağlayan özel bir karakterdir."
      },
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir C programının çalışmaya başladığı ana fonksiyon hangisidir?",
        options: ["start()", "main()", "begin()"],
        correctAnswerIndex: 1,
      ),
      CodeCompletionQuestion(
        questionText: "`printf` fonksiyonunu kullanabilmek için hangi kütüphaneyi dahil etmeliyiz?",
        codeTemplate: "#include <___>",
        correctAnswers: ["stdio.h"],
        options: ["math.h", "stdio.h", "stdlib.h"],
      ),
      CodeCompletionQuestion(
        questionText: "Ekrana \"C öğreniyorum\" yazdıran kodu tamamlayın.",
        codeTemplate: "___(\"C öğreniyorum\");",
        correctAnswers: ["printf"],
        options: ["print", "printf", "cout"],
      ),
    ]
  },

  // BÖLÜM 2: TEMELLER
  "c_data_types_variables": {
    "parts": [
      {"text": "Değişkenler, verileri hafızada tutmak için ayrılan isimlendirilmiş bölgelerdir. C'de bir değişken tanımlanırken tipi mutlaka belirtilmelidir."},
      {"text": "Temel Veri Türleri:\n- `int`: Tam sayılar (örn: 10, -250)\n- `float`: Tek duyarlıklı ondalıklı sayılar (örn: 3.14f)\n- `double`: Çift duyarlıklı (daha hassas) ondalıklı sayılar (örn: 3.14159)\n- `char`: Tek bir karakter (örn: 'A', 'b', '9')"},
      {
        "text": "Değişken tanımlama ve değer atama:",
        "code": "int yas = 30;\nfloat sicaklik = 25.5f;\ndouble pi = 3.14159265;\nchar sinif = 'A';",
        "code_explanation": "Her değişken `veri_tipi degisken_adi = deger;` formatında tanımlanır."
      },
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir öğrencinin not ortalamasını (örn: 85.7) saklamak için en uygun veri türü hangisidir?",
        options: ["int", "char", "float veya double"],
        correctAnswerIndex: 2,
      ),
      CodeCompletionQuestion(
        questionText: "Değeri 100 olan bir 'puan' değişkeni oluşturun.",
        codeTemplate: "___ puan = 100;",
        correctAnswers: ["int"],
        options: ["char", "double", "int"],
      ),
      MultipleChoiceQuestion(
        questionText: "Tek bir harfi saklamak için hangi veri türü kullanılır?",
        options: ["String", "char", "int"],
        correctAnswerIndex: 1,
      ),
    ]
  },
  "c_printf_scanf": {
    "parts": [
      {"text": "`printf`, ekrana formatlı veri yazdırmak; `scanf`, kullanıcıdan formatlı veri almak için kullanılır."},
      {"text": "Her iki fonksiyon da 'format belirleyicileri' kullanır. Bunlar, yazdırılacak veya okunacak verinin tipini belirtir.\n- `%d`: Tam sayı (int)\n- `%f`: Ondalıklı sayı (float/double)\n- `%c`: Tek karakter (char)\n- `%s`: Karakter dizisi (string)"},
      {
        "text": "`printf` ile değişken yazdırma:",
        "code": "int yas = 25;\nprintf(\"Kullanıcının yaşı: %d\\n\", yas);",
        "code_explanation": "`%d`, `yas` değişkeninin değerinin yazdırılacağı yeri belirtir."
      },
      {"text": "`scanf` ile veri okurken, verinin saklanacağı değişkenin bellek adresini göndermemiz gerekir. Bunun için değişkenin önüne `&` (adres operatörü) koyarız."},
      {
        "text": "`scanf` ile kullanıcıdan veri alma:",
        "code": "int sayi;\nprintf(\"Lütfen bir sayı giriniz: \");\nscanf(\"%d\", &sayi);",
        "code_explanation": "Kullanıcının girdiği tam sayı, `sayi` değişkeninin bellek adresine yazılır."
      },
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "`printf` fonksiyonunda bir `int` değişkeni yazdırmak için hangi format belirleyicisi kullanılır?",
        options: ["%f", "%c", "%d"],
        correctAnswerIndex: 2,
      ),
      CodeCompletionQuestion(
        questionText: "`scanf` ile bir değişkenin değerini okurken değişkenin önüne hangi operatör konulmalıdır?",
        codeTemplate: "scanf(\"%f\", ___ &ortalama);",
        correctAnswers: ["&"],
        options: ["*", "&", ""],
      ),
      CodeCompletionQuestion(
        questionText: "Bir `char` değişkeni olan `harf`'i ekrana yazdıran kodu tamamlayın.",
        codeTemplate: "printf(\"Girilen harf: %c\", ___);",
        correctAnswers: ["harf"],
        options: ["&harf", "harf", "*harf"],
      )
    ]
  },
  "c_comments_constants": {
    "parts": [
      {"text": "Yorum satırları, kodun ne yaptığını açıklamak veya bir kod parçasını geçici olarak devre dışı bırakmak için kullanılır. Derleyici tarafından göz ardı edilirler."},
      {"text": "Tek satırlık yorumlar `//` ile başlar."},
      {"text": "Çok satırlı yorumlar `/*` ile başlar ve `*/` ile biter."},
      {
        "text": "Yorum satırı örnekleri:",
        "code": "// Bu tek satırlık bir yorumdur.\nint x = 5;\n\n/* Bu ise\n   birden fazla satır\n   içeren bir yorumdur. */",
        "code_explanation": "Yorumlar kodun okunabilirliğini artırır."
      },
      {"text": "Sabitler, program boyunca değeri değişmeyecek olan değerlerdir. C'de sabit tanımlamanın bir yolu `#define` ön işlemci komutudur."},
      {
        "text": "`#define` ile sabit tanımlama:",
        "code": "#include <stdio.h>\n#define PI 3.14\n\nint main() {\n  printf(\"Pi değeri: %f\", PI);\n  return 0;\n}",
        "code_explanation": "Derleyici, kodu makine diline çevirmeden önce programdaki tüm `PI` ifadelerini `3.14` ile değiştirir."
      },
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "C'de çok satırlı bir yorum nasıl başlatılır ve bitirilir?",
        options: ["// ve //", "<!-- ve -->", "/* ve */"],
        correctAnswerIndex: 2,
      ),
      CodeCompletionQuestion(
        questionText: "`#define` ile `YIL` adında ve değeri `2024` olan bir sabit oluşturun.",
        codeTemplate: "___ YIL 2024",
        correctAnswers: ["#define"],
        options: ["#const", "#define", "#include"],
      ),
      MultipleChoiceQuestion(
        questionText: "Yorum satırlarının temel amacı nedir?",
        options: ["Programı hızlandırmak", "Kodu derleyici için daha anlaşılır yapmak", "Kodu insanlar için daha anlaşılır yapmak"],
        correctAnswerIndex: 2,
      ),
    ]
  },

  // BÖLÜM 3: OPERATÖRLER
  "c_arithmetic_assignment": {
    "parts": [
      {"text": "Aritmetik operatörler, temel matematiksel işlemleri yapmak için kullanılır: `+` (toplama), `-` (çıkarma), `*` (çarpma), `/` (bölme)."},
      {"text": "`%` (mod alma) operatörü, bir tam sayının başka bir tam sayıya bölümünden kalanı verir."},
      {
        "text": "Aritmetik operatör örnekleri:",
        "code": "int a = 10, b = 3;\nint bolum = a / b; // Sonuç: 3 (tam sayı bölmesi)\nint kalan = a % b; // Sonuç: 1",
        "code_explanation": "İki tam sayı bölündüğünde sonuç da tam sayı olur. Ondalıklı sonuç için sayılardan en az biri `float` veya `double` olmalıdır."
      },
      {"text": "Atama operatörü (`=`), bir değişkene değer atar. Bileşik atama operatörleri ise bir işlemi yapıp sonucu aynı değişkene atar: `+=`, `-=`, `*=`, `/=`, `%=`."},
      {
        "text": "Bileşik atama operatörleri:",
        "code": "int sayi = 10;\nsayi += 5; // sayi = sayi + 5; demek. sayi şimdi 15.\nsayi *= 2; // sayi = sayi * 2; demek. sayi şimdi 30.",
        "code_explanation": "Bu operatörler daha kısa ve okunaklı kod yazmayı sağlar."
      },
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "`13 % 5` işleminin sonucu nedir?",
        options: ["2", "3", "2.6"],
        correctAnswerIndex: 1,
      ),
      CodeCompletionQuestion(
        questionText: "`x` değişkeninin değerini 10 azaltan bileşik atama operatörünü yazın.",
        codeTemplate: "x ___ 10;",
        correctAnswers: ["-="],
        options: ["=-", "--", "-="],
      ),
      MultipleChoiceQuestion(
        questionText: "`int sonuc = 5 / 2;` kodundan sonra `sonuc` değişkeninin değeri ne olur?",
        options: ["2.5", "3", "2"],
        correctAnswerIndex: 2,
      ),
    ]
  },
  "c_relational_logical": {
    "parts": [
      {"text": "İlişkisel operatörler, iki değeri karşılaştırır ve sonuç olarak doğru (1) veya yanlış (0) bir değer döndürür."},
      {"text": "Operatörler: `==` (eşit mi), `!=` (eşit değil mi), `>` (büyük mü), `<` (küçük mü), `>=` (büyük veya eşit mi), `<=` (küçük veya eşit mi)."},
      {"text": "Mantıksal operatörler, bir veya daha fazla koşulu birleştirmek için kullanılır."},
      {"text": "`&&` (VE - AND): Her iki koşul da doğruysa sonuç doğru (1) olur."},
      {"text": "`||` (VEYA - OR): Koşullardan en az biri doğruysa sonuç doğru (1) olur."},
      {"text": "`!` (DEĞİL - NOT): Bir koşulun sonucunu tersine çevirir. Doğruyu yanlış, yanlışı doğru yapar."},
      {
        "text": "Operatörlerin kullanımı:",
        "code": "int yas = 20, puan = 85;\nif (yas >= 18 && puan > 50) {\n  printf(\"Koşullar sağlandı!\\n\");\n}",
        "code_explanation": "`yas` 18'den büyük veya eşit OLDUĞU İÇİN VE `puan` 50'den büyük OLDUĞU İÇİN `if` bloğu çalışır."
      },
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "İki değerin birbirine eşit OLMADIĞINI kontrol eden operatör hangisidir?",
        options: ["<>", "!==", "!="],
        correctAnswerIndex: 2,
      ),
      MultipleChoiceQuestion(
        questionText: "Birden fazla koşuldan en az birinin doğru olmasının yeterli olduğu mantıksal operatör hangisidir?",
        options: ["&&", "||", "!"],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "`!(5 > 3)` ifadesinin sonucu nedir?",
        options: ["1 (doğru)", "0 (yanlış)", "Derleme hatası"],
        correctAnswerIndex: 1,
      ),
    ]
  },
  "c_sizeof_ternary": {
    "parts": [
      {"text": "`sizeof` bir fonksiyon değil, bir operatördür. Bir veri türünün veya bir değişkenin bellekte kaç byte yer kapladığını döndürür."},
      {"text": "Bu operatör, özellikle dinamik bellek yönetimi ve farklı sistemlerdeki veri türü boyutlarını anlamak için çok kullanışlıdır."},
      {
        "text": "`sizeof` kullanımı:",
        "code": "printf(\"Bir int bellekte %zu byte yer kaplar.\\n\", sizeof(int));\nprintf(\"Bir double bellekte %zu byte yer kaplar.\\n\", sizeof(double));",
        "code_explanation": "Sonuçlar, programın derlendiği sisteme (32-bit, 64-bit) göre değişebilir. `%zu` `sizeof`'un döndürdüğü değer tipi için doğru format belirleyicisidir."
      },
      {"text": "Ternary operatörü (`? :`), `if-else` yapısının tek satırlık kısa halidir."},
      {"text": "Kullanım şekli: `koşul ? dogru_ise_bu_deger : yanlıs_ise_bu_deger`"},
      {
        "text": "Ternary operatörü örneği:",
        "code": "int a = 10, b = 20;\nint max = (a > b) ? a : b;\nprintf(\"Büyük olan sayı: %d\", max); // 20 yazar",
        "code_explanation": "`a > b` koşulu yanlış olduğu için `:` işaretinden sonraki `b` değeri `max` değişkenine atanır."
      },
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "`sizeof(char)` ifadesinin sonucu genellikle nedir?",
        options: ["1", "2", "4"],
        correctAnswerIndex: 0,
      ),
      MultipleChoiceQuestion(
        questionText: "Ternary operatörü (`? :`) hangi kontrol yapısının kısa bir alternatifidir?",
        options: ["for döngüsü", "switch-case", "if-else"],
        correctAnswerIndex: 2,
      ),
      CodeCompletionQuestion(
        questionText: "`x` ve `y` sayılarından küçük olanını `min` değişkenine atayan ternary ifadesini tamamlayın.",
        codeTemplate: "int min = (x < y) ? ___ ;",
        correctAnswers: ["x : y"],
        options: ["x : y", "y : x", "x || y"],
      ),
    ]
  },

  // BÖLÜM 4: KONTROL YAPILARI
  "c_if_else": {
    "parts": [
      {"text": "`if-else` yapıları, programın akışını belirli koşullara göre yönlendirmek için kullanılır."},
      {"text": "`if` bloğu, parantez içindeki koşul doğru (sıfır dışında bir değer) ise çalışır."},
      {
        "text": "Basit bir `if` örneği:",
        "code": "int sayi = 10;\nif (sayi > 0) {\n  printf(\"Sayı pozitiftir.\\n\");\n}",
        "code_explanation": "`sayi > 0` koşulu doğru olduğu için (1 döndürür) kod bloğu çalışır."
      },
      {"text": "Eğer `if` koşulu yanlışsa (0 döndürürse) çalışacak bir kod bloğu belirtmek için `else` kullanılır."},
      {"text": "Birden fazla alternatifi sırayla kontrol etmek için `else if` yapısı kullanılır."},
      {
        "text": "`else if` yapısı:",
        "code": "int not = 75;\nif (not >= 85) {\n  printf(\"Çok İyi\");\n} else if (not >= 70) {\n  printf(\"İyi\");\n} else {\n  printf(\"Geçer\");\n}",
        "code_explanation": "İlk koşul yanlış, ikinci koşul doğru olduğu için 'İyi' yazar ve yapıdan çıkar."
      }
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "C'de bir `if` ifadesinin koşulu ne zaman doğru kabul edilir?",
        options: ["Sonuç 1 olduğunda", "Sonuç 0 olduğunda", "Sonuç 0'dan farklı herhangi bir değer olduğunda"],
        correctAnswerIndex: 2,
      ),
      CodeCompletionQuestion(
        questionText: "`puan` değişkeninin 50'den büyük veya eşit olup olmadığını kontrol eden koşulu tamamlayın.",
        codeTemplate: "if (puan ___ 50) {\n  // kodlar\n}",
        correctAnswers: [">="],
        options: [">", ">=", "=="],
      ),
      MultipleChoiceQuestion(
        questionText: "Bir `if-else if-else` zincirinde kaç tane blok çalışabilir?",
        options: ["Hepsi sırayla çalışır", "Sadece bir tane", "En az bir tane"],
        correctAnswerIndex: 1,
      )
    ]
  },
  "c_switch_case": {
    "parts": [
      {"text": "Bir değişkenin alabileceği farklı tam sayı veya karakter değerlerine göre farklı işlemler yapmak için `switch-case` yapısı kullanılır."},
      {"text": "`switch` ifadesi bir değişkeni değerlendirir. `case` ise değişkenin alabileceği olası değerleri belirtir."},
      {
        "text": "`switch-case` örneği:",
        "code": "char islem = '+';\nswitch (islem) {\n  case '+':\n    printf(\"Toplama işlemi seçildi.\\n\");\n    break;\n  case '-':\n    printf(\"Çıkarma işlemi seçildi.\\n\");\n    break;\n  default:\n    printf(\"Geçersiz işlem.\\n\");\n    break;\n}",
        "code_explanation": "`islem` değişkeninin değeri `'+'` olduğu için ilgili `case` çalışır."
      },
      {"text": "`break` komutu, bir `case` bloğu çalıştıktan sonra `switch` yapısından çıkmayı sağlar. Unutulursa, alttaki `case` blokları da çalışmaya devam eder (fall-through)."},
      {"text": "`default` bloğu, hiçbir `case` ile eşleşme olmazsa çalışır."},
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir `case` bloğu çalıştıktan sonra `switch`'ten çıkmak için hangi komut kullanılır?",
        options: ["return", "exit", "break"],
        correctAnswerIndex: 2,
      ),
      MultipleChoiceQuestion(
        questionText: "Hiçbir `case` koşulu sağlanmazsa `switch` içinde hangi blok çalışır?",
        options: ["default", "else", "other"],
        correctAnswerIndex: 0,
      ),
      CodeCompletionQuestion(
        questionText: "Aşağıdaki `switch` yapısında, `secim` değişkeninin 1 olması durumunu kontrol eden bloğu tamamlayın.",
        codeTemplate: "___ 1:\n  printf(\"Bir seçildi.\\n\");\n  break;",
        correctAnswers: ["case"],
        options: ["if", "case", "when"],
      )
    ]
  },
  "c_loops": {
    "parts": [
      {"text": "Döngüler, bir kod bloğunu belirli bir koşul sağlandığı sürece tekrar tekrar çalıştırmamızı sağlar."},
      {"text": "`for` döngüsü, genellikle tekrar sayısının önceden bilindiği durumlarda kullanılır. (başlangıç; devam koşulu; her adımda yapılacak işlem)."},
      {
        "text": "1'den 5'e kadar sayıları yazdıran `for` döngüsü:",
        "code": "int i;\nfor (i = 1; i <= 5; i++) {\n  printf(\"%d\\n\", i);\n}",
        "code_explanation": "`i` 1'den başlar, 5'ten küçük veya eşit olduğu sürece devam eder ve her adımda bir artar."
      },
      {"text": "`while` döngüsü, bir koşul doğru olduğu sürece çalışmaya devam eder. Koşul, döngüye girmeden önce kontrol edilir."},
      {
        "text": "Aynı işi yapan `while` döngüsü:",
        "code": "int i = 1;\nwhile (i <= 5) {\n  printf(\"%d\\n\", i);\n  i++;\n}",
        "code_explanation": "Döngü içinde `i`'yi artırmayı unutursak, sonsuz döngüye girer!"
      },
      {"text": "`do-while` döngüsü `while`'a benzer, ancak koşulu döngünün sonunda kontrol eder. Bu nedenle, döngü bloğu her zaman en az bir kez çalışır."},
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Tekrar sayısının genellikle başlangıçta belli olduğu döngü türü hangisidir?",
        options: ["while", "for", "do-while"],
        correctAnswerIndex: 1,
      ),
      CodeCompletionQuestion(
        questionText: "Bir kod bloğunu 7 kez tekrarlayacak `for` döngüsünün koşulunu tamamlayın.",
        codeTemplate: "for (int i = 0; ___; i++) {\n  // kodlar\n}",
        correctAnswers: ["i < 7"],
        options: ["i > 7", "i < 7", "i == 7"],
      ),
      MultipleChoiceQuestion(
        questionText: "Koşul ne olursa olsun, en az bir kere çalışması garanti olan döngü hangisidir?",
        options: ["for", "while", "do-while"],
        correctAnswerIndex: 2,
      ),
    ]
  },
  "c_break_continue": {
    "parts": [
      {"text": "Döngülerin akışını kontrol etmek için `break` ve `continue` ifadelerini kullanırız."},
      {"text": "`break` komutu, içinde bulunduğu en yakın döngüyü (veya `switch` bloğunu) tamamen sonlandırır."},
      {
        "text": "`break` kullanımı:",
        "code": "for (int i = 0; i < 10; i++) {\n  if (i == 5) {\n    break; // i 5'e eşit olduğunda döngü durur\n  }\n  printf(\"%d \", i); // 0 1 2 3 4 yazar\n}",
        "code_explanation": "`i` 5'e eşit olduğunda döngüden tamamen çıkılır."
      },
      {"text": "`continue` komutu ise döngünün mevcut adımını atlar ve bir sonraki adımdan devam eder."},
      {
        "text": "`continue` kullanımı:",
        "code": "for (int i = 0; i < 5; i++) {\n  if (i == 2) {\n    continue; // i 2'ye eşit olduğunda bu adımı atla\n  }\n  printf(\"%d \", i); // 0 1 3 4 yazar\n}",
        "code_explanation": "`i` 2 olduğunda `printf` çalışmaz, döngü bir sonraki adıma geçer."
      }
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir döngüyü tamamen durdurup sonlandıran komut hangisidir?",
        options: ["continue", "break", "exit"],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "Döngünün sadece mevcut tekrarını atlayıp bir sonrakinden devam etmesini sağlayan komut hangisidir?",
        options: ["continue", "break", "skip"],
        correctAnswerIndex: 0,
      ),
      MultipleChoiceQuestion(
        questionText: "Bir döngüde 3'ün katlarını yazdırmak istemiyorsak, `if (i % 3 == 0)` koşulu sağlandığında ne kullanmalıyız?",
        options: ["break;", "return;", "continue;"],
        correctAnswerIndex: 2,
      )
    ]
  },

  // BÖLÜM 5: FONKSİYONLAR
  "c_functions": {
    "parts": [
      {"text": "Fonksiyonlar, belirli bir görevi yerine getiren ve tekrar tekrar çağrılabilen bağımsız kod bloklarıdır."},
      {"text": "C'de `main` de bir fonksiyondur. Fonksiyonlar genellikle `main`'den önce veya sonra tanımlanır."},
      {"text": "Eğer bir fonksiyonu `main`'den sonra tanımlarsak, `main`'den önce onun 'prototipini' (bildirimini) yapmamız gerekir. Bu, derleyiciye böyle bir fonksiyonun var olduğunu söyler."},
      {
        "text": "Fonksiyon tanımı, prototipi ve çağrımı:",
        "code": "#include <stdio.h>\n\nvoid selamVer(); // Fonksiyon Prototipi\n\nint main() {\n  selamVer(); // Fonksiyonu çağırma\n  return 0;\n}\n\n// Fonksiyon Tanımı\nvoid selamVer() {\n  printf(\"Merhaba!\\n\");\n}",
        "code_explanation": "Fonksiyonu `main`'den önce tanımlasaydık prototipe gerek kalmazdı."
      },
      {"text": "Fonksiyonlar, parametreler aracılığıyla dışarıdan veri alabilirler."},
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir fonksiyon `main`'den sonra tanımlanacaksa, `main`'den önce neyi belirtilmelidir?",
        options: ["Fonksiyonun gövdesi", "Fonksiyonun prototipi", "Fonksiyonun adresi"],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "Bir fonksiyonun herhangi bir değer döndürmediğini belirtmek için hangi anahtar kelime kullanılır?",
        options: ["int", "void", "null"],
        correctAnswerIndex: 1,
      ),
      CodeCompletionQuestion(
        questionText: "`hesapla` adında, parametre almayan ve değer döndürmeyen bir fonksiyon prototipini yazın.",
        codeTemplate: "___ hesapla();",
        correctAnswers: ["void"],
        options: ["int", "void", "char"],
      )
    ]
  },
  "c_return_value": {
    "parts": [
      {"text": "`return` ifadesi, bir fonksiyonun çalışmasını sonlandırır ve çağrıldığı yere bir değer döndürür."},
      {"text": "Döndürülen değerin tipi, fonksiyonun tanımında belirtilen geri dönüş tipi ile uyumlu olmalıdır."},
      {
        "text": "Değer döndüren fonksiyon örneği:",
        "code": "int topla(int a, int b) {\n  int sonuc = a + b;\n  return sonuc;\n}\n\nint main() {\n  int toplam = topla(10, 20);\n  printf(\"Sayıların toplamı: %d\\n\", toplam);\n  return 0;\n}",
        "code_explanation": "`topla(10, 20)` ifadesinin olduğu yere, fonksiyonun döndürdüğü `30` değeri gelir ve `toplam` değişkenine atanır."
      },
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir fonksiyondan dışarıya bir değer aktarmak için hangi anahtar kelime kullanılır?",
        options: ["give", "return", "output"],
        correctAnswerIndex: 1,
      ),
      CodeCompletionQuestion(
        questionText: "Bir sayının karesini hesaplayıp döndüren fonksiyonu tamamlayın.",
        codeTemplate: "int kareAl(int sayi) {\n  ___ sayi * sayi;\n}",
        correctAnswers: ["return"],
        options: ["printf", "return", "void"],
      ),
      MultipleChoiceQuestion(
        questionText: "`float ortalama()` şeklinde tanımlanmış bir fonksiyon ne tür bir değer döndürmelidir?",
        options: ["int", "char*", "float"],
        correctAnswerIndex: 2,
      )
    ]
  },
  "c_scope_lifetime": {
    "parts": [
      {"text": "Değişken Kapsamı (Scope), bir değişkenin programın hangi bölümlerinden erişilebilir olduğunu belirler."},
      {"text": "Yerel (Local) Değişkenler: Bir fonksiyonun veya bir bloğun (`{}`) içinde tanımlanırlar. Sadece tanımlandıkları blok içinden erişilebilirler."},
      {"text": "Global Değişkenler: Tüm fonksiyonların dışında, genellikle programın en üstünde tanımlanırlar. Programın herhangi bir yerinden erişilebilirler. Ancak kullanımları genellikle tavsiye edilmez çünkü programın takibini zorlaştırabilirler."},
      {"text": "Değişken Ömrü (Lifetime), bir değişkenin bellekte ne kadar süreyle var olduğunu belirtir."},
      {"text": "Yerel değişkenlerin ömrü, tanımlandıkları blok çalıştığı sürece devam eder. Blok bittiğinde bellekten silinirler. Global değişkenlerin ömrü ise programın çalışma süresi boyunca devam eder."},
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir fonksiyonun içinde tanımlanmış bir değişkene fonksiyonun dışından erişmeye çalışırsak ne olur?",
        options: ["Değişkenin değeri 0 olur.", "Program derleme hatası verir.", "Değişkene sorunsuzca erişilir."],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "Programın herhangi bir yerinden erişilebilen değişkenlere ne ad verilir?",
        options: ["Yerel (Local) Değişken", "Statik (Static) Değişken", "Global Değişken"],
        correctAnswerIndex: 2,
      ),
      MultipleChoiceQuestion(
        questionText: "Bir `for` döngüsü içinde tanımlanan bir `int i` değişkeninin kapsamı neresidir?",
        options: ["Sadece `for` döngüsü bloğu", "İçinde bulunduğu fonksiyonun tamamı", "Tüm program"],
        correctAnswerIndex: 0,
      )
    ]
  },
  "c_recursive_functions": {
    "parts": [
      {"text": "Özyinelemeli (Recursive) Fonksiyon, kendi kendini doğrudan veya dolaylı olarak çağıran bir fonksiyondur."},
      {"text": "Her özyinelemeli fonksiyonun iki temel parçası olmalıdır:\n1. Temel Durum (Base Case): Fonksiyonun kendi kendini çağırmayı durdurduğu ve bir sonuç döndürdüğü basit durum.\n2. Özyineleme Adımı (Recursive Step): Fonksiyonun, problemi daha basit bir alt probleme indirgeyerek kendi kendini çağırdığı adım."},
      {"text": "Temel durumun olmaması, sonsuz özyinelemeye ve 'stack overflow' (yığın taşması) hatasına yol açar."},
      {
        "text": "Faktöriyel hesabı için özyinelemeli fonksiyon:",
        "code": "int faktoriyel(int n) {\n  // Temel Durum\n  if (n == 0 || n == 1) {\n    return 1;\n  }\n  // Özyineleme Adımı\n  else {\n    return n * faktoriyel(n - 1);\n  }\n}",
        "code_explanation": "Örneğin `faktoriyel(3)` çağrısı, `3 * faktoriyel(2)`'yi, o da `3 * 2 * faktoriyel(1)`'i çalıştırır. `faktoriyel(1)` temel duruma ulaşıp 1 döndürür ve sonuçlar geriye doğru hesaplanır."
      },
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir özyinelemeli fonksiyonun sonsuz döngüye girmesini engelleyen yapıya ne denir?",
        options: ["Özyineleme Adımı", "Temel Durum (Base Case)", "return ifadesi"],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "Aşağıdaki problemlerden hangisi özyineleme için klasik bir örnektir?",
        options: ["İki sayıyı toplama", "Fibonacci serisi", "Bir dizinin en büyük elemanını bulma"],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "Özyinelemeli fonksiyonlar, belleğin hangi bölümünü yoğun olarak kullanır?",
        options: ["Heap (Yığın)", "Stack (Yığıt)", "Data Segment"],
        correctAnswerIndex: 1,
      ),
    ]
  },

  // BÖLÜM 6: DİZİLER VE KARAKTER DİZİLERİ
  "c_arrays": {
    "parts": [
      {"text": "Diziler, aynı türden verileri bellekte ardışıl olarak saklayan sabit boyutlu veri yapılarıdır."},
      {"text": "Dizi tanımlama: `veri_tipi dizi_adi[eleman_sayisi];`"},
      {
        "text": "Dizi oluşturma, değer atama ve erişim:",
        "code": "int notlar[5]; // 5 elemanlı bir tam sayı dizisi\n\nnotlar[0] = 85; // İlk elemana değer atama\nnotlar[1] = 90;\n\nprintf(\"İlk not: %d\\n\", notlar[0]); // Elemana erişim\n\n// Diziyi oluştururken doğrudan değer atama\nint sayilar[] = {10, 20, 30, 40};",
        "code_explanation": "Dizi indeksleri her zaman 0'dan başlar. 5 elemanlı bir dizinin indeksleri 0, 1, 2, 3, 4'tür."
      },
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "10 elemanlı bir dizinin son elemanının indeksi kaçtır?",
        options: ["10", "9", "1"],
        correctAnswerIndex: 1,
      ),
      CodeCompletionQuestion(
        questionText: "`float` türünde 20 elemanlı bir dizi tanımlayan kodu tamamlayın.",
        codeTemplate: "float fiyatlar[___];",
        correctAnswers: ["20"],
        options: ["19", "20", "21"],
      ),
      MultipleChoiceQuestion(
        questionText: "Bir C dizisinin boyutu ne zaman belirlenir?",
        options: ["Çalışma zamanında", "Derleme zamanında", "Değiştirilemez"],
        correctAnswerIndex: 1,
      )
    ]
  },
  "c_strings": {
    "parts": [
      {"text": "C'de `String` diye ayrı bir veri türü yoktur. Karakter dizileri (stringler), aslında `char` türünde dizilerdir."},
      {"text": "C'deki bir string'i diğer char dizilerinden ayıran en önemli özellik, sonunda 'null karakteri' (`\\0`) bulunmasıdır. Bu karakter, string'in bittiği yeri belirtir."},
      {
        "text": "Karakter dizisi tanımlama:",
        "code": "char isim[] = \"Ahmet\";\n// Bellekte aslında {'A', 'h', 'm', 'e', 't', '\\0'} olarak tutulur.",
        "code_explanation": "`\"Ahmet\"` gibi çift tırnaklı ifadeler, derleyici tarafından otomatik olarak sonuna `\\0` eklenmiş bir char dizisine dönüştürülür."
      },
      {"text": "String işlemleri için `<string.h>` kütüphanesi kullanılır. Örneğin:\n- `strcpy(hedef, kaynak)`: String kopyalama\n- `strcat(hedef, kaynak)`: İki string'i birleştirme\n- `strlen(kaynak)`: String'in uzunluğunu bulma (null karakteri saymaz)\n- `strcmp(str1, str2)`: İki string'i karşılaştırma"},
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir C karakter dizisinin sonunu belirten özel karakter hangisidir?",
        options: ["\\n", "\\t", "\\0"],
        correctAnswerIndex: 2,
      ),
      MultipleChoiceQuestion(
        questionText: "Bir string'in uzunluğunu (karakter sayısını) bulan `<string.h>` fonksiyonu hangisidir?",
        options: ["strlen", "strcpy", "strcmp"],
        correctAnswerIndex: 0,
      ),
      CodeCompletionQuestion(
        questionText: "İki string'i karşılaştırmak için kullanılan fonksiyonu yazın.",
        codeTemplate: "if (___(str1, str2) == 0) {\n  // String'ler eşit\n}",
        correctAnswers: ["strcmp"],
        options: ["strlen", "strcat", "strcmp"],
      )
    ]
  },
  "c_multidimensional_arrays": {
    "parts": [
      {"text": "Çok boyutlu diziler, aslında 'dizilerin dizileridir'. En yaygın olanı, satır ve sütunlardan oluşan 2 boyutlu dizilerdir (matrisler)."},
      {"text": "2 boyutlu dizi tanımlama: `veri_tipi dizi_adi[satir_sayisi][sutun_sayisi];`"},
      {
        "text": "2 boyutlu dizi kullanımı:",
        "code": "// 2 satır ve 3 sütundan oluşan bir matris\nint matris[2][3] = {\n  {1, 2, 3}, // 0. satır\n  {4, 5, 6}  // 1. satır\n};\n\n// Bir elemana erişim\nint eleman = matris[1][2]; // 1. satır, 2. sütundaki eleman (6)",
        "code_explanation": "Elemanlara erişmek için iç içe döngüler (genellikle `for`) kullanılır."
      },
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "`int tablo[5][10];` şeklinde tanımlanan bir dizinin toplam kaç elemanı vardır?",
        options: ["15", "50", "510"],
        correctAnswerIndex: 1,
      ),
      CodeCompletionQuestion(
        questionText: "Aşağıdaki matrisin ilk satırının ilk elemanına (değeri 10) erişen kodu tamamlayın.",
        codeTemplate: "int mat[2][2] = {{10, 20}, {30, 40}};\nint x = mat[___][___];",
        correctAnswers: ["0", "0"],
        options: ["0", "1", "2"],
      ),
      MultipleChoiceQuestion(
        questionText: "Çok boyutlu diziler ne için kullanılır?",
        options: ["Sadece sayıları saklamak", "Matrisler, tablolar veya oyun tahtaları gibi verileri modellemek", "Dinamik bellek yönetimi"],
        correctAnswerIndex: 1,
      ),
    ]
  },

  // BÖLÜM 7: POINTER'LAR
  "c_pointers_intro": {
    "parts": [
      {"text": "Pointer (İşaretçi), C dilinin en güçlü ve en temel kavramlarından biridir."},
      {"text": "Bir pointer, başka bir değişkenin bellek adresini tutan özel bir değişkendir."},
      {"text": "Normal bir değişken değeri tutarken (örn: 5, 'A'), bir pointer adresi tutar (örn: 0x7fff5fbff8ac)."},
      {"text": "Pointer tanımlama: `veri_tipi *pointer_adi;`"},
      {
        "text": "Pointer tanımlama örneği:",
        "code": "int *p; // int türünde bir değişkenin adresini tutabilen bir pointer\nchar *c; // char türünde bir değişkenin adresini tutabilen bir pointer",
        "code_explanation": "`*` sembolü, bu değişkenin bir değer değil, bir adres tutacağını belirtir. `veri_tipi` ise adresi tutulacak değişkenin tipidir."
      },
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir pointer değişkeni ne tür bir bilgi saklar?",
        options: ["Tam sayı", "Bir karakter", "Bir bellek adresi"],
        correctAnswerIndex: 2,
      ),
      CodeCompletionQuestion(
        questionText: "`float` türünde bir değişkenin adresini tutacak bir pointer tanımlayın.",
        codeTemplate: "float ___fptr;",
        correctAnswers: ["*"],
        options: ["&", "*", "->"],
      ),
      MultipleChoiceQuestion(
        questionText: "Pointer kullanmanın temel amacı nedir?",
        options: ["Programı yavaşlatmak", "Belleğe doğrudan erişim ve verimli bellek yönetimi sağlamak", "Sadece sayısal işlemler yapmak"],
        correctAnswerIndex: 1,
      ),
    ]
  },
  "c_address_value_ops": {
    "parts": [
      {"text": "Pointer'larla çalışırken iki temel operatör kullanılır: `&` ve `*`."},
      {"text": "`&` (Adres Operatörü - Address-of Operator): Bir değişkenin önüne geldiğinde, o değişkenin bellekteki adresini döndürür."},
      {"text": "`*` (Değer/Yönlendirme Operatörü - Dereference/Indirection Operator): Bir pointer değişkeninin önüne geldiğinde, o pointer'ın işaret ettiği adresteki değeri döndürür."},
      {
        "text": "Operatörlerin kullanımı:",
        "code": "int sayi = 10;\nint *ptr;    // Bir int pointer'ı\n\nptr = &sayi; // ptr, 'sayi' değişkeninin adresini tutuyor\n\nprintf(\"Sayı'nın adresi: %p\\n\", ptr);\nprintf(\"ptr'nin gösterdiği değer: %d\\n\", *ptr); // *ptr, 'sayi'nın değeri olan 10'u verir",
        "code_explanation": "`ptr` adres tutar, `*ptr` ise o adresteki değeri verir. `%p` pointer adreslerini yazdırmak için kullanılan format belirleyicisidir."
      },
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir değişkenin bellek adresini almak için hangi operatör kullanılır?",
        options: ["*", "&", "->"],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "Bir pointer'ın işaret ettiği adresteki değeri almak için hangi operatör kullanılır?",
        options: ["*", "&", "->"],
        correctAnswerIndex: 0,
      ),
      CodeCompletionQuestion(
        questionText: "`sayi` değişkeninin adresini `p_sayi` pointer'ına atayan kodu tamamlayın.",
        codeTemplate: "int sayi = 5;\nint *p_sayi;\np_sayi = ___ sayi;",
        correctAnswers: ["&"],
        options: ["*", "&", ""],
      )
    ]
  },
  "c_pointers_arrays": {
    "parts": [
      {"text": "C'de pointer'lar ve diziler arasında çok yakın bir ilişki vardır."},
      {"text": "Bir dizinin adı, aslında dizinin ilk elemanının bellek adresini tutan bir pointer gibi davranır."},
      {
        "text": "Dizi adı ve pointer:",
        "code": "int sayilar[] = {10, 20, 30};\n\nprintf(\"%p\\n\", sayilar);     // İlk elemanın adresini yazar\nprintf(\"%p\\n\", &sayilar[0]); // İlk elemanın adresini yazar (aynı çıktı)",
        "code_explanation": "Bu nedenle `int *ptr = sayilar;` şeklinde bir atama yapmak geçerlidir."
      },
      {"text": "Pointer Aritmetiği: Bir pointer'ı artırdığınızda (`ptr++`), bir sonraki byte'a değil, işaret ettiği veri türünün boyutu kadar ilerler. Bu sayede dizinin bir sonraki elemanına geçer."},
      {
        "text": "Pointer ile dizi elemanlarına erişim:",
        "code": "int sayilar[] = {10, 20, 30};\nint *ptr = sayilar;\n\n// sayilar[1] demek ile *(ptr + 1) demek aynıdır\nprintf(\"İkinci eleman: %d\\n\", *(ptr + 1)); // 20 yazar",
        "code_explanation": "Bu ilişki, C'nin düşük seviyeli ve verimli çalışmasının temel nedenlerinden biridir."
      },
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir dizinin adı neyi temsil eder?",
        options: ["Dizinin son elemanını", "Dizinin eleman sayısını", "Dizinin ilk elemanının adresini"],
        correctAnswerIndex: 2,
      ),
      MultipleChoiceQuestion(
        questionText: "`sayilar` bir int dizisi ise, `sayilar[2]` ifadesinin pointer karşılığı nedir?",
        options: ["*(sayilar + 2)", "sayilar + 2", "&sayilar + 2"],
        correctAnswerIndex: 0,
      ),
      MultipleChoiceQuestion(
        questionText: "Bir `int` pointer'ını bir artırmak (`ptr++`), adresi kaç byte ilerletir (tipik bir 64-bit sistemde)?",
        options: ["1 byte", "2 byte", "4 byte"],
        correctAnswerIndex: 2,
      ),
    ]
  },
  "c_pointers_to_functions": {
    "parts": [
      {"text": "C'de fonksiyonlara argüman gönderirken varsayılan olarak 'Değer ile Çağırma' (Call by Value) kullanılır. Yani fonksiyona değişkenin kendisi değil, bir kopyası gönderilir."},
      {"text": "Bu nedenle, fonksiyon içinde parametre üzerinde yapılan değişiklikler, `main`'deki orijinal değişkeni etkilemez."},
      {"text": "Eğer bir fonksiyonun, çağrıldığı yerdeki orijinal değişkeni değiştirmesini istiyorsak, 'Referans ile Çağırma' (Call by Reference) yöntemini kullanmalıyız. Bu, C'de pointer'lar aracılığıyla yapılır."},
      {"text": "Fonksiyona değişkenin adresi gönderilir. Fonksiyon, bu adresi bir pointer parametre ile alır ve `*` operatörünü kullanarak o adresteki orijinal veriyi değiştirir."},
      {
        "text": "Pointer ile değer değiştirme:",
        "code": "void artir(int *ptr) {\n  (*ptr)++; // Parantez önemli! Pointer'ın gösterdiği değeri artır\n}\n\nint main() {\n  int sayi = 10;\n  artir(&sayi); // Fonksiyona sayi'nin adresini gönder\n  printf(\"%d\\n\", sayi); // Ekrana 11 yazar\n}",
        "code_explanation": "Fonksiyona `sayi`'nin adresi gönderildiği için, `artir` fonksiyonu `main`'deki orijinal `sayi` değişkenini değiştirebilmiştir."
      },
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir fonksiyonun orijinal değişkeni değiştirebilmesi için fonksiyona ne gönderilmelidir?",
        options: ["Değişkenin bir kopyası", "Değişkenin adı", "Değişkenin adresi"],
        correctAnswerIndex: 2,
      ),
      MultipleChoiceQuestion(
        questionText: "Bir fonksiyona parametre olarak bir adres gönderildiğinde, fonksiyon bu adresi ne tür bir değişkenle karşılar?",
        options: ["Normal bir değişkenle", "Bir pointer değişkeniyle", "Bir diziyle"],
        correctAnswerIndex: 1,
      ),
      CodeCompletionQuestion(
        questionText: "İki sayının yerini değiştiren (swap) fonksiyonun çağrısını tamamlayın.",
        codeTemplate: "void swap(int *a, int *b);\n\nint x = 5, y = 10;\nswap(___x, ___y);",
        correctAnswers: ["&", "&"],
        options: ["*", "&", ""],
      )
    ]
  },

  // BÖLÜM 8: YAPILAR VE DİNAMİK BELLEK
  "c_structs": {
    "parts": [
      {"text": "Yapılar (`struct`), farklı veri türlerindeki değişkenleri mantıksal bir bütün olarak tek bir isim altında gruplamamızı sağlayan kullanıcı tanımlı veri türleridir."},
      {"text": "Örneğin, bir öğrencinin adını (`char` dizisi), numarasını (`int`) ve not ortalamasını (`float`) tek bir `Ogrenci` yapısı altında toplayabiliriz."},
      {
        "text": "Yapı tanımı ve kullanımı:",
        "code": "struct Ogrenci {\n  char isim[50];\n  int numara;\n  float ortalama;\n};\n\nint main() {\n  struct Ogrenci ogr1;\n  strcpy(ogr1.isim, \"Ali Veli\");\n  ogr1.numara = 123;\n  ogr1.ortalama = 85.5f;\n\n  printf(\"Öğrenci Adı: %s\\n\", ogr1.isim);\n}",
        "code_explanation": "Yapının üyelerine erişmek için `.` (nokta) operatörü kullanılır."
      },
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Farklı türdeki verileri tek bir çatı altında toplamak için hangi yapı kullanılır?",
        options: ["dizi (array)", "enum", "yapı (struct)"],
        correctAnswerIndex: 2,
      ),
      CodeCompletionQuestion(
        questionText: "`kitap1` adlı bir yapı değişkeninin `fiyat` üyesine erişen kodu tamamlayın.",
        codeTemplate: "struct Kitap kitap1;\nfloat f = kitap1___fiyat;",
        correctAnswers: ["."],
        options: ["->", ".", "&"],
      ),
      MultipleChoiceQuestion(
        questionText: "Bir yapı pointer'ı aracılığıyla yapı üyelerine erişmek için hangi operatör kullanılır?",
        options: [". (nokta)", "* (yıldız)", "-> (ok)"],
        correctAnswerIndex: 2,
      )
    ]
  },
  "c_dynamic_memory": {
    "parts": [
      {"text": "Şimdiye kadar kullandığımız diziler ve değişkenler statik bellekte (stack) tutuluyordu ve boyutları derleme zamanında belliydi."},
      {"text": "Dinamik bellek yönetimi, programın çalışma sırasında, ihtiyaç duyduğu kadar belleği dinamik bellekten (heap) almasını ve işi bittiğinde geri vermesini sağlar."},
      {"text": "Bu işlemler için `<stdlib.h>` kütüphanesindeki fonksiyonlar kullanılır:\n- `malloc(boyut)`: 'boyut' kadar byte'lık yer ayırır ve bu alanın başlangıç adresini (bir `void*` pointer) döndürür.\n- `free(pointer)`: `malloc` ile ayrılan belleği sisteme geri iade eder."},
      {"text": "`malloc` ile ayrılan her bellek alanı, işi bittikten sonra mutlaka `free` ile serbest bırakılmalıdır. Aksi takdirde 'bellek sızıntısı' (memory leak) oluşur."},
      {
        "text": "Dinamik bellek kullanımı:",
        "code": "int *dizi;\nint n = 5;\n\n// 5 tane int'lik yer ayır\ndizi = (int*) malloc(n * sizeof(int));\n\nif (dizi == NULL) { // Bellek ayrılamadıysa kontrol et\n  printf(\"Bellek ayrılamadı!\\n\");\n  return 1;\n}\n\n// ... dizi kullanılır ...\n\nfree(dizi); // Ayrılan belleği geri ver",
        "code_explanation": "`malloc`'un döndürdüğü `void*`, `(int*)` gibi bir 'type cast' ile istenen pointer türüne dönüştürülür."
      },
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Program çalışırken bellekten yer ayırmak için hangi fonksiyon kullanılır?",
        options: ["free", "malloc", "sizeof"],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "`malloc` ile ayrılan belleği serbest bırakmak için ne kullanılır?",
        options: ["delete", "remove", "free"],
        correctAnswerIndex: 2,
      ),
      MultipleChoiceQuestion(
        questionText: "`malloc` ile ayrılan belleği `free` ile geri vermezsek ne olur?",
        options: ["Program hızlanır", "Bellek sızıntısı (memory leak)", "Derleme hatası"],
        correctAnswerIndex: 1,
      ),
    ]
  },

  // BÖLÜM 9: MİNİ PROJE
  "c_project_lottery": {
    "parts": [
      {"text": "Projemiz: Kullanıcıdan 6 tane sayı alan ve rastgele oluşturulan 6 loto sayısıyla karşılaştırıp kaç tane doğru tahmin yaptığını bulan bir sayısal loto oyunu."},
      {"text": "Adım 1: Rastgele Sayı Üretimi. `<stdlib.h>` ve `<time.h>` kütüphaneleri kullanılır. `srand(time(NULL));` ile rastgele sayı üretecini her seferinde farklı başlatırız. `rand() % 49 + 1` ifadesi ile 1-49 arası rastgele sayılar üretiriz."},
      {"text": "Adım 2: Loto Sayılarını Oluşturmak. Rastgele 6 tane benzersiz sayı üretip bir diziye atayacağız."},
      {"text": "Adım 3: Kullanıcıdan Tahminleri Almak. `scanf` kullanarak kullanıcıdan 6 tane sayı alıp başka bir diziye kaydedeceğiz."},
      {"text": "Adım 4: Karşılaştırma ve Sonuç. İç içe döngüler kullanarak kullanıcının dizisindeki her sayının, loto dizisinde olup olmadığını kontrol edeceğiz ve doğru tahmin sayısını bulup ekrana yazdıracağız."},
      {
        "text": "Rastgele sayı üretme parçası:",
        "code": "#include <stdlib.h>\n#include <time.h>\n\n// main içinde bir kere çağrılır\nsrand(time(NULL));\n\n// 1-49 arası rastgele sayı üretir\nint rastgeleSayi = rand() % 49 + 1;",
        "code_explanation": "`srand`'ı programın başında sadece bir kez çağırmak, her çalıştırdığımızda farklı sayılar üretilmesini sağlar."
      },
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Her program çalıştığında farklı rastgele sayılar üretmek için hangi fonksiyon kullanılır?",
        options: ["rand()", "time(NULL)", "srand()"],
        correctAnswerIndex: 2,
      ),
      MultipleChoiceQuestion(
        questionText: "1 ile 100 arasında (1 ve 100 dahil) rastgele bir sayı üretmek için doğru ifade hangisidir?",
        options: ["rand() % 100", "rand() % 100 + 1", "rand() % 101"],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "Kullanıcının tahminlerini ve loto sayılarını saklamak için en uygun veri yapısı nedir?",
        options: ["struct", "char", "int dizisi (array)"],
        correctAnswerIndex: 2,
      )
    ]
  },
};