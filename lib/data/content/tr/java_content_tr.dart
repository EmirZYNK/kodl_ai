import 'package:learn_code/models/quiz_models.dart';

// JAVANIN İLK 6 BÖLÜMÜNÜN DETAYLI İÇERİĞİ
final Map<String, Map<String, dynamic>> javaContentTr = {

  // =======================================================================
  // BÖLÜM 1: GİRİŞ
  // =======================================================================

  "java_what_is_java": {
    "sub_lessons": [
      {
        "title": "Java Nedir? (JVM, JRE, JDK)",
        "parts": [
          {"text": "Java dünyasına hoş geldiniz! Java, 'bir kere yaz, her yerde çalıştır' (Write Once, Run Anywhere) felsefesiyle ünlü, nesne yönelimli bir programlama dilidir."},
          {"text": "Bu felsefeyi mümkün kılan şey Java Sanal Makinesi'dir (JVM). Yazdığımız Java kodları, doğrudan makine koduna değil, 'bytecode' adı verilen özel bir ara koda derlenir."},
          {"text": "JVM, bu bytecode'u çalıştırıldığı bilgisayarın (Windows, macOS, Linux) anlayacağı dile o anda çevirir. Bu sayede aynı kod farklı platformlarda çalışabilir."},
          {"text": "JDK (Java Development Kit): Kod yazmak, derlemek ve çalıştırmak için gereken her şeyi içeren geliştirme kitidir. Biz bunu kuracağız."},
          {"text": "JRE (Java Runtime Environment): Sadece Java programlarını çalıştırmak için gereken ortamdır. JVM'i içerir ama derleyici gibi geliştirme araçlarını içermez."},
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Java'nın 'bir kere yaz, her yerde çalıştır' özelliğini sağlayan temel bileşen nedir?",
            options: ["JDK", "JVM", "JRE"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Java kodunu yazmak, derlemek ve çalıştırmak için ihtiyacımız olan paketin adı nedir?",
            codeTemplate: "___ (Java Development Kit)",
            correctAnswers: ["JDK"],
            options: ["JDK", "JRE", "JVM"],
          ),
          CodeCompletionQuestion(
            questionText: "Yazdığımız Java kodu, ___ adı verilen bir ara koda derlenir ve bu kodu ___ çalıştırır.",
            codeTemplate: "Yazdığımız Java kodu, ___ adı verilen bir ara koda derlenir ve bu kodu ___ çalıştırır.",
            correctAnswers: ["bytecode", "JVM"],
            options: ["bytecode", "JVM", "makine kodu", "JDK"],
          ),
          CodeCompletionQuestion(
            questionText: "Sadece Java uygulamalarını çalıştırmak için gereken minimum pakete ne denir?",
            codeTemplate: "___ (Java Runtime Environment)",
            correctAnswers: ["JRE"],
            options: ["JDK", "JVM", "JRE"],
          ),
          CodeCompletionQuestion(
            questionText: "Java kaynak kodu (.java) derlendiğinde, platformdan bağımsız ___ dosyaları (.class) oluşur.",
            codeTemplate: "Java kaynak kodu (.java) derlendiğinde, platformdan bağımsız ___ dosyaları (.class) oluşur.",
            correctAnswers: ["bytecode"],
            options: ["bytecode", "source code", "executable"],
          ),
        ]
      }
    ]
  },

  "java_setup": {
    "sub_lessons": [
      {
        "title": "Kurulum (JDK & IntelliJ/Eclipse)",
        "parts": [
          {"text": "Kod yazmaya başlamak için geliştirme ortamımızı (JDK) ve kodlarımızı yazacağımız bir editör (IDE) kurmamız gerekiyor."},
          {"text": "Öncelikle sisteminize uygun olan güncel bir JDK versiyonunu (örneğin Oracle JDK veya OpenJDK) indirip kurmalısınız."},
          {"text": "Ardından, kodlarımızı daha verimli yazmamızı sağlayan bir Entegre Geliştirme Ortamı (IDE) seçeceğiz."},
          {"text": "En popüler Java IDE'leri, güçlü özellikleriyle bilinen IntelliJ IDEA ve uzun yıllardır standart olan Eclipse'dir. Bu uygulamada biz IntelliJ IDEA'yı baz alacağız."},
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Aşağıdakilerden hangisi popüler bir Java IDE'sidir?",
            options: ["VS Code", "IntelliJ IDEA", "Notepad++"],
            correctAnswerIndex: 1,
          ),
          MultipleChoiceQuestion(
            questionText: "Java kodunu derlemek için bilgisayarımızda mutlaka neyin kurulu olması gerekir?",
            options: ["Sadece JRE", "JDK", "Sadece IDE"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Kodlarımızı yazdığımız ve yönettiğimiz programlara ___ denir.",
            codeTemplate: "Kodlarımızı yazdığımız ve yönettiğimiz programlara ___ (Entegre Geliştirme Ortamı) denir.",
            correctAnswers: ["IDE"],
            options: ["IDE", "JDK", "JRE"],
          ),
          CodeCompletionQuestion(
            questionText: "Programı derleyen (compile eden) araçlar ___ paketinin içindedir.",
            codeTemplate: "Programı derleyen (compile eden) araçlar ___ paketinin içindedir.",
            correctAnswers: ["JDK"],
            options: ["IDE", "JDK", "JRE"],
          ),
        ]
      }
    ]
  },

  "java_hello_world": {
    "sub_lessons": [
      {
        "title": "'Merhaba Dünya' uygulaması",
        "parts": [
          {"text": "İşte o an! Java ile ilk programımızı yazıyoruz."},
          {"text": "Java'da her kod bir 'sınıf' (class) içinde yer almalıdır. Programın başlangıç noktası ise `public static void main(String[] args)` metodudur."},
          {"text": "Ekrana bir şey yazdırmak için `System.out.println()` komutunu kullanırız. `println`, 'print line' (satır yazdır) anlamına gelir ve metni yazdıktan sonra bir alt satıra geçer."},
          {
            "text": "Şimdi 'Merhaba, Dünya!' yazdıralım.",
            "code": "public class Main {\n  public static void main(String[] args) {\n    System.out.println(\"Merhaba, Dünya!\");\n  }\n}",
            "code_explanation": "Bu kod, `Main` adında bir sınıf içinde, programın başlangıç noktası olan `main` metodunu tanımlar. `System.out.println` komutu ile ekrana tırnak işaretleri içindeki metni yazdırır."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Java'da ekrana alt satıra geçerek bir metin yazdırmak için hangi komut kullanılır?",
            options: ["System.out.print()", "console.log()", "System.out.println()"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Bir Java programının çalışmaya başladığı ana metodun adı nedir?",
            codeTemplate: "public static void ___ (String[] args) { }",
            correctAnswers: ["main"],
            options: ["main", "start", "run"],
          ),
          CodeCompletionQuestion(
            questionText: "Ekrana 'Java öğreniyorum!' yazdıran komutu tamamlayın.",
            codeTemplate: "System.out.___(\"Java öğreniyorum!\");",
            correctAnswers: ["println"],
            options: ["println", "write", "print"],
          ),
          CodeCompletionQuestion(
            questionText: "Java'da tüm kodlar bir ___ bloğunun içinde yer almalıdır.",
            codeTemplate: "Java'da tüm kodlar bir ___ bloğunun içinde yer almalıdır.",
            correctAnswers: ["class"],
            options: ["class", "main", "method"],
          ),
          CodeCompletionQuestion(
            questionText: "`main` metodu, komut satırı argümanlarını ___[] args parametresi ile alır.",
            codeTemplate: "main metodu, komut satırı argümanlarını ___[] args parametresi ile alır.",
            correctAnswers: ["String"],
            options: ["int", "String", "char"],
          ),
        ]
      }
    ]
  },

  "java_program_structure": {
    "sub_lessons": [
      {
        "title": "Java Programının Yapısı (class, main metodu)",
        "parts": [
          {"text": "Java programlarının temel yapısını daha yakından inceleyelim."},
          {"text": "`public class Main`: Bu satır, `Main` adında halka açık (public) bir sınıf tanımlar. Java'da yazdığınız her kod bir sınıfın içinde olmalıdır. Dosya adı da genellikle sınıf adıyla aynı olmalıdır (Main.java)."},
          {"text": "`public static void main(String[] args)`: Bu, `main` metodunun imzasıdır ve ezberlenmesi gerekir."},
          {"text": "`public`: Metodun her yerden erişilebilir olduğunu belirtir."},
          {"text": "`static`: Metodun, bir nesne oluşturmadan doğrudan sınıfa ait olarak çağrılabileceğini belirtir."},
          {"text": "`void`: Bu metodun bir değer döndürmediği anlamına gelir."},
          {"text": "`main`: JVM'nin programı çalıştırmak için aradığı metodun adıdır."},
          {"text": "`String[] args`: Programa komut satırından argüman göndermek için kullanılan bir string dizisidir."},
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`main` metodundaki `void` anahtar kelimesi ne anlama gelir?",
            options: ["Metot gizlidir.", "Metot bir değer döndürmez.", "Metot sadece sayılarla çalışır."],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir sınıfın adıyla dosya adının aynı olması genel bir kuraldır. `Test` adında bir sınıf için dosya adı ne olmalıdır?",
            codeTemplate: "___ .java",
            correctAnswers: ["Test"],
            options: ["Test", "Program", "Main"],
          ),
          CodeCompletionQuestion(
            questionText: "Programın başlangıç noktasını ve sınıf tanımını tamamlayın.",
            codeTemplate: "public ___ Uygulama {\n  public static void ___ (String[] args) {\n  }\n}",
            correctAnswers: ["class", "main"],
            options: ["class", "main", "void", "program"],
          ),
          CodeCompletionQuestion(
            questionText: "`main` metodunun `static` olması, onu bir ___ oluşturmadan çağırmamızı sağlar.",
            codeTemplate: "main metodunun static olması, onu bir ___ oluşturmadan çağırmamızı sağlar.",
            correctAnswers: ["nesne"],
            options: ["değişken", "nesne", "sınıf"],
          ),
          CodeCompletionQuestion(
            questionText: "Metodun `___` olması, ona her yerden erişilebileceği anlamına gelir.",
            codeTemplate: "Metodun ___ olması, ona her yerden erişilebileceği anlamına gelir.",
            correctAnswers: ["public"],
            options: ["public", "static", "void"],
          ),
        ]
      }
    ]
  },

  // =======================================================================
  // BÖLÜM 2: TEMELLER
  // =======================================================================

  "java_variables_types": {
    "sub_lessons": [
      {
        "title": "Değişkenler ve İlkel Veri Türleri",
        "parts": [
          {"text": "Değişkenler, verileri saklamak için kullandığımız isimlendirilmiş hafıza alanlarıdır."},
          {"text": "Java, 'statik tipli' bir dildir. Bu, bir değişken oluştururken onun tipini (ne tür veri tutacağını) önceden belirtmemiz gerektiği anlamına gelir."},
          {"text": "En yaygın kullanılan ilkel (primitive) veri türleri şunlardır:"},
          {"text": "`int`: Tam sayılar için (örn: 5, -10)."},
          {"text": "`double`: Ondalıklı sayılar için (örn: 3.14, -0.5)."},
          {"text": "`boolean`: Sadece `true` (doğru) veya `false` (yanlış) değerleri için."},
          {"text": "`char`: Tek bir karakter için (örn: 'A', '?'). Tek tırnak ile belirtilir."},
          {
            "text": "Birkaç değişken tanımlayalım.",
            "code": "public class Variables {\n  public static void main(String[] args) {\n    int yas = 25;\n    double boy = 1.82;\n    boolean ogrenciMi = true;\n    char basHarf = 'A';\n  }\n}",
            "code_explanation": "Burada `yas` adında bir integer, `boy` adında bir double, `ogrenciMi` adında bir boolean ve `basHarf` adında bir char değişkeni tanımladık."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir kişinin yaşını saklamak için en uygun ilkel veri türü hangisidir?",
            options: ["double", "String", "int"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Bir ürünün fiyatını (ondalıklı olabilir) saklamak için `fiyat` adında bir değişken tanımlayın.",
            codeTemplate: "___ fiyat = 99.99;",
            correctAnswers: ["double"],
            options: ["int", "double", "char"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir kapının açık olup olmadığını (`true`) ve bir sınav notunu (`'B'`) tutan değişkenleri tanımlayın.",
            codeTemplate: "___ kapiAcik = true;\n___ sinavNotu = 'B';",
            correctAnswers: ["boolean", "char"],
            options: ["boolean", "int", "char", "String"],
          ),
          CodeCompletionQuestion(
            questionText: "Tek bir karakteri tutan `char` veri tipi, ___ tırnak arasına yazılır.",
            codeTemplate: "Tek bir karakteri tutan char veri tipi, ___ tırnak arasına yazılır.",
            correctAnswers: ["tek"],
            options: ["çift", "tek", "üç"],
          ),
          CodeCompletionQuestion(
            questionText: "`boolean` tipindeki bir değişken yalnızca ___ veya ___ değerlerini alabilir.",
            codeTemplate: "boolean tipindeki bir değişken yalnızca ___ veya ___ değerlerini alabilir.",
            correctAnswers: ["true", "false"],
            options: ["true", "false", "1", "0"],
          ),
        ]
      }
    ]
  },

  "java_type_casting": {
    "sub_lessons": [
      {
        "title": "Tip Dönüşümleri (Casting)",
        "parts": [
          {"text": "Bazen bir veri tipini başka bir tipe dönüştürmemiz gerekir. Buna 'tip dönüşümü' (type casting) denir."},
          {"text": "İki türü vardır: Otomatik (Genişletme) ve Manuel (Daraltma)."},
          {"text": "Otomatik Dönüşüm (Widening Casting): Küçük bir tipi daha büyük bir tipe dönüştürürken Java bunu otomatik yapar. (örn: `int` -> `double`)"},
          {"text": "Manuel Dönüşüm (Narrowing Casting): Büyük bir tipi daha küçük bir tipe dönüştürürken veri kaybı riski olduğu için bunu manuel olarak belirtmemiz gerekir. Değişkenin önüne parantez içinde hedef tipi yazarız."},
          {
            "text": "Örneklere bakalım.",
            "code": "int benimInt = 9;\ndouble benimDouble = benimInt; // Otomatik: int -> double\n\ndouble fiyatDouble = 9.78;\nint fiyatInt = (int) fiyatDouble; // Manuel: double -> int\n\n// fiyatInt'in değeri artık 9'dur, ondalık kısım kaybolur.",
            "code_explanation": "İlk örnekte `int`, `double`'dan küçük olduğu için dönüşüm otomatiktir. İkinci örnekte ise `double`'ı `int`'e çevirirken veri kaybı olacağı için `(int)` ile bunu bilinçli olarak yaptığımızı belirttik."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`double ondalik = 10.5;` değişkenini bir `int`'e çevirirsek sonuç ne olur?",
            options: ["11", "10.5", "10"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "`19.99` değerindeki bir double'ı bir int'e manuel olarak dönüştüren kodu tamamla.",
            codeTemplate: "double d = 19.99;\nint i = ___ d;",
            correctAnswers: ["(int)"],
            options: ["(int)", "(double)", "(string)"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir `int`'i `double`'a çevirmek ___ dönüşümdür. Bir `double`'ı `int`'e çevirmek ise ___ dönüşümdür.",
            codeTemplate: "Bir int'i double'a çevirmek ___ dönüşümdür. Bir double'ı int'e çevirmek ise ___ dönüşümdür.",
            correctAnswers: ["otomatik", "manuel"],
            options: ["otomatik", "manuel", "hatalı", "imkansız"],
          ),
          CodeCompletionQuestion(
            questionText: "`int` tipindeki bir sayıyı bir `double` değişkene atamak ___ bir dönüşümdür ve veri kaybı olmaz.",
            codeTemplate: "int tipindeki bir sayıyı bir double değişkene atamak ___ bir dönüşümdür ve veri kaybı olmaz.",
            correctAnswers: ["otomatik"],
            options: ["otomatik", "manuel", "daraltma"],
          ),
          CodeCompletionQuestion(
            questionText: "Büyük bir veri tipini küçüğüne çevirirken, hedef tip değişkenin önüne ___ içinde yazılır.",
            codeTemplate: "Büyük bir veri tipini küçüğüne çevirirken, hedef tip değişkenin önüne ___ içinde yazılır.",
            correctAnswers: ["parantez"],
            options: ["köşeli parantez", "parantez", "süslü parantez"],
          ),
        ]
      }
    ]
  },

  "java_string_class": {
    "sub_lessons": [
      {
        "title": "String Sınıfı ve Metotları",
        "parts": [
          {"text": "Java'da metinler ilkel bir tip değildir, `String` adı verilen bir sınıftır. Bu yüzden `S` harfi büyük yazılır."},
          {"text": "`String` nesneleri, metinler üzerinde birçok işlem yapmamızı sağlayan kullanışlı metotlara sahiptir."},
          {"text": "Bazı yaygın metotlar:"},
          {"text": "`.length()`: Metnin uzunluğunu (karakter sayısını) verir."},
          {"text": "`.toUpperCase()`: Metni büyük harfe çevirir."},
          {"text": "`.toLowerCase()`: Metni küçük harfe çevirir."},
          {"text": "`.indexOf(metin)`: Bir metnin veya karakterin ilk bulunduğu indeksi (konumu) arar."},
          {
            "text": "Bir `String` üzerinde bu metotları kullanalım.",
            "code": "String mesaj = \"Merhaba Dünya\";\n\nSystem.out.println(\"Uzunluk: \" + mesaj.length()); // Uzunluk: 13\nSystem.out.println(mesaj.toUpperCase()); // MERHABA DÜNYA\nSystem.out.println(mesaj.indexOf(\"Dünya\")); // 8",
            "code_explanation": "`+` operatörü ile metinleri ve diğer değişkenleri birleştirebiliriz. Gördüğünüz gibi `String` sınıfının metotlarını kullanarak metin üzerinde çeşitli işlemler yaptık."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir String'in karakter sayısını öğrenmek için hangi metot kullanılır?",
            options: [".size()", ".length()", ".count()"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "`'Hoş Geldin'` metnini tamamen küçük harfe çeviren kodu tamamla.",
            codeTemplate: "String yazi = \"Hoş Geldin\";\nString kucukYazi = yazi.___();",
            correctAnswers: ["toLowerCase"],
            options: ["toUpperCase", "toLowerCase", "toLower"],
          ),
          CodeCompletionQuestion(
            questionText: "İki `String`'i `+` operatörü ile birleştirerek bir cümle oluşturun.",
            codeTemplate: "String kelime1 = \"Java\";\nString kelime2 = \"harika\";\nString cumle = kelime1 + ___ + kelime2;",
            correctAnswers: ["\" \""],
            options: ["\" \"", ",", "+"],
          ),
          CodeCompletionQuestion(
            questionText: "`'java'` metnini `'JAVA'`ya çevirmek için `metin.___()` metodu kullanılır.",
            codeTemplate: "String metin = \"java\";\nmetin = metin.___();",
            correctAnswers: ["toUpperCase"],
            options: ["toUpperCase", "toLowerCase", "toUpper"],
          ),
          CodeCompletionQuestion(
            questionText: "`'Merhaba Java'` metninde 'J' harfinin konumunu (indeksini) bulmak için `metin.___('J')` kullanılır.",
            codeTemplate: "String metin = \"Merhaba Java\";\nint index = metin.___('J');",
            correctAnswers: ["indexOf"],
            options: ["indexOf", "charAt", "contains"],
          ),
        ]
      }
    ]
  },

  "java_println": {
    "sub_lessons": [
      {
        "title": "System.out.println ile Çıktı",
        "parts": [
          {"text": "Java'da konsola (çıktı ekranına) veri yazdırmanın standart yolu `System.out.println()` ve `System.out.print()` metodlarıdır."},
          {"text": "`System.out.println()`: Argüman olarak verilen değeri ekrana yazdırır ve ardından imleci bir sonraki satırın başına taşır."},
          {"text": "`System.out.print()`: Argümanı ekrana yazdırır ancak alt satıra geçmez. Bir sonraki yazdırma işlemi aynı satırdan devam eder."},
          {
            "text": "İkisi arasındaki farkı görelim.",
            "code": "System.out.println(\"Bu birinci satır.\");\nSystem.out.println(\"Bu ikinci satır.\");\n\nSystem.out.print(\"Bu aynı \");\nSystem.out.print(\"satırda kalacak.\");\n\n// Çıktı:\n// Bu birinci satır.\n// Bu ikinci satır.\n// Bu aynı satırda kalacak.",
            "code_explanation": "`println` her seferinde yeni bir satır başlatırken, `print` komutları çıktılarını yan yana birleştirdi."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "İki `print` komutunun çıktısının aynı satırda görünmesini sağlamak için hangisi kullanılmalıdır?",
            options: ["System.out.println()", "System.out.print()", "System.out.write()"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Sayısal bir değeri ekrana yazdıran kodu tamamlayın.",
            codeTemplate: "int sayi = 100;\nSystem.out.println(___);",
            correctAnswers: ["sayi"],
            options: ["sayi", "\"sayi\"", "100"],
          ),
          CodeCompletionQuestion(
            questionText: "Ekrana 'Satır1' ve 'Satır2' yazılarını iki ayrı satırda yazdıran kodu tamamlayın.",
            codeTemplate: "System.out.println(___);\nSystem.out.println(___);",
            correctAnswers: ["\"Satır1\"", "\"Satır2\""],
            options: ["\"Satır1\"", "\"Satır2\"", "\"Satır1\\nSatır2\"", "print"],
          ),
          CodeCompletionQuestion(
            questionText: "`System.out.println()` komutu, metni yazdıktan sonra imleci bir alt ___ taşır.",
            codeTemplate: "System.out.println() komutu, metni yazdıktan sonra imleci bir alt ___ taşır.",
            correctAnswers: ["satıra"],
            options: ["sütuna", "satıra", "karaktere"],
          ),
          CodeCompletionQuestion(
            questionText: "`System.out.print()` komutu ise metni yazdıktan sonra imleci alt satıra ___.",
            codeTemplate: "System.out.print() komutu ise metni yazdıktan sonra imleci alt satıra ___.",
            correctAnswers: ["geçirmez"],
            options: ["geçirir", "geçirmez", "bazen geçirir"],
          ),
        ]
      }
    ]
  },

  "java_scanner": {
    "sub_lessons": [
      {
        "title": "Scanner Sınıfı ile Kullanıcıdan Girdi Alma",
        "parts": [
          {"text": "Programlarımızı interaktif hale getirmek için kullanıcıdan veri almamız gerekir. Java'da bu iş için genellikle `Scanner` sınıfı kullanılır."},
          {"text": "`Scanner`'ı kullanmak için önce `import java.util.Scanner;` satırını dosyanın en üstüne eklemeliyiz."},
          {"text": "Ardından `Scanner myObj = new Scanner(System.in);` şeklinde bir `Scanner` nesnesi oluştururuz."},
          {"text": "Kullanıcıdan veri okumak için `.next()`, `.nextLine()`, `.nextInt()`, `.nextDouble()` gibi metotları kullanırız."},
          {
            "text": "Kullanıcıdan adını ve yaşını alıp ekrana yazdıralım.",
            "code": "import java.util.Scanner; // import etmeyi unutma!\n\npublic class UserInput {\n  public static void main(String[] args) {\n    Scanner okuyucu = new Scanner(System.in);\n    \n    System.out.println(\"Adınızı giriniz:\");\n    String ad = okuyucu.nextLine(); \n    \n    System.out.println(\"Yaşınızı giriniz:\");\n    int yas = okuyucu.nextInt();\n    \n    System.out.println(\"Ad: \" + ad + \", Yaş: \" + yas);\n  }\n}",
            "code_explanation": "Önce `Scanner` sınıfını import ettik. Sonra `okuyucu` adında bir nesne yarattık. `nextLine()` ile metin, `nextInt()` ile tam sayı girdisi aldık."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`Scanner` sınıfını kullanabilmek için hangi paketi import etmeliyiz?",
            options: ["java.io.Scanner", "java.lang.Scanner", "java.util.Scanner"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Kullanıcıdan ondalıklı bir sayı (double) okumak için hangi `Scanner` metodu kullanılır?",
            codeTemplate: "double sayi = okuyucu.___();",
            correctAnswers: ["nextDouble"],
            options: ["nextInt", "nextLine", "nextDouble"],
          ),
          CodeCompletionQuestion(
            questionText: "Kullanıcıdan girdi almak için bir `Scanner` nesnesi oluşturan ve import eden kodu tamamlayın.",
            codeTemplate: "import java.util.___;\n\npublic class Main {\n  public static void main(String[] args) {\n    Scanner input = new Scanner(System.___);\n  }\n}",
            correctAnswers: ["Scanner", "in"],
            options: ["Scanner", "Reader", "in", "out"],
          ),
          CodeCompletionQuestion(
            questionText: "Kullanıcının girdiği boşluk içeren bir metin satırının tamamını okumak için `okuyucu.___()` metodu kullanılır.",
            codeTemplate: "String tumSatir = okuyucu.___();",
            correctAnswers: ["nextLine"],
            options: ["next", "nextLine", "nextInt"],
          ),
          CodeCompletionQuestion(
            questionText: "`Scanner` nesnesi oluşturulurken, klavye girdisini temsil eden `System.___` parametre olarak verilir.",
            codeTemplate: "Scanner klavye = new Scanner(System.___);",
            correctAnswers: ["in"],
            options: ["in", "out", "err"],
          ),
        ]
      }
    ]
  },

  // =======================================================================
  // BÖLÜM 3: OPERATÖRLER
  // =======================================================================

  "java_arithmetic_operators": {
    "sub_lessons": [
      {
        "title": "Aritmetik Operatörler",
        "parts": [
          {"text": "Java, temel matematiksel hesaplamalar için standart aritmetik operatörleri destekler."},
          {"text": "`+` (Toplama), `-` (Çıkarma), `*` (Çarpma), `/` (Bölme)."},
          {"text": "`%` (Mod alma): Bir sayının diğerine bölümünden kalanı verir."},
          {"text": "Ayrıca, bir değişkenin değerini 1 artırmak için `++` ve 1 azaltmak için `--` operatörleri de vardır."},
          {
            "text": "Bu operatörlerin kullanımını görelim.",
            "code": "int x = 10;\nint y = 4;\n\nSystem.out.println(x + y); // 14\nSystem.out.println(x / y); // 2 (İki int bölününce sonuç da int olur)\nSystem.out.println(x % y); // 2 (10'un 4'e bölümünden kalan)\n\nx++; // x şimdi 11\nSystem.out.println(x);",
            "code_explanation": "ÖNEMLİ: İki tam sayının (int) bölümü, ondalıklı kısmı atar ve sonuç yine bir tam sayı olur. Doğru sonuç için en az birinin `double` olması gerekir."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`15 % 4` işleminin sonucu nedir?",
            options: ["3.75", "3", "4"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "`sayac` değişkeninin değerini bir azaltan kodu tamamla.",
            codeTemplate: "int sayac = 5;\nsayac___;",
            correctAnswers: ["--"],
            options: ["++", "--", "-="],
          ),
          CodeCompletionQuestion(
            questionText: "Bir sayının 5'e bölümünden kalanı bulan ve `sonuc` değişkenine atayan kodu tamamlayın.",
            codeTemplate: "int sayi = 23;\nint sonuc = sayi ___ 5;",
            correctAnswers: ["%"],
            options: ["/", "%", "*"],
          ),
          CodeCompletionQuestion(
            questionText: "`int x = 9; int y = 2;` ise `x / y` işleminin sonucu ondalıklı kısmı atılarak ___ olur.",
            codeTemplate: "// int sonuc = 9 / 2;\n// sonuc'un değeri ___ olur.",
            correctAnswers: ["4"],
            options: ["4.5", "5", "4"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir `sayac` değişkeninin değerini bir artırmak için `sayac___;` yazılır.",
            codeTemplate: "int sayac = 0;\nsayac___;",
            correctAnswers: ["++"],
            options: ["+-", "--", "++"],
          ),
        ]
      }
    ]
  },

  "java_assignment_operators": {
    "sub_lessons": [
      {
        "title": "Atama Operatörleri",
        "parts": [
          {"text": "Bir değişkene değer atamak için temel atama operatörü olan `=`'i kullanırız."},
          {"text": "Java, bir aritmetik işlemi ve atamayı birleştiren kısayol operatörleri de sunar."},
          {"text": "`x = x + 5` yazmak yerine, daha kısa olan `x += 5` yazabiliriz."},
          {"text": "Bu kısayollar diğer operatörler için de geçerlidir: `+=`, `-=`, `*=`, `/=`, `%=`."},
          {
            "text": "Bu birleşik atama operatörlerine bakalım.",
            "code": "int bakiye = 100;\n\nbakiye += 50; // bakiye şimdi 150 (bakiye = bakiye + 50)\nbakiye -= 20; // bakiye şimdi 130 (bakiye = bakiye - 20)\nbakiye *= 2;  // bakiye şimdi 260 (bakiye = bakiye * 2)",
            "code_explanation": "Bu operatörler, kodu daha temiz ve okunaklı hale getirir."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`int puan = 50; puan *= 3;` kodundan sonra `puan` değişkeninin değeri ne olur?",
            options: ["53", "503", "150"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "`stok` değişkeninin değerini 10 azaltan kısayol atama operatörünü kullanın.",
            codeTemplate: "int stok = 100;\nstok ___ 10;",
            correctAnswers: ["-="],
            options: ["=", "+=", "-="],
          ),
          CodeCompletionQuestion(
            questionText: "`a`'nın değerini 2 ile çarparak güncelleyen ve `b`'nin değerini 3'e bölerek güncelleyen kodları tamamlayın.",
            codeTemplate: "int a = 10;\nint b = 9;\na ___ 2;\nb ___ 3;",
            correctAnswers: ["*=", "/="],
            options: ["+=", "*=", "/=", "%="],
          ),
          CodeCompletionQuestion(
            questionText: "`x = x + 10;` ifadesinin daha kısa yazılışı `x ___ 10;` şeklindedir.",
            codeTemplate: "int x = 5;\nx ___ 10;",
            correctAnswers: ["+="],
            options: ["*=", "+=", "=>"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir sayının 3'e bölümünden kalanı ile o sayıyı güncellemek için `sayi ___ 3;` kullanılır.",
            codeTemplate: "int sayi = 10;\nsayi ___ 3;",
            correctAnswers: ["%="],
            options: ["/=", "+=", "%="],
          ),
        ]
      }
    ]
  },

  "java_relational_operators": {
    "sub_lessons": [
      {
        "title": "İlişkisel (Karşılaştırma) Operatörler",
        "parts": [
          {"text": "Programların karar vermesi için değerleri karşılaştırmamız gerekir. Bu operatörlerin sonucu her zaman bir `boolean`'dır (`true` veya `false`)."},
          {"text": "`==` (Eşit mi?), `!=` (Eşit değil mi?)."},
          {"text": "`>` (Büyük mü?), `<` (Küçük mü?)."},
          {"text": "`>=` (Büyük veya eşit mi?), `<=` (Küçük veya eşit mi?)."},
          {
            "text": "ÖNEMLİ NOT: `String` gibi nesneleri karşılaştırırken `==` yerine `.equals()` metodu kullanılmalıdır! `==` nesnelerin hafızadaki adreslerini karşılaştırır, içeriklerini değil.",
            "code": "int a = 10;\nint b = 20;\n\nSystem.out.println(a == 10); // true\nSystem.out.println(a != b);  // true\nSystem.out.println(a > b);   // false",
            "code_explanation": "Bu karşılaştırmalar, `if` gibi koşul ifadelerinin temelini oluşturur."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "İki değerin birbirine eşit OLMADIĞINI kontrol eden operatör hangisidir?",
            options: ["==", "!!", "!="],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "`yas` değişkeninin 18'den büyük veya eşit olduğunu kontrol eden kodu tamamla.",
            codeTemplate: "boolean resitMi = (yas ___ 18);",
            correctAnswers: [">="],
            options: [">", "==", ">="],
          ),
          CodeCompletionQuestion(
            questionText: "`a`'nın `b`'ye eşit olduğunu VE `a`'nın 5'ten küçük olduğunu kontrol eden kodları tamamlayın.",
            codeTemplate: "int a = 4; int b = 4;\nboolean esit = (a ___ b);\nboolean kucuk = (a ___ 5);",
            correctAnswers: ["==", "<"],
            options: ["==", "!=", "<", ">"],
          ),
          CodeCompletionQuestion(
            questionText: "İki `String`'in içeriğinin eşit olup olmadığını kontrol etmek için `==` yerine `s1.___ (s2)` metodu kullanılmalıdır.",
            codeTemplate: "String s1 = \"test\"; String s2 = \"test\";\nboolean ayniMi = s1.___ (s2);",
            correctAnswers: ["equals"],
            options: ["compare", "equals", "is"],
          ),
          CodeCompletionQuestion(
            questionText: "`puan` değişkeninin 50'den küçük olup olmadığını kontrol eden koşul `(puan ___ 50)` şeklindedir.",
            codeTemplate: "int puan = 49;\nboolean gectiMi = (puan ___ 50); // false olmalı",
            correctAnswers: ["<"],
            options: [">", "<", "<="],
          ),
        ]
      }
    ]
  },

  "java_logical_operators": {
    "sub_lessons": [
      {
        "title": "Mantıksal Operatörler",
        "parts": [
          {"text": "Birden fazla karşılaştırmayı birleştirmek için mantıksal operatörleri kullanırız."},
          {"text": "`&&` (Mantıksal VE - AND): Her iki koşul da `true` ise sonuç `true` olur."},
          {"text": "`||` (Mantıksal VEYA - OR): Koşullardan en az biri `true` ise sonuç `true` olur."},
          {"text": "`!` (Mantıksal DEĞİL - NOT): Bir boolean değerin sonucunu tersine çevirir (`true` ise `false`, `false` ise `true` yapar)."},
          {
            "text": "Kullanımına bir örnek görelim.",
            "code": "int yas = 22;\nboolean ehliyetVar = true;\n\n// Yaş 18'den büyük VE ehliyeti var mı?\nif (yas > 18 && ehliyetVar) {\n  System.out.println(\"Araç kullanabilir.\");\n}\n\n// Giriş yapılmadı mı?\nboolean girisYapildi = false;\nif (!girisYapildi) {\n  System.out.println(\"Lütfen giriş yapın.\");\n}",
            "code_explanation": "`&&` operatörü her iki şartın da sağlanmasını gerektirirken, `!` operatörü `girisYapildi`'nın `false` olan değerini `true`'ya çevirerek if bloğunun çalışmasını sağladı."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`true || false` işleminin sonucu nedir?",
            options: ["true", "false", "Hata"],
            correctAnswerIndex: 0,
          ),
          CodeCompletionQuestion(
            questionText: "Hava sıcaklığının 20'den büyük VE havanın 'güneşli' olması koşulunu tamamla.",
            codeTemplate: "if (sicaklik > 20 ___ hava.equals(\"güneşli\")) { }",
            correctAnswers: ["&&"],
            options: ["||", "&&", "&"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir sayının 0'dan küçük VEYA 100'den büyük olması durumunu ve bir durumun tersini alan operatörleri tamamlayın.",
            codeTemplate: "if (sayi < 0 ___ sayi > 100) { }\nif (___ ondalikli) { }",
            correctAnswers: ["||", "!"],
            options: ["&&", "||", "!", "not"],
          ),
          CodeCompletionQuestion(
            questionText: "`a > 5 && b < 10` koşulunun `true` olması için her iki tarafın da ___ olması gerekir.",
            codeTemplate: "boolean kosul = (true ___ true); // sonucun true olması için",
            correctAnswers: ["&&"],
            options: ["||", "&&", "!"],
          ),
          CodeCompletionQuestion(
            questionText: "`!` operatörü, bir `boolean` ifadenin sonucunu ___ çevirir.",
            codeTemplate: "boolean durum = true;\ndurum = ___durum; // durum artık false",
            correctAnswers: ["!"],
            options: ["!", "not", "inv"],
          ),
        ]
      }
    ]
  },

  // =======================================================================
  // BÖLÜM 4: KOŞUL YAPILARI
  // =======================================================================

  "java_if_else": {
    "sub_lessons": [
      {
        "title": "if / else if / else",
        "parts": [
          {"text": "Programlarımızın belirli koşullara göre farklı yollar izlemesini sağlayan yapılardır."},
          {"text": "`if`: Bir koşul belirtir. Koşul doğru (`true`) ise, `if` bloğunun içindeki kod çalışır."},
          {"text": "`else if`: İlk `if` koşulu yanlışsa, yeni bir koşulu kontrol etmek için kullanılır. İstediğiniz kadar `else if` ekleyebilirsiniz."},
          {"text": "`else`: Yukarıdaki hiçbir koşul sağlanmazsa çalışacak olan varsayılan kod bloğudur."},
          {
            "text": "Bir öğrencinin notuna göre harf notunu belirleyelim.",
            "code": "int puan = 85;\n\nif (puan >= 90) {\n  System.out.println(\"Harf Notu: A\");\n} else if (puan >= 80) {\n  System.out.println(\"Harf Notu: B\");\n} else {\n  System.out.println(\"Harf Notu: C veya altı\");\n}",
            "code_explanation": "Program, puan 90'dan büyük veya eşit mi diye kontrol eder (yanlış). Sonra puan 80'den büyük veya eşit mi diye kontrol eder (doğru) ve ekrana 'Harf Notu: B' yazar. Kalan `else` bloğunu atlar."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`if` koşulu yanlış olduğunda çalışacak olan varsayılan blok hangisidir?",
            options: ["else if", "else", "then"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir sayının pozitif, negatif veya sıfır olduğunu kontrol eden yapıyı tamamla.",
            codeTemplate: "if (sayi > 0) { }\n___ (sayi < 0) { }\n___ { }",
            correctAnswers: ["else if", "else"],
            options: ["if", "else if", "else"],
          ),
          CodeCompletionQuestion(
            questionText: "Yaş 18'den küçükse \"Giremezsiniz\", değilse \"Girebilirsiniz\" yazan kodu tamamlayın.",
            codeTemplate: "if (yas < 18) {\n  System.out.println(\"Giremezsiniz\");\n} ___ {\n  System.out.println(\"Girebilirsiniz\");\n}",
            correctAnswers: ["else"],
            options: ["if", "else", "else if"],
          ),
          CodeCompletionQuestion(
            questionText: "`if` ve `else if` anahtar kelimelerinden sonra koşul ___ içine yazılır.",
            codeTemplate: "if ___ x > 10 ) { ... }",
            correctAnswers: ["("],
            options: ["(", "{", "["],
          ),
          CodeCompletionQuestion(
            questionText: "Bir `if-else if` zincirinde, bir koşul sağlandığında diğer ___ ve ___ blokları kontrol edilmez.",
            codeTemplate: "Bir if-else if zincirinde, bir koşul sağlandığında diğer ___ ve ___ blokları kontrol edilmez.",
            correctAnswers: ["else if", "else"],
            options: ["if", "else if", "else", "then"],
          ),
        ]
      }
    ]
  },

  "java_switch_case": {
    "sub_lessons": [
      {
        "title": "switch-case Yapısı",
        "parts": [
          {"text": "`switch-case` yapısı, bir değişkenin alabileceği birden çok sabit değere göre farklı kod bloklarını çalıştırmak için kullanılır. `if-else if` zincirine bir alternatiftir."},
          {"text": "Kontrol edilecek değişken `switch` parantezinin içine yazılır."},
          {"text": "Her bir olası değer bir `case` ile belirtilir. Değişkenin değeri `case` ile eşleşirse, o blok çalışır."},
          {"text": "ÇOK ÖNEMLİ: Her `case` bloğunun sonuna `break;` konulmalıdır. Konulmazsa, program doğru `case`'i bulduktan sonra alttaki diğer `case`'leri de kontrol etmeden çalıştırmaya devam eder!"},
          {"text": "`default`: Hiçbir `case` eşleşmezse çalışacak olan varsayılan bloktur (`else` gibi)."},
          {
            "text": "Haftanın gününü sayı olarak alıp ismini yazdıralım.",
            "code": "int gun = 3;\n\nswitch (gun) {\n  case 1:\n    System.out.println(\"Pazartesi\");\n    break;\n  case 2:\n    System.out.println(\"Salı\");\n    break;\n  case 3:\n    System.out.println(\"Çarşamba\");\n    break;\n  default:\n    System.out.println(\"Hafta sonu\");\n}",
            "code_explanation": "`gun` değişkeninin değeri 3 olduğu için program doğrudan `case 3:`'e atlar, 'Çarşamba' yazar ve `break;` komutuyla `switch` bloğundan çıkar."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`switch-case` yapısında bir sonraki case'e geçişi engellemek için hangi komut kullanılır?",
            options: ["continue", "stop", "break"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Hiçbir `case`'in eşleşmediği durumda çalışan bloğun adı nedir?",
            codeTemplate: "switch (deger) { \n  // ... cases ... \n  ___:\n    // kod\n}",
            correctAnswers: ["default"],
            options: ["else", "default", "otherwise"],
          ),
          CodeCompletionQuestion(
            questionText: "`secim` değişkeninin 'A' veya 'B' olma durumlarını kontrol eden `switch` yapısını tamamlayın.",
            codeTemplate: "char secim = 'A';\n___ (secim) {\n  ___ 'A':\n    System.out.println(\"A seçildi\");\n    break;\n  ___ 'B':\n    System.out.println(\"B seçildi\");\n    ___;\n}",
            correctAnswers: ["switch", "case", "case", "break"],
            options: ["switch", "case", "if", "break"],
          ),
          CodeCompletionQuestion(
            questionText: "`case` bloklarının sonuna ___ konulmazsa, program doğru `case`'i bulduktan sonra alttaki diğer `case`'leri de çalıştırır.",
            codeTemplate: "case 1:\n  // kod\n  ___;",
            correctAnswers: ["break"],
            options: ["break", "continue", "stop"],
          ),
          CodeCompletionQuestion(
            questionText: "`switch` ifadesi genellikle `int`, `char`, `String` gibi ___ değerler alan değişkenlerle kullanılır.",
            codeTemplate: "switch ifadesi genellikle ___, ___, ___ gibi sabit değerler alan değişkenlerle kullanılır.",
            correctAnswers: ["int", "char"],
            options: ["int", "char", "double", "boolean"],
          ),
        ]
      }
    ]
  },

  // =======================================================================
  // BÖLÜM 5: DÖNGÜLER
  // =======================================================================

  "java_for_loop": {
    "sub_lessons": [
      {
        "title": "for Döngüsü",
        "parts": [
          {"text": "Tekrar eden işlemleri belirli bir sayıda yapmak için `for` döngüsünü kullanırız."},
          {"text": "`for` döngüsü üç bölümden oluşur ve noktalı virgülle ayrılır: `for (başlangıç; koşul; artış)`."},
          {"text": "1. Başlangıç: Döngü başlamadan önce bir kere çalışır (örn: `int i = 0`)."},
          {"text": "2. Koşul: Döngünün her adımından önce kontrol edilir. `true` olduğu sürece döngü devam eder (örn: `i < 5`)."},
          {"text": "3. Artış/Azalış: Döngünün her adımından sonra çalışır (örn: `i++`)."},
          {
            "text": "Ekrana 0'dan 4'e kadar olan sayıları yazdıralım.",
            "code": "for (int i = 0; i < 5; i++) {\n  System.out.println(i);\n}",
            "code_explanation": "Döngü `i` 0 ile başlar. `i` 5'ten küçük olduğu sürece devam eder. Her adımda `i`'nin değeri ekrana yazdırılır ve sonra değeri 1 artırılır. `i` 5 olduğunda koşul `false` olur ve döngü biter."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`for (int i = 1; i <= 3; i++)` döngüsü kaç kez çalışır?",
            options: ["2", "3", "4"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir `for` döngüsünün üç bölümünü ayıran karakter nedir?",
            codeTemplate: "for (int i=0 ___ i<10 ___ i++) { }",
            correctAnswers: [";", ";"],
            options: [",", ";", ":"],
          ),
          CodeCompletionQuestion(
            questionText: "10'dan başlayıp 0'a kadar (0 dahil) geriye doğru sayan bir `for` döngüsü yazın.",
            codeTemplate: "for (int i = 10; i >= ___; i___) {\n  System.out.println(i);\n}",
            correctAnswers: ["0", "--"],
            options: ["0", "1", "++", "--"],
          ),
          CodeCompletionQuestion(
            questionText: "`for` döngüsünün `(int i = 0; ...)` kısmı döngü başlamadan sadece ___ kez çalışır.",
            codeTemplate: "for` döngüsünün başlangıç kısmı döngü başlamadan sadece ___ kez çalışır.",
            correctAnswers: ["bir"],
            options: ["her adımda", "bir", "iki"],
          ),
          CodeCompletionQuestion(
            questionText: "Döngünün devam edip etmeyeceği, her adımdan önce ___ bölümünün kontrol edilmesiyle belirlenir.",
            codeTemplate: "for (başlangıç; ___; artış) { }",
            correctAnswers: ["koşul"],
            options: ["başlangıç", "koşul", "artış"],
          ),
        ]
      }
    ]
  },

  "java_while_loops": {
    "sub_lessons": [
      {
        "title": "while ve do-while Döngüleri",
        "parts": [
          {"text": "`while` döngüsü, belirli bir koşul `true` olduğu sürece içindeki kod bloğunu çalıştırır."},
          {"text": "DİKKAT: Sonsuz döngüye girmemek için, döngü içindeki koşulu değiştiren bir ifade olmalıdır."},
          {"text": "`do-while` döngüsü, `while`'a çok benzer. Tek farkı, koşulun döngünün sonunda kontrol edilmesidir. Bu da döngünün içindeki kodun en az bir kere çalışmasını garanti eder."},
          {
            "text": "İki döngü türünü de görelim.",
            "code": "int sayac = 0;\nwhile (sayac < 3) {\n  System.out.println(sayac);\n  sayac++; // Bu satır sonsuz döngüyü engeller\n}\n\nint i = 5;\ndo {\n  System.out.println(\"Bu en az bir kez çalışır.\");\n} while (i < 3);",
            "code_explanation": "İlk `while` döngüsü, `sayac` 3'ten küçük olduğu sürece çalıştı. İkinci `do-while` döngüsünde ise koşul (`i < 3`) en başta yanlış olmasına rağmen, blok içindeki kod bir kez çalıştı ve sonra döngü durdu."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Döngü bloğunun en az bir kere çalışmasını garanti eden döngü türü hangisidir?",
            options: ["for", "while", "do-while"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Kullanıcı doğru şifreyi (`\"1234\"`) girene kadar şifre soran `while` döngüsünü tamamla.",
            codeTemplate: "while (!sifre.equals(\"1234\")) {\n  sifre = okuyucu.___();\n}",
            correctAnswers: ["nextLine"],
            options: ["nextInt", "nextLine", "next"],
          ),
          CodeCompletionQuestion(
            questionText: "`x` 5'ten büyük olduğu sürece çalışan bir `while` döngüsü ve bloğu en az bir kez çalışan bir `do-while` döngüsü oluşturun.",
            codeTemplate: "___ (x > 5) { }\n\n___ { } ___ (y > 5);",
            correctAnswers: ["while", "do", "while"],
            options: ["while", "for", "do", "if"],
          ),
          CodeCompletionQuestion(
            questionText: "`while` döngüsü içinde, döngü koşulunu etkileyen değişkenin değeri ___ sonsuz döngü oluşur.",
            codeTemplate: "while (x < 5) { /* x'in değeri hiç artmazsa */ }\n// Bu durumda ___ döngü oluşur.",
            correctAnswers: ["sonsuz"],
            options: ["kısa", "sonsuz", "hatalı"],
          ),
          CodeCompletionQuestion(
            questionText: "`do-while` döngüsünde koşul, `while` anahtar kelimesi ile döngü bloğunun ___ kontrol edilir.",
            codeTemplate: "do { ... } while(koşul);\n// Koşul döngünün ___ kontrol edilir.",
            correctAnswers: ["sonunda"],
            options: ["başında", "ortasında", "sonunda"],
          ),
        ]
      }
    ]
  },

  "java_break_continue": {
    "sub_lessons": [
      {
        "title": "break ve continue",
        "parts": [
          {"text": "Döngülerin normal akışını kontrol etmek için `break` ve `continue` ifadelerini kullanırız."},
          {"text": "`break`: İçinde bulunduğu döngüyü o anda tamamen sonlandırır. Program döngüden sonraki koddan devam eder."},
          {"text": "`continue`: Döngünün mevcut adımını atlar ve döngünün bir sonraki tekrarına geçer. Döngüyü kırmaz, sadece o adımı pas geçer."},
          {
            "text": "Bu ifadeleri bir `for` döngüsünde görelim.",
            "code": "for (int i = 0; i < 10; i++) {\n  if (i == 4) {\n    continue; // i=4 ise bu adımı atla, 4'ü yazdırma\n  }\n  if (i == 8) {\n    break; // i=8 ise döngüyü tamamen kır\n  }\n  System.out.println(i);\n}",
            "code_explanation": "Bu kod 0,1,2,3 yazar. `i` 4 olduğunda `continue` nedeniyle `println` çalışmaz ve döngü 5'ten devam eder. 5,6,7 yazar. `i` 8 olduğunda `break` nedeniyle döngü tamamen durur."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir döngünün mevcut adımını atlayıp bir sonrakine geçmesini sağlayan komut hangisidir?",
            options: ["break", "continue", "skip"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir sayıya ulaşıldığında döngüyü tamamen durduran kodu tamamla.",
            codeTemplate: "if (sayi == -1) {\n  ___;\n}",
            correctAnswers: ["break"],
            options: ["continue", "break", "stop"],
          ),
          CodeCompletionQuestion(
            questionText: "Çift sayıları atlayıp sadece tek sayıları yazdıran döngüyü tamamlayın.",
            codeTemplate: "for (int i=0; i<10; i++) {\n  if (i % 2 == 0) {\n    ___;\n  }\n  System.out.println(i);\n}",
            correctAnswers: ["continue"],
            options: ["break", "continue", "return"],
          ),
          CodeCompletionQuestion(
            questionText: "`break` komutu, içinde bulunduğu döngüyü anında ___ ve program döngüden sonraki satırdan devam eder.",
            codeTemplate: "break komutu, içinde bulunduğu döngüyü anında ___ .",
            correctAnswers: ["sonlandırır"],
            options: ["atlatır", "sonlandırır", "başlatır"],
          ),
          CodeCompletionQuestion(
            questionText: "`continue` komutu döngüyü kırmaz, sadece mevcut adımın geri kalanını ___ ve bir sonraki adıma geçer.",
            codeTemplate: "continue komutu döngüyü kırmaz, sadece mevcut adımın geri kalanını ___ .",
            correctAnswers: ["atlar"],
            options: ["sonlandırır", "atlar", "çalıştırır"],
          ),
        ]
      }
    ]
  },

  "java_enhanced_for": {
    "sub_lessons": [
      {
        "title": "Enhanced for Döngüsü (for-each)",
        "parts": [
          {"text": "Diziler (Arrays) veya koleksiyonlar gibi bir veri yapısının tüm elemanları üzerinde sırayla gezinmek için kullanılan daha basit bir `for` döngüsü çeşididir."},
          {"text": "İndeksle (i=0, i++, vs.) uğraşmamıza gerek kalmaz. Bu da kodu daha okunaklı hale getirir ve hata yapma olasılığını azaltır."},
          {"text": "Genel yapısı şöyledir: `for (Tip eleman : dizi)`."},
          {
            "text": "Bir araba markaları dizisindeki tüm elemanları yazdıralım.",
            "code": "String[] arabalar = {\"Volvo\", \"BMW\", \"Ford\"};\n\nfor (String marka : arabalar) {\n  System.out.println(marka);\n}",
            "code_explanation": "Bu döngü, `arabalar` dizisindeki her bir elemanı sırayla alır, `marka` adlı geçici bir `String` değişkenine atar ve blok içindeki kodu çalıştırır."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Enhanced for döngüsü en çok ne tür verilerle kullanılır?",
            options: ["Tek bir sayı", "Diziler ve Koleksiyonlar", "Koşullarla"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "`sayilar` dizisindeki her bir sayıyı ekrana yazdıran enhanced for döngüsünü tamamla.",
            codeTemplate: "int[] sayilar = {1, 2, 3};\nfor (___ sayi : sayilar) {\n  System.out.println(sayi);\n}",
            correctAnswers: ["int"],
            options: ["int", "double", "String"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir isimler dizisindeki her elemanı yazdıran döngüyü tamamlayın.",
            codeTemplate: "String[] isimler = {\"Ali\", \"Veli\"};\nfor (String ___ : ___) {\n  System.out.println(isim);\n}",
            correctAnswers: ["isim", "isimler"],
            options: ["isim", "i", "isimler", "String"],
          ),
          CodeCompletionQuestion(
            questionText: "Enhanced for döngüsü, döngü sayacı veya ___ numarası ile uğraşma ihtiyacını ortadan kaldırır.",
            codeTemplate: "Enhanced for döngüsü, ___ numarası ile uğraşma ihtiyacını ortadan kaldırır.",
            correctAnswers: ["indeks"],
            options: ["değer", "indeks", "tip"],
          ),
          CodeCompletionQuestion(
            questionText: "`for (String gun : gunler)` ifadesinde, `gunler` ___ , `gun` ise onun her bir ___ temsil eder.",
            codeTemplate: "for (String gun : gunler) ifadesinde, gunler ___ , gun ise onun her bir ___ temsil eder.",
            correctAnswers: ["dizisini", "elemanını"],
            options: ["dizisini", "elemanını", "tipini", "boyutunu"],
          ),
        ]
      }
    ]
  },

  // =======================================================================
  // BÖLÜM 6: DİZİLER (ARRAYS)
  // =======================================================================

  "java_arrays": {
    "sub_lessons": [
      {
        "title": "Tek Boyutlu Diziler",
        "parts": [
          {"text": "Diziler, aynı türden birden fazla değeri tek bir değişken altında saklamak için kullanılır."},
          {"text": "Dizi tanımlarken, veri türünden sonra köşeli parantez `[]` kullanırız."},
          {"text": "Dizideki elemanlara 0'dan başlayan 'indeks' numaralarıyla erişiriz."},
          {"text": "Bir dizinin boyutunu (kaç eleman tuttuğunu) `dizi.length` özelliği ile öğrenebiliriz."},
          {
            "text": "Bir dizi oluşturalım ve elemanlarına erişelim.",
            "code": "String[] gunler = {\"Pazartesi\", \"Salı\", \"Çarşamba\"};\n\n// İlk elemana erişim (indeks 0)\nSystem.out.println(gunler[0]); // Pazartesi\n\n// Bir elemanı değiştirme\ngunler[1] = \"YENİ SALI\";\nSystem.out.println(gunler[1]); // YENİ SALI\n\n// Dizinin boyutunu öğrenme\nSystem.out.println(gunler.length); // 3",
            "code_explanation": "Süslü parantezlerle doğrudan değer atayarak bir dizi oluşturduk. Köşeli parantezler içine indeks numarasını yazarak elemanlara eriştik ve değerlerini güncelledik."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`int[] sayilar = {10, 20, 30};` dizisinin son elemanına nasıl erişilir?",
            options: ["sayilar[3]", "sayilar.last", "sayilar[2]"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "5 elemanlı bir `double` dizisi oluşturan kodu tamamla.",
            codeTemplate: "double[] maaslar = new double[___];",
            correctAnswers: ["5"],
            options: ["4", "5", "6"],
          ),
          CodeCompletionQuestion(
            questionText: "`notlar` dizisinin ikinci elemanını (`85`) getiren ve dizinin toplam eleman sayısını yazdıran kodu tamamlayın.",
            codeTemplate: "int[] notlar = {100, 85, 90};\nikinciNot = notlar[___];\nuzunluk = notlar.___ ;",
            correctAnswers: ["1", "length"],
            options: ["1", "2", "length", "size()"],
          ),
          CodeCompletionQuestion(
            questionText: "Dizilerde elemanların indeks numaraları her zaman ___'dan başlar.",
            codeTemplate: "Dizilerde elemanların indeks numaraları her zaman ___'dan başlar.",
            correctAnswers: ["0"],
            options: ["1", "0", "-1"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir dizinin eleman sayısını veren `dizi.length` bir metot değil, bir ___'dir.",
            codeTemplate: "Bir dizinin eleman sayısını veren dizi.length bir metot değil, bir ___'dir.",
            correctAnswers: ["özellik"],
            options: ["metot", "özellik", "sınıf"],
          ),
        ]
      }
    ]
  },

  "java_multidimensional_arrays": {
    "sub_lessons": [
      {
        "title": "Çok Boyutlu Diziler",
        "parts": [
          {"text": "Çok boyutlu diziler, aslında 'dizilerin dizisi'dir. En yaygın olanı matris gibi yapıları temsil eden 2 boyutlu dizilerdir."},
          {"text": "Tanımlarken ve erişirken her boyut için ayrı bir köşeli parantez `[]` kullanılır."},
          {"text": "Örneğin `int[][] matris;` şeklinde 2 boyutlu bir tam sayı dizisi tanımlanır."},
          {
            "text": "2x3'lük bir matris oluşturalım ve bir elemanına erişelim.",
            "code": "int[][] matris = { {1, 2, 3}, {4, 5, 6} };\n\n// 1. satırın 2. sütunundaki elemana erişim (indeksler 0'dan başlar)\n// Yani 2. satır, 3. sütun -> 6\nint eleman = matris[1][2];\n\nSystem.out.println(eleman); // Çıktı: 6",
            "code_explanation": "İlk köşeli parantez satır numarasını, ikincisi ise sütun numarasını belirtir. `matris[1][2]` ifadesi, 1. indeksteki satırın (`{4, 5, 6}`) 2. indeksteki elemanını (`6`) getirir."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`int[][] dizi = {{1,2},{3,4}};` kodunda `dizi[0][1]` hangi değeri verir?",
            options: ["1", "2", "3"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "3 satır ve 4 sütundan oluşan 2 boyutlu bir `char` dizisi oluşturan kodu tamamla.",
            codeTemplate: "char[][] tahta = new char[___][___];",
            correctAnswers: ["3", "4"],
            options: ["3", "4", "2", "5"],
          ),
          CodeCompletionQuestion(
            questionText: "Verilen matrisin tüm elemanlarını iç içe `for` döngüsüyle yazdıran kodu tamamlayın.",
            codeTemplate: "int[][] sayilar = {{1}, {2}};\nfor (int i=0; i<sayilar.length; i++) {\n  for (int j=0; j<sayilar[i].length; j++) {\n    System.out.println(sayilar[___][___]);\n  }\n}",
            correctAnswers: ["i", "j"],
            options: ["i", "j", "0", "1"],
          ),
          CodeCompletionQuestion(
            questionText: "Çok boyutlu diziler aslında 'dizilerin ___' yapısıdır.",
            codeTemplate: "Çok boyutlu diziler aslında 'dizilerin ___' yapısıdır.",
            correctAnswers: ["dizisi"],
            options: ["listesi", "dizisi", "toplamı"],
          ),
          CodeCompletionQuestion(
            questionText: "2 boyutlu bir `matris` dizisinde bir elemana erişmek için `matris[___][___]` şeklinde iki indeks kullanılır.",
            codeTemplate: "matris[satır][sütun] ifadesindeki ilk indeks ___ , ikinci indeks ___ numarasını belirtir.",
            correctAnswers: ["satır", "sütun"],
            options: ["satır", "sütun", "değer", "boyut"],
          ),
        ]
      }
    ]
  },

  "java_arrays_class": {
    "sub_lessons": [
      {
        "title": "Arrays Sınıfı Yardımcı Metotları",
        "parts": [
          {"text": "Java'nın `java.util` paketi, dizilerle ilgili yaygın işlemleri kolaylaştırmak için `Arrays` adında bir yardımcı sınıf sunar."},
          {"text": "Bunu kullanmak için dosyanın başına `import java.util.Arrays;` eklemeliyiz."},
          {"text": "Bazı kullanışlı metotları:"},
          {"text": "`Arrays.toString(dizi)`: Dizinin içeriğini okunabilir bir formatta (`[eleman1, eleman2, ...]`) metin olarak döndürür."},
          {"text": "`Arrays.sort(dizi)`: Diziyi yerinde (in-place) sıralar (sayısal veya alfabetik)."},
          {"text": "`Arrays.equals(dizi1, dizi2)`: İki dizinin içeriklerinin aynı olup olmadığını kontrol eder."},
          {
            "text": "`Arrays` sınıfının metotlarını kullanalım.",
            "code": "import java.util.Arrays;\n\nint[] sayilar = {5, 2, 8, 1};\n\n// Diziyi sıralama\nArrays.sort(sayilar);\n\n// Diziyi yazdırma\nSystem.out.println(Arrays.toString(sayilar)); // [1, 2, 5, 8]",
            "code_explanation": "`Arrays.sort()` metodu `sayilar` dizisini küçükten büyüğe sıraladı. `Arrays.toString()` ise diziyi doğrudan yazdırmaya çalıştığımızda alacağımız anlamsız referans adresi yerine, içeriğini güzel bir formatta görmemizi sağladı."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir dizinin içeriğini kolayca ekrana yazdırmak için hangi metot kullanılır?",
            options: ["Arrays.print()", "Arrays.sort()", "Arrays.toString()"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "`isimler` dizisini alfabetik olarak sıralayan kodu tamamla.",
            codeTemplate: "String[] isimler = {\"Zeynep\", \"Ali\"};\nArrays.___ (isimler);",
            correctAnswers: ["sort"],
            options: ["sort", "order", "toString"],
          ),
          CodeCompletionQuestion(
            questionText: "`Arrays` sınıfını kullanmak için gereken import ifadesini ve bir diziyi sıralayan kodu tamamlayın.",
            codeTemplate: "import java.util.___;\n\npublic class Main {\n  public static void main(String[] args) {\n    int[] dizi = {3,1,2};\n    Arrays.sort(___);\n  }\n}",
            correctAnswers: ["Arrays", "dizi"],
            options: ["Arrays", "List", "dizi", "sort"],
          ),
          CodeCompletionQuestion(
            questionText: "`Arrays.sort(dizi)` metodu, sayısal dizileri küçükten büyüğe, metin dizilerini ise ___ olarak sıralar.",
            codeTemplate: "Arrays.sort(dizi) metodu, metin dizilerini ___ olarak sıralar.",
            correctAnswers: ["alfabetik"],
            options: ["ters", "alfabetik", "rastgele"],
          ),
          CodeCompletionQuestion(
            questionText: "İki dizinin içeriklerinin birebir aynı olup olmadığını kontrol etmek için `Arrays.___ (dizi1, dizi2)` metodu kullanılır.",
            codeTemplate: "boolean esitMi = Arrays.___ (dizi1, dizi2);",
            correctAnswers: ["equals"],
            options: ["compare", "equals", "match"],
          ),
        ]
      }
    ]
  },
  "java_methods": {
    "sub_lessons": [
      {
        "title": "Metot Tanımlama ve Çağırma",
        "parts": [
          {"text": "Aynı kodları tekrar tekrar yazmaktan yoruldunuz mu? Metotlar (Methods) tam da bu sorunu çözmek için var!"},
          {"text": "Metotlar, belirli bir işi yapmak üzere tasarlanmış, isimlendirilmiş ve tekrar tekrar çağırabileceğimiz kod bloklarıdır."},
          {"text": "Java'da bir metot dönüş_tipi metot_adı() { ... } şeklinde tanımlanır. main de aslında özel bir metottur."},
          {"text": "Bir metodu çalıştırmak için, adını yazıp sonuna parantez () koymamız yeterlidir. Buna 'metot çağırma' denir."},
          {
            "text": "Ekrana bir selamlama mesajı yazan basit bir metot yazalım ve çağıralım.",
            "code": '''
public class Main {
  // Metodu burada tanımlıyoruz
  public static void selamVer() {
    System.out.println("Merhaba, Java dünyasına hoş geldiniz!");
  }

  public static void main(String[] args) {
    // Metodu burada çağırıyoruz
    selamVer();
  }
}''',
            "code_explanation": "selamVer adında bir metot tanımladık. main metodunun içinden selamVer() yazarak bu kod bloğunu çalıştırdık."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Java'da bir metot tanımlarken, o metodun bir değer döndürmeyeceğini belirten anahtar kelime nedir?",
            options: ["int", "String", "void"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "cizgiCiz adında, ekrana '-----' yazan bir metot tanımlayın.",
            codeTemplate: "public static ___ cizgiCiz() {\n  System.out.println(\"-----\");\n}",
            correctAnswers: ["void"],
            options: ["void", "int", "String"],
          ),
          CodeCompletionQuestion(
            questionText: "Aşağıda tanımlanmış mesajGoster metodunu main içinden çağırın.",
            codeTemplate: "public static void mesajGoster() { ... }\n\npublic static void main(String[] args) {\n  ___;\n}",
            correctAnswers: ["mesajGoster()"],
            options: ["mesajGoster()", "run mesajGoster", "void mesajGoster"],
          ),
          CodeCompletionQuestion(
            questionText: "Ekrana iki kere alt alta 'Merhaba' yazmak için selamVer metodunu tekrar çağırın.",
            codeTemplate: "public static void main(String[] args) {\n  selamVer();\n  ___;\n}",
            correctAnswers: ["selamVer()"],
            options: ["selamVer()", "tekrarSelam()", "selamVer;"],
          ),
          CodeCompletionQuestion(
            questionText: "'Metot çalıştı!' mesajını ekrana yazdıran 'calistir' adında bir metot tanımlayın.",
            codeTemplate: "public static void ___() {\n  System.out.println(\"Metot çalıştı!\");\n}",
            correctAnswers: ["calistir"],
            options: ["calistir", "main", "void"],
          )
        ]
      }
    ]
  },
  "java_parameters_return": {
    "sub_lessons": [
      {
        "title": "Parametreler ve Argümanlar",
        "parts": [
          {"text": "Metotları daha esnek hale getirmek için onlara dışarıdan bilgi gönderebiliriz."},
          {"text": "Metodu tanımlarken parantez içine yazdığımız değişkenlere 'parametre' denir. Bunlar metodun çalışmak için beklediği verilerdir."},
          {"text": "Metodu çağırırken parantez içine yazdığımız gerçek değerlere ise 'argüman' denir."},
          {
            "text": "Kişiye özel selam veren bir metot yazalım.",
            "code": '''
public class Main {
  // 'isim' burada bir parametredir
  public static void selamla(String isim) {
    System.out.println("Merhaba, " + isim + "!");
  }

  public static void main(String[] args) {
    // "Ahmet" ve "Zeynep" burada argümandır
    selamla("Ahmet");
    selamla("Zeynep");
  }
}''',
            "code_explanation": "selamla metodu artık bir String türünde isim parametresi bekliyor. Çağırırken verdiğimiz argüman, metot içinde bu parametre değişkeni tarafından kullanılıyor."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir metodu tanımlarken parantez içinde belirtilen değişkene ne ad verilir?",
            options: ["Argüman", "Parametre", "Değer"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "İki tam sayıyı toplayan, sayi1 ve sayi2 adında iki parametre alan bir metot tanımlayın.",
            codeTemplate: "public static void topla(int ___, int ___) {\n  System.out.println(sayi1 + sayi2);\n}",
            correctAnswers: ["sayi1", "sayi2"],
            options: ["sayi1", "sayi2", "arg1", "arg2"],
          ),
          CodeCompletionQuestion(
            questionText: "İsme özel selamlama yapan selamla metodunu 'Ayşe' argümanı ile çağırın.",
            codeTemplate: "public static void selamla(String ad) { ... }\n\nselamla(___);",
            correctAnswers: ["\"Ayşe\""],
            options: ["\"Ayşe\"", "ad", "String ad"],
          ),
          CodeCompletionQuestion(
            questionText: "Verilen fiyatı ekrana yazdıran metodu double türünde bir parametre alacak şekilde tamamlayın.",
            codeTemplate: "public static void fiyatYazdir( ___ fiyat) {\n  System.out.println(\"Fiyat: \" + fiyat);\n}",
            correctAnswers: ["double"],
            options: ["double", "int", "String"],
          )
        ]
      },
      {
        "title": "Değer Döndürme: 'return'",
        "parts": [
          {"text": "Metotlar sadece işlem yapmakla kalmaz, aynı zamanda bir sonuç üretebilirler."},
          {"text": "Bir metottan bir değeri dışarıya, çağrıldığı yere geri göndermek için return ifadesini kullanırız."},
          {"text": "Değer döndüren metotlarda void yerine, dönecek değerin veri tipini (örn: int, String) belirtmeliyiz."},
          {
            "text": "İki sayıyı toplayıp sonucu ekrana yazdırmak yerine, sonucu geri döndüren bir metot yazalım.",
            "code": '''
public class Main {
  public static int topla(int a, int b) {
    return a + b;
  }

  public static void main(String[] args) {
    int sonuc = topla(12, 8);
    System.out.println("İşlemin sonucu: " + sonuc);
  }
}''',
            "code_explanation": "topla metodu artık void değil, int. Bu, bir tam sayı döndüreceği anlamına gelir. return a + b ile bu değeri döndürdük ve sonuc değişkenine atadık."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir metottan bir değer döndürmek için hangi ifade kullanılır?",
            options: ["print", "return", "send"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Verilen bir sayının karesini geri döndüren metodu tamamlayın.",
            codeTemplate: "public static int kareAl(int sayi) {\n  ___ sayi * sayi;\n}",
            correctAnswers: ["return"],
            options: ["print", "return", "output"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir kişinin yaşını alıp, 18'den büyükse true, değilse false döndüren metodu tamamlayın.",
            codeTemplate: "public static boolean resitMi(int yas) {\n  if (yas >= 18) {\n    return ___;\n  } else {\n    return ___;\n  }\n}",
            correctAnswers: ["true", "false"],
            options: ["true", "false", "1", "0"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir selamlama mesajını String olarak döndüren metodu tamamlayın.",
            codeTemplate: "public static String selamGetir() {\n  ___ \"Merhaba!\";\n}",
            correctAnswers: ["return"],
            options: ["return", "print", "String"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir boolean değer döndüren metot tanımındaki eksik dönüş tipini yazın.",
            codeTemplate: "public static ___ kontrolEt() {\n  return true;\n}",
            correctAnswers: ["boolean"],
            options: ["void", "int", "boolean"],
          )
        ]
      }
    ]
  },
  "java_method_overloading": {
    "sub_lessons": [
      {
        "title": "Metot Overloading (Aşırı Yükleme)",
        "parts": [
          {"text": "Java'da aynı isimde fakat farklı parametrelere sahip birden fazla metot tanımlayabiliriz. Bu özelliğe 'Metot Aşırı Yükleme' (Method Overloading) denir."},
          {"text": "Metotların imzaları (parametrelerin sayısı, tipi veya sırası) farklı olmalıdır. Geri dönüş tipi tek başına yeterli değildir."},
          {"text": "Bu, aynı anlama gelen bir işlem için farklı veri tipleriyle çalışmamızı sağlar."},
          {
            "text": "topla adında, hem iki tam sayıyı hem de iki ondalıklı sayıyı toplayabilen metotlar yazalım.",
            "code": '''
public class Main {
  public static int topla(int a, int b) {
    return a + b;
  }

  public static double topla(double a, double b) {
    return a + b;
  }

  public static void main(String[] args) {
    System.out.println(topla(5, 4));      // 9
    System.out.println(topla(3.5, 2.5));  // 6.0
  }
}''',
            "code_explanation": "Java, çağırdığımız metoda verdiğimiz argümanların tiplerine bakarak hangi topla metodunu çalıştıracağını anlar."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Metot aşırı yüklemesi için metotların neyi farklı olmalıdır?",
            options: ["Sadece geri dönüş tipleri", "Sadece metot isimleri", "Parametre imzaları (sayı, tip, sıra)"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "int ve String parametre alan bilgiYazdir metotlarını tamamlayın.",
            codeTemplate: "public static void bilgiYazdir(String ad) { ... }\npublic static void bilgiYazdir(int ___ ) { ... }",
            correctAnswers: ["yas"],
            options: ["yas", "ad", "String"],
          ),
          CodeCompletionQuestion(
            questionText: "Hem bir, hem de iki string'i birleştiren birlestir metotlarını çağırın.",
            codeTemplate: "birlestir(\"Merhaba\");\nbirlestir(___, ___);",
            correctAnswers: ["\"Merhaba\"", "\"Dünya\""],
            options: ["\"Merhaba\"", "\"Dünya\"", "1", "2"],
          ),
          CodeCompletionQuestion(
            questionText: "Aynı isimli 'yazdir' metodunun birincisi int, ikincisi double parametresi alacak şekilde tamamlayın.",
            codeTemplate: "public void yazdir(int sayi) { ... }\npublic void yazdir( ___ sayi) { ... }",
            correctAnswers: ["double"],
            options: ["double", "String", "int"],
          ),
          CodeCompletionQuestion(
            questionText: "Java'nın hangi 'topla' metodunu çağıracağını belirleyen argüman tipini yazın.",
            codeTemplate: "topla(5, 10);      // int versiyonu çağrılır\ntopla(5.5, 10.5); // ___ versiyonu çağrılır",
            correctAnswers: ["double"],
            options: ["int", "String", "double"],
          )
        ]
      }
    ]
  },
  "java_scope": {
    "sub_lessons": [
      {
        "title": "Değişken Kapsamı (Scope)",
        "parts": [
          {"text": "Değişken Kapsamı, bir değişkenin programın neresinde tanındığını ve erişilebilir olduğunu belirtir."},
          {"text": "Metot Kapsamı (Local Scope): Bir metot içinde tanımlanan değişkenler 'yerel değişkenlerdir'. Sadece o metot içinde yaşarlar ve dışarıdan erişilemezler."},
          {"text": "Sınıf Kapsamı (Class Scope): Metotların dışında ama sınıfın içinde tanımlanan değişkenlerdir. O sınıfa ait tüm metotlar tarafından erişilebilirler."},
          {
            "text": "Bu iki kapsam arasındaki farkı görelim.",
            "code": '''
public class Main {
  static int sinifDegiskeni = 100; // Sınıf kapsamında

  public static void main(String[] args) {
    int yerelDegisken = 50; // Metot kapsamında
    System.out.println(yerelDegisken);
    System.out.println(sinifDegiskeni);
    testMetodu();
  }

  public static void testMetodu() {
    // System.out.println(yerelDegisken); // HATA! Erişilemez.
    System.out.println(sinifDegiskeni); // Erişilebilir.
  }
}''',
            "code_explanation": "yerelDegisken, sadece main içinde tanınır. Ancak sinifDegiskeni hem main hem de testMetodu tarafından erişilebilir."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir metot içinde tanımlanan değişkene ne ad verilir ve nereden erişilebilir?",
            options: ["Global Değişken, her yerden", "Yerel Değişken, sadece tanımlandığı metottan", "Sınıf Değişkeni, tüm sınıftan"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Aşağıdaki kodda puan değişkeni hangi kapsama aittir?",
            codeTemplate: "public class Oyun {\n  static int puan = 0;\n  public static void main(String[] args) { ... }\n} // puan: ___ Kapsamı",
            correctAnswers: ["Sınıf"],
            options: ["Metot", "Sınıf", "Blok"],
          ),
          CodeCompletionQuestion(
            questionText: "mesaj değişkeni sadece metot içinden erişilebildiği için ne tür bir değişkendir?",
            codeTemplate: "public void goster() {\n  String mesaj = \"Merhaba\"; // ___ değişken\n}",
            correctAnswers: ["Yerel"],
            options: ["Yerel", "Sınıf", "Global"],
          ),
          CodeCompletionQuestion(
            questionText: "Hangi değişkene hem metot1 hem de metot2 içinden erişilebilir?",
            codeTemplate: "public class Test {\n  String globalMesaj = \"A\";\n  public void metot1() {\n    String yerelMesaj = \"B\";\n    System.out.println(___);\n  }\n  public void metot2() {\n    System.out.println(___);\n  }\n}",
            correctAnswers: ["globalMesaj", "globalMesaj"],
            options: ["yerelMesaj", "globalMesaj"],
          )
        ]
      }
    ]
  },
  "java_class_object": {
    "sub_lessons": [
      {
        "title": "Sınıf (Class) ve Nesne (Object)",
        "parts": [
          {"text": "Nesne Yönelimli Programlama'nın (OOP) kalbine hoş geldiniz!"},
          {"text": "Sınıf (Class), bir nesnenin özelliklerini (niteliklerini) ve davranışlarını (metotlarını) tanımlayan bir şablondur. Tıpkı bir araba planı gibi."},
          {"text": "Nesne (Object) ise o sınıftan oluşturulan somut bir örnektir. Plandan üretilmiş gerçek bir araba gibi."},
          {"text": "Bir sınıftan new anahtar kelimesi ile yeni nesneler yaratırız."},
          {
            "text": "Bir Ogrenci sınıfı ve o sınıftan oluşturulmuş bir ogrenci1 nesnesi örneği.",
            "code": '''
// 1. Sınıf (Şablon) Tanımlaması
class Ogrenci {
  String ad;
  int numara;

  void dersCalis() {
    System.out.println(ad + " ders çalışıyor...");
  }
}

// 2. Nesne Oluşturma ve Kullanma
public class Main {
  public static void main(String[] args) {
    Ogrenci ogrenci1 = new Ogrenci(); // Nesne oluşturma
    ogrenci1.ad = "Ali";
    ogrenci1.numara = 123;

    System.out.println("Öğrencinin adı: " + ogrenci1.ad);
    ogrenci1.dersCalis();
  }
}''',
            "code_explanation": "Ogrenci adında bir şablon (sınıf) yarattık. main içinde bu şablonu kullanarak ogrenci1 adında gerçek bir nesne oluşturduk ve özelliklerine değer atayıp metodunu çağırdık."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "OOP'de, bir nesnenin özelliklerini ve davranışlarını tanımlayan şablona ne denir?",
            options: ["Nesne (Object)", "Metot (Method)", "Sınıf (Class)"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Bir sınıftan yeni bir nesne oluşturmak için hangi anahtar kelime kullanılır?",
            codeTemplate: "Araba araba1 = ___ Araba();",
            correctAnswers: ["new"],
            options: ["create", "new", "object"],
          ),
          CodeCompletionQuestion(
            questionText: "Kedi sınıfından tekir adında bir nesne oluşturup, renk özelliğine 'Sarı' değerini atayın.",
            codeTemplate: "Kedi tekir = new Kedi();\n___ . ___ = \"Sarı\";",
            correctAnswers: ["tekir", "renk"],
            options: ["tekir", "renk", "Kedi", "ad"],
          ),
          CodeCompletionQuestion(
            questionText: "ogrenci1 nesnesinin dersCalis metodunu çağırın.",
            codeTemplate: "Ogrenci ogrenci1 = new Ogrenci();\nogrenci1.ad = \"Fatma\";\n___ .dersCalis();",
            correctAnswers: ["ogrenci1"],
            options: ["ogrenci1", "Ogrenci", "dersCalis"],
          ),
          CodeCompletionQuestion(
            questionText: "Araba sınıfından araba2 adında ikinci bir nesne oluşturun.",
            codeTemplate: "Araba araba1 = new Araba();\nAraba araba2 = ___ ___();",
            correctAnswers: ["new", "Araba"],
            options: ["new", "Araba", "create"],
          )
        ]
      }
    ]
  },
  "java_constructor": {
    "sub_lessons": [
      {
        "title": "Constructor (Yapıcı Metot)",
        "parts": [
          {"text": "Constructor, bir sınıftan nesne oluşturulduğu anda otomatik olarak çağrılan özel bir metottur."},
          {"text": "Adı, sınıf adıyla birebir aynı olmalıdır ve geri dönüş tipi yoktur (void bile yazılmaz)."},
          {"text": "Temel amacı, nesnenin başlangıç özelliklerini (alanlarını) ayarlamaktır."},
          {
            "text": "Araba sınıfı için bir constructor yazarak, nesne yaratılırken marka ve model bilgilerini alalım.",
            "code": '''
class Araba {
  String marka;
  int model;

  // Constructor (Yapıcı Metot)
  public Araba(String marka, int model) {
    this.marka = marka;
    this.model = model;
    System.out.println("Araba nesnesi oluşturuldu!");
  }
}

public class Main {
  public static void main(String[] args) {
    // Constructor'a argüman gönderiyoruz
    Araba araba1 = new Araba("Ford", 2022);
    System.out.println(araba1.marka + " " + araba1.model);
  }
}''',
            "code_explanation": "new Araba(...) yazdığımız anda, parantez içindeki argümanlar constructor'a gider ve nesnenin marka ve model alanları ilk değerlerini alır."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir constructor metodunun adı ne olmalıdır?",
            options: ["main", "Sınıf adıyla aynı", "Herhangi bir isim olabilir"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Kitap sınıfı için, isim parametresi alan bir constructor'ı tamamlayın.",
            codeTemplate: "class Kitap {\n  String isim;\n  public ___ (String isim) {\n    this.isim = isim;\n  }\n}",
            correctAnswers: ["Kitap"],
            options: ["Kitap", "void", "constructor"],
          ),
          CodeCompletionQuestion(
            questionText: "Aşağıdaki constructor'ı kullanarak `kullanici1` nesnesini oluşturun.",
            codeTemplate: "// public Kullanici(String ad, int yas) { ... }\nKullanici kullanici1 = new Kullanici(___, ___);",
            correctAnswers: ["\"Ayşe\"", "25"],
            options: ["\"Ayşe\"", "25", "String ad", "int yas"],
          ),
          CodeCompletionQuestion(
            questionText: "Insan sınıfı için parametresiz bir yapıcı metot tanımlayın.",
            codeTemplate: "class Insan {\n  String ad;\n  public ___ () {\n    ad = \"İsimsiz\";\n  }\n}",
            correctAnswers: ["Insan"],
            options: ["Insan", "void Insan", "Constructor"],
          ),
          CodeCompletionQuestion(
            questionText: "Kopek sınıfının yapıcı metoduna 'Karabaş' argümanını göndererek bir nesne oluşturun.",
            codeTemplate: "// public Kopek(String isim) { ... }\nKopek k1 = new Kopek(___);",
            correctAnswers: ["\"Karabaş\""],
            options: ["\"Karabaş\"", "isim", "String"],
          )
        ]
      }
    ]
  },
  "java_getters_setters": {
    "sub_lessons": [
      {
        "title": "Getters ve Setters Metotları",
        "parts": [
          {"text": "Encapsulation (Kapsülleme) ilkesine göre, bir sınıfın alanları (değişkenleri) genellikle private yapılır. Bu, onlara dışarıdan doğrudan erişimi engeller."},
          {"text": "Bu private alanlara kontrollü bir şekilde erişmek ve onları değiştirmek için public metotlar kullanırız."},
          {"text": "Getter Metodu: Özel bir alanın değerini okumak (get) ve dışarıya döndürmek için kullanılır. Genellikle getAlanAdi() şeklinde isimlendirilir."},
          {"text": "Setter Metodu: Özel bir alana yeni bir değer atamak (set) için kullanılır. Genellikle setAlanAdi(yeniDeger) şeklinde isimlendirilir ve içinde kontrol mantığı barındırabilir."},
          {
            "text": "Öğrenci notunu private yapıp, getter ve setter ile erişelim. Setter'da notun 0-100 arasında olmasını kontrol edelim.",
            "code": '''
class Ogrenci {
  private int not;

  // Getter
  public int getNot() {
    return this.not;
  }

  // Setter
  public void setNot(int yeniNot) {
    if (yeniNot >= 0 && yeniNot <= 100) {
      this.not = yeniNot;
    } else {
      System.out.println("Geçersiz not!");
    }
  }
}

public class Main {
  public static void main(String[] args) {
    Ogrenci ogr = new Ogrenci();
    ogr.setNot(85);
    // ogr.not = 85; // HATA! private olduğu için erişilemez.
    System.out.println("Öğrencinin notu: " + ogr.getNot());
  }
}''',
            "code_explanation": "Notu doğrudan değiştiremiyoruz. Sadece setNot metoduyla, bizim belirlediğimiz kurallar (0-100 arası) dahilinde değiştirebiliyoruz. Bu, veri güvenliği sağlar."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "private bir alanın değerini dışarıya okumak için hangi tür metot kullanılır?",
            options: ["Constructor", "Setter", "Getter"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "private String ad; alanı için bir getter metodu yazın.",
            codeTemplate: "public String ___ () {\n  return this.ad;\n}",
            correctAnswers: ["getAd"],
            options: ["getAd", "setAd", "ad"],
          ),
          CodeCompletionQuestion(
            questionText: "private int yas; alanı için bir setter metodu yazın.",
            codeTemplate: "public void setYas(int ___ ) {\n  this.yas = yeniYas;\n}",
            correctAnswers: ["yeniYas"],
            options: ["yas", "yeniYas", "getYas"],
          ),
          CodeCompletionQuestion(
            questionText: "ogr nesnesinin notunu 95 olarak ayarlamak için setter metodunu kullanın.",
            codeTemplate: "Ogrenci ogr = new Ogrenci();\nogr.___ (95);",
            correctAnswers: ["setNot"],
            options: ["setNot", "getNot", "not"],
          ),
          CodeCompletionQuestion(
            questionText: "ogr nesnesinin notunu okumak için getter metodunu kullanıp mevcutNot değişkenine atayın.",
            codeTemplate: "int mevcutNot = ogr.___ ();",
            correctAnswers: ["getNot"],
            options: ["getNot", "setNot", "not"],
          )
        ]
      }
    ]
  },
  "java_this_keyword": {
    "sub_lessons": [
      {
        "title": "'this' Anahtar Kelimesi",
        "parts": [
          {"text": "this anahtar kelimesi, bir metot veya constructor içindeyken, o anki nesnenin kendisini ifade eder."},
          {"text": "En yaygın kullanım amacı, sınıfın alanları (instance variables) ile metot parametrelerinin isimleri aynı olduğunda ortaya çıkan karışıklığı gidermektir."},
          {"text": "this.alanAdi, sınıfın alanını; sadece alanAdi ise metodun yerel parametresini belirtir."},
          {
            "text": "Constructor içinde this kullanımını inceleyelim.",
            "code": '''
class Insan {
  String isim;

  public Insan(String isim) {
    // this.isim, sınıfın 'isim' alanıdır.
    // sağdaki 'isim', parametre olan 'isim'dir.
    this.isim = isim;
  }
}''',
            "code_explanation": "this kullanmasaydık, isim = isim; yazmış olurduk. Java, parametre olan isim'e yine kendisini atamaya çalışır ve sınıfın alanı hiç değişmezdi. this bu belirsizliği ortadan kaldırır."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "this anahtar kelimesi neyi ifade eder?",
            options: ["Sınıfın kendisini (şablonu)", "O anki nesnenin kendisini (örneği)", "Ana metodu"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Parametre ile sınıf alanının ismini ayırt etmek için kodu tamamlayın.",
            codeTemplate: "public void setModel(int model) {\n  ___ .model = model;\n}",
            correctAnswers: ["this"],
            options: ["this", "Araba", "class"],
          ),
          CodeCompletionQuestion(
            questionText: "renk parametresini sınıfın renk alanına atamak için this kullanın.",
            codeTemplate: "public Araba(String renk) {\n  ___ .renk = renk;\n}",
            correctAnswers: ["this"],
            options: ["this", "Araba", "self"],
          ),
          CodeCompletionQuestion(
            questionText: "Aşağıdaki kodda this.hiz neyi ifade eder?",
            codeTemplate: "public void setHiz(int hiz) {\n  this.hiz = hiz; // this.hiz -> Sınıf ___ ifade eder.\n}",
            correctAnswers: ["alanını"],
            options: ["alanını", "parametresini", "metodunu"],
          )
        ]
      }
    ]
  },
  "java_encapsulation": {
    "sub_lessons": [
      {
        "title": "Encapsulation (Kapsülleme)",
        "parts": [
          {"text": "Kapsülleme, OOP'nin dört temel ilkesinden biridir."},
          {"text": "Verileri (alanları) ve bu veriler üzerinde çalışan metotları bir araya getirerek tek bir birim (sınıf) içinde paketleme fikridir."},
          {"text": "Temel amacı 'veri gizleme'dir (data hiding). Sınıfın alanlarını private yaparak dış dünyadan koruruz."},
          {"text": "Bu verilere erişimi, sadece public olan getter ve setter metotları üzerinden, kontrollü bir şekilde sağlarız. Bu, verinin tutarlılığını ve güvenliğini artırır."},
          {
            "text": "Bir banka hesabı örneği: Bakiye private olmalı ve sadece paraYatir ve paraCek gibi kontrollü metotlarla değiştirilebilmelidir.",
            "code": '''
class BankaHesabi {
  private double bakiye;

  public void paraYatir(double miktar) {
    if (miktar > 0) {
      this.bakiye += miktar;
    }
  }
  
  public double getBakiye() {
    return this.bakiye;
  }
}''',
            "code_explanation": "Bakiye değişkenini private yaparak, birisinin hesap.bakiye = -1000; gibi bir kodla bakiyeyi geçersiz bir duruma getirmesini engellemiş olduk."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Kapsüllemenin (Encapsulation) temel amacı nedir?",
            options: ["Kodun daha hızlı çalışmasını sağlamak", "Verileri ve metotları paketleyerek veri gizliliği sağlamak", "Daha az kod yazmak"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Kapsülleme ilkesine göre sınıf alanları genellikle hangi erişim belirleyici ile tanımlanmalıdır?",
            codeTemplate: "___ String sifre;",
            correctAnswers: ["private"],
            options: ["public", "private", "static"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir banka hesabına 500 TL yatırmak için hangi metot çağrılmalıdır?",
            codeTemplate: "BankaHesabi hesap = new BankaHesabi();\nhesap.___ (500);",
            correctAnswers: ["paraYatir"],
            options: ["paraYatir", "setBakiye", "bakiye"],
          ),
          CodeCompletionQuestion(
            questionText: "Mevcut bakiyeyi öğrenmek için hangi metot kullanılmalıdır?",
            codeTemplate: "double bakiye = hesap.___ ();",
            correctAnswers: ["getBakiye"],
            options: ["getBakiye", "bakiye", "readBakiye"],
          )
        ]
      }
    ]
  },
  "java_inheritance": {
    "sub_lessons": [
      {
        "title": "Inheritance (Kalıtım) ve 'super'",
        "parts": [
          {"text": "Kalıtım (Inheritance), bir sınıfın (alt sınıf) başka bir sınıfın (üst sınıf) özelliklerini ve metotlarını miras almasını sağlar."},
          {"text": "Bu, kod tekrarını önler ve hiyerarşik bir yapı kurmamızı sağlar. extends anahtar kelimesi ile yapılır."},
          {"text": "Üst sınıfa 'superclass' veya 'parent class', alt sınıfa 'subclass' veya 'child class' denir."},
          {"text": "super anahtar kelimesi, bir alt sınıfın içinden, doğrudan üst sınıfın üyelerine (metotlarına, constructor'ına) erişmek için kullanılır."},
          {
            "text": "Hayvan adında bir üst sınıf ve ondan kalıtım alan Kedi adında bir alt sınıf oluşturalım.",
            "code": '''
// Üst Sınıf (Superclass)
class Hayvan {
  public void sesCikar() {
    System.out.println("Hayvan ses çıkarıyor");
  }
}

// Alt Sınıf (Subclass)
class Kedi extends Hayvan {
  // Metot Override (Geçersiz Kılma)
  @Override
  public void sesCikar() {
    System.out.println("Miyav!");
  }
  
  public void ustuCagir() {
      super.sesCikar(); // Üst sınıfın metodunu çağırır
  }
}''',
            "code_explanation": "Kedi sınıfı, extends Hayvan sayesinde sesCikar metodunu miras aldı. Sonra bu metodu kendine özgü bir şekilde yeniden yazdı (@Override). super.sesCikar() ile de orijinal metoda erişebildik."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir sınıfın başka bir sınıftan kalıtım alması için hangi anahtar kelime kullanılır?",
            options: ["implements", "extends", "inherits"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir alt sınıfın içinden, üst sınıfın constructor'ını çağırmak için hangi ifade kullanılır?",
            codeTemplate: "public AltSinif() {\n  ___ (); // Üst sınıfın constructor'ını çağır\n}",
            correctAnswers: ["super"],
            options: ["super", "this", "parent"],
          ),
          CodeCompletionQuestion(
            questionText: "Yonetici sınıfının Calisan sınıfından kalıtım almasını sağlayın.",
            codeTemplate: "class Yonetici ___ Calisan { ... }",
            correctAnswers: ["extends"],
            options: ["extends", "implements", ":"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir üst sınıf metodunu ezerken (override) kullanılması önerilen annotation hangisidir?",
            codeTemplate: "___ \npublic void sesCikar() { ... }",
            correctAnswers: ["@Override"],
            options: ["@Override", "@Super", "@Extends"],
          ),
          CodeCompletionQuestion(
            questionText: "Alt sınıf içinden, üst sınıfın bilgiVer metodunu çağırmak için kodu tamamlayın.",
            codeTemplate: "public void detayliBilgiVer() {\n  ___ .bilgiVer();\n  System.out.println(\"Ek bilgiler...\");\n}",
            correctAnswers: ["super"],
            options: ["super", "this", "parent"],
          )
        ]
      }
    ]
  },
  "java_polymorphism": {
    "sub_lessons": [
      {
        "title": "Polymorphism (Çok Biçimlilik)",
        "parts": [
          {"text": "Çok Biçimlilik (Polymorphism), kelime anlamıyla 'birçok şekle sahip olma' demektir."},
          {"text": "OOP'de, bir üst sınıf referansının, bir alt sınıf nesnesini işaret edebilmesi yeteneğidir."},
          {"text": "Bu, aynı metot çağrısının, nesnenin gerçek tipine bağlı olarak farklı davranışlar sergilemesini sağlar. (Method Overriding ile birlikte kullanılır)."},
          {
            "text": "Bir Hayvan referansı kullanarak hem Kedi hem de Kopek nesnelerinin sesCikar metotlarını çağıralım.",
            "code": '''
class Hayvan { public void sesCikar() { System.out.println("..."); } }
class Kedi extends Hayvan { @Override public void sesCikar() { System.out.println("Miyav"); } }
class Kopek extends Hayvan { @Override public void sesCikar() { System.out.println("Hav hav"); } }

public class Main {
  public static void main(String[] args) {
    Hayvan hayvan1 = new Kedi();  // Hayvan referansı, Kedi nesnesini tutuyor
    Hayvan hayvan2 = new Kopek(); // Hayvan referansı, Kopek nesnesini tutuyor

    hayvan1.sesCikar(); // Kedi'nin metodu çalışır -> Miyav
    hayvan2.sesCikar(); // Kopek'in metodu çalışır -> Hav hav
  }
}''',
            "code_explanation": "Her iki nesne de Hayvan tipinde bir referansla tutulmasına rağmen, sesCikar() metodu çağrıldığında Java nesnenin gerçekte ne olduğuna (Kedi mi, Köpek mi) bakar ve ona uygun olan metodu çalıştırır. Bu, Polimorfizmin gücüdür."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Polimorfizm en basit tanımıyla nedir?",
            options: ["Aynı isimde farklı metotlar yazmak", "Üst sınıf referansının alt sınıf nesnesini tutabilmesi", "Verileri gizlemek"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Polimorfik bir yapı oluşturmak için kodu tamamlayın.",
            codeTemplate: "Sekil s = new ___ ();",
            correctAnswers: ["Daire"],
            options: ["Daire", "Sekil", "Object"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir Hayvan referansı ile Kopek nesnesi oluşturun.",
            codeTemplate: "Hayvan h = new ___ ();",
            correctAnswers: ["Kopek"],
            options: ["Hayvan", "Kopek", "Object"],
          ),
          CodeCompletionQuestion(
            questionText: "Aşağıdaki kod çağrıldığında hangi metodun çalışacağını belirtin.",
            codeTemplate: "Hayvan hayvanim = new Kedi();\nhayvanim.sesCikar(); // ___'in sesCikar() metodu çalışır.",
            correctAnswers: ["Kedi"],
            options: ["Kedi", "Hayvan", "Object"],
          )
        ]
      }
    ]
  },
  "java_abstraction": {
    "sub_lessons": [
      {
        "title": "Abstraction (Soyutlama): Abstract Class",
        "parts": [
          {"text": "Soyutlama, karmaşık sistemlerin iç detaylarını gizleyip sadece temel özellikleri gösterme prensibidir."},
          {"text": "Java'da bunu sağlamanın bir yolu 'Abstract Class' (Soyut Sınıf) kullanmaktır."},
          {"text": "Soyut sınıflar, abstract anahtar kelimesi ile tanımlanır ve doğrudan new ile nesneleri oluşturulamazlar."},
          {"text": "İçlerinde hem normal metotlar hem de gövdesi olmayan 'soyut metotlar' (abstract void metodAdi();) barındırabilirler."},
          {"text": "Bir soyut sınıfı extends eden herhangi bir somut alt sınıf, üst sınıftaki tüm soyut metotları @Override etmek zorundadır."},
          {
            "text": "Bir Sekil soyut sınıfı ve ondan türeyen Daire somut sınıfı örneği.",
            "code": '''
abstract class Sekil {
  abstract void ciz(); // Soyut metot, gövdesi yok
  public void bilgiVer() { System.out.println("Bu bir şekildir."); }
}

class Daire extends Sekil {
  @Override
  void ciz() { // Soyut metodu doldurmak zorunlu
    System.out.println("Bir daire çiziliyor.");
  }
}

public class Main {
  public static void main(String[] args) {
    // Sekil s = new Sekil(); // HATA! Soyut sınıftan nesne üretilemez.
    Daire d = new Daire();
    d.ciz();
    d.bilgiVer();
  }
}''',
            "code_explanation": "Sekil sınıfı, bir şeklin ne yapması gerektiğini (ciz) söyler ama nasıl yapacağını söylemez. Daire sınıfı ise bu 'nasıl' sorusunu doldurmakla yükümlüdür."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Soyut (abstract) bir sınıfla ilgili hangisi doğrudur?",
            options: ["new ile doğrudan nesnesi oluşturulabilir.", "new ile doğrudan nesnesi oluşturulamaz.", "Sadece soyut metotlar içerebilir."],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir metodu soyut yapmak için hangi anahtar kelime ve yazım kuralı kullanılır?",
            codeTemplate: "___ void hesapla();",
            correctAnswers: ["abstract"],
            options: ["abstract", "final", "{ }"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir sınıfı soyut olarak tanımlamak için class anahtar kelimesinin önüne ne yazılır?",
            codeTemplate: "___ class Canli { ... }",
            correctAnswers: ["abstract"],
            options: ["abstract", "interface", "final"],
          ),
          CodeCompletionQuestion(
            questionText: "Sekil soyut sınıfını Kare sınıfının kalıtım almasını sağlayın.",
            codeTemplate: "class Kare ___ Sekil {\n  @Override\n  void ciz() { ... }\n}",
            correctAnswers: ["extends"],
            options: ["extends", "implements", "uses"],
          )
        ]
      }
    ]
  },
  "java_interfaces": {
    "sub_lessons": [
      {
        "title": "Interfaces (Arayüzler)",
        "parts": [
          {"text": "Arayüzler (Interfaces), bir sınıfın sahip olması gereken metotları belirten bir sözleşmedir. Tamamen soyut bir yapı sunarlar."},
          {"text": "Bir arayüz içindeki tüm metotlar varsayılan olarak public abstract'tır (gövdesizdir). Alanlar ise public static final'dır (sabit)."},
          {"text": "Bir sınıf, bir arayüzü implements anahtar kelimesi ile uygular."},
          {"text": "Bir sınıf birden fazla arayüzü implements edebilir, bu Java'daki çoklu kalıtım sorununa bir çözümdür."},
          {
            "text": "Sürülebilir nesneler için bir Surulebilir arayüzü ve onu uygulayan Araba sınıfı.",
            "code": '''
interface Surulebilir {
  void sur();
  void dur();
}

class Araba implements Surulebilir {
  @Override
  public void sur() {
    System.out.println("Araba hareket ediyor.");
  }

  @Override
  public void dur() {
    System.out.println("Araba duruyor.");
  }
}''',
            "code_explanation": "Araba sınıfı, Surulebilir sözleşmesine uyarak, sur() ve dur() metotlarını kendine göre doldurmayı taahhüt etmiş ve uygulamıştır."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir sınıfın bir arayüzü uygulaması için hangi anahtar kelime kullanılır?",
            options: ["extends", "implements", "uses"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Ucabilir arayüzünü Kus sınıfına uygulayın.",
            codeTemplate: "class Kus ___ Ucabilir { ... }",
            correctAnswers: ["implements"],
            options: ["extends", "implements", "abstract"],
          ),
          CodeCompletionQuestion(
            questionText: "Calisabilir adında bir arayüz tanımlayın.",
            codeTemplate: "___ Calisabilir {\n  void calis();\n}",
            correctAnswers: ["interface"],
            options: ["interface", "class", "abstract class"],
          ),
          CodeCompletionQuestion(
            questionText: "Araba sınıfı Surulebilir arayüzünü uyguladığı için hangi metotları doldurmak zorundadır?",
            codeTemplate: "// interface Surulebilir { void sur(); void dur(); }\nclass Araba implements Surulebilir {\n  public void ___() { ... }\n  public void ___() { ... }\n}",
            correctAnswers: ["sur", "dur"],
            options: ["sur", "dur", "calistir"],
          )
        ]
      }
    ]
  },
  "java_static_keyword": {
    "sub_lessons": [
      {
        "title": "'static' Anahtar Kelimesi",
        "parts": [
          {"text": "static anahtar kelimesi, bir alanın veya metodun sınıfa ait olduğunu, o sınıftan oluşturulan nesnelere değil, doğrudan sınıfın kendisine ait olduğunu belirtir."},
          {"text": "Static Alanlar (Sınıf Değişkenleri): O sınıftan kaç tane nesne yaratılırsa yaratılsın, static alan tektir ve tüm nesneler tarafından paylaşılır."},
          {"text": "Static Metotlar: Çağrılmak için bir nesneye ihtiyaç duymazlar. Doğrudan SinifAdi.metotAdi() şeklinde çağrılabilirler. main metodu bu yüzden statictir."},
          {
            "text": "Bir sınıfta kaç tane nesne oluşturulduğunu sayan bir static sayaç yapalım.",
            "code": '''
class Oyuncu {
  String isim;
  static int oyuncuSayisi = 0; // Sınıfa ait, tek bir tane var.

  public Oyuncu(String isim) {
    this.isim = isim;
    oyuncuSayisi++;
  }
}

public class Main {
  public static void main(String[] args) {
    System.out.println("Başlangıç: " + Oyuncu.oyuncuSayisi);
    Oyuncu o1 = new Oyuncu("Ali");
    Oyuncu o2 = new Oyuncu("Veli");
    System.out.println("Son Durum: " + Oyuncu.oyuncuSayisi);
  }
}''',
            "code_explanation": "oyuncuSayisi değişkeni static olduğu için her nesne oluşturulduğunda aynı değişkenin değeri artar. Ona erişmek için nesne oluşturmaya bile gerek yoktur (Oyuncu.oyuncuSayisi)."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Static bir metoda erişmek için doğru yöntem hangisidir?",
            options: ["Önce nesne oluşturulmalıdır", "Doğrudan SınıfAdı.metotAdı() ile erişilir", "Sadece başka static metotlardan erişilir"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Pi sayısını tutacak bir static alan tanımlayın.",
            codeTemplate: "public class Matematik {\n  public ___ double PI = 3.14;\n}",
            correctAnswers: ["static"],
            options: ["static", "final", "void"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir Matematik sınıfındaki topla static metodunu çağırın.",
            codeTemplate: "// public static int topla(int a, int b) { ... }\nint sonuc = ___ .topla(10, 20);",
            correctAnswers: ["Matematik"],
            options: ["Matematik", "new Matematik()", "sonuc"],
          ),
          CodeCompletionQuestion(
            questionText: "Tüm nesneler tarafından paylaşılacak sayac değişkenini tanımlayın.",
            codeTemplate: "class Ornek {\n  ___ int sayac = 0;\n}",
            correctAnswers: ["static"],
            options: ["static", "public", "final"],
          )
        ]
      }
    ]
  },
  "java_final_keyword": {
    "sub_lessons": [
      {
        "title": "'final' Anahtar Kelimesi",
        "parts": [
          {"text": "final anahtar kelimesi, uygulandığı şeye 'bu son hali, bir daha değiştirilemez' anlamı katar."},
          {"text": "final Değişken: Değeri sadece bir kez atanabilen bir sabittir."},
          {"text": "final Metot: Alt sınıflar tarafından override edilemez (geçersiz kılınamaz)."},
          {"text": "final Sınıf: Hiçbir sınıf tarafından extends edilemez (kalıtım alınamaz). String sınıfı buna iyi bir örnektir."},
          {
            "text": "final'ın üç farklı kullanımını görelim.",
            "code": '''
final class Degistirilemez {
  public final double PI = 3.14; // Sabit değişken

  public final void mesaj() { // Override edilemez metot
    System.out.println("Bu metot değiştirilemez.");
  }
}

// class AltSinif extends Degistirilemez {} // HATA! final sınıf kalıtım alınamaz.''',
            "code_explanation": "final kullanarak programımızdaki bazı yapıları kasıtlı olarak kısıtlayarak daha güvenli ve öngörülebilir hale getirebiliriz."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "final ile tanımlanmış bir sınıfa ne yapılamaz?",
            options: ["Nesnesi oluşturulamaz", "Metotları çağrılamaz", "Kalıtım yoluyla genişletilemez"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Değeri sonradan değiştirilemeyecek bir MAX_HIZ sabiti oluşturun.",
            codeTemplate: "public ___ int MAX_HIZ = 200;",
            correctAnswers: ["final"],
            options: ["final", "static", "const"],
          ),
          CodeCompletionQuestion(
            questionText: "Başka hiçbir sınıfın kalıtım alamayacağı bir Helper sınıfı tanımlayın.",
            codeTemplate: "___ class Helper { ... }",
            correctAnswers: ["final"],
            options: ["final", "static", "private"],
          ),
          CodeCompletionQuestion(
            questionText: "Alt sınıfların değiştiremeyeceği (override edemeyeceği) bir versiyonGoster metodu tanımlayın.",
            codeTemplate: "public ___ void versiyonGoster() { ... }",
            correctAnswers: ["final"],
            options: ["final", "static", "public"],
          )
        ]
      }
    ]
  },
  "java_exceptions_intro": {
    "sub_lessons": [
      {
        "title": "Exception Nedir?",
        "parts": [
          {"text": "Exception (İstisna), programın normal akışını bozan, çalışma zamanında (runtime) meydana gelen bir olay veya hatadır."},
          {"text": "Örnekler: Olmayan bir dosyayı okumaya çalışmak, bir sayıyı sıfıra bölmek, bir dizinin sınırları dışına erişmek."},
          {"text": "Bu hatalar yönetilmezse, program çöker ve çalışması durur."},
          {"text": "Java'da 'Hata Yönetimi' (Exception Handling), bu istisnaları yakalayıp programın çökmesini önleyerek kontrollü bir şekilde yönetmemizi sağlar."},
          {
            "text": "Bir sayıyı sıfıra bölmeye çalıştığımızda alacağımız hatayı görelim.",
            "code": '''
public class Main {
  public static void main(String[] args) {
    int sonuc = 10 / 0; // Bu satır bir ArithmeticException fırlatır
    System.out.println("Bu satır asla çalışmaz.");
  }
}''',
            "code_explanation": "Bu kodu çalıştırdığımızda, JVM bir ArithmeticException nesnesi oluşturur ve program anında sonlanır. try-catch ile bunu nasıl yöneteceğimizi sonraki derste göreceğiz."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Programın çalışması sırasında meydana gelen ve normal akışı bozan hataya ne denir?",
            options: ["Syntax Error", "Exception", "Compiler Error"],
            correctAnswerIndex: 1,
          ),
          MultipleChoiceQuestion(
            questionText: "Bir istisna (exception) yönetilmezse ne olur?",
            options: ["Program normal çalışmaya devam eder", "Program çöker ve durur", "Derleyici hata verir"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Null bir nesnenin metodunu çağırmak ne tür bir istisna fırlatır?",
            codeTemplate: "String metin = null;\nmetin.length(); // Fırlatılan istisna: ___",
            correctAnswers: ["NullPointerException"],
            options: ["NullPointerException", "ArithmeticException", "ArrayIndexOutOfBoundsException"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir dizinin olmayan bir indeksine erişmeye çalışmak ne tür bir istisna fırlatır?",
            codeTemplate: "int[] sayilar = {10, 20};\nsayilar[5] = 30; // Fırlatılan istisna: ___",
            correctAnswers: ["ArrayIndexOutOfBoundsException"],
            options: ["ArrayIndexOutOfBoundsException", "NumberFormatException", "NullPointerException"],
          )
        ]
      }
    ]
  },
  "java_try_catch_finally": {
    "sub_lessons": [
      {
        "title": "try-catch-finally Blokları",
        "parts": [
          {"text": "Hata yönetimi için try, catch ve finally anahtar kelimelerini kullanırız."},
          {"text": "try bloğu: İçine hata fırlatma potansiyeli olan kod yazılır."},
          {"text": "catch bloğu: try bloğunda belirtilen türde bir hata yakalanırsa çalışır. Hata anında ne yapılacağını belirleriz."},
          {"text": "finally bloğu: Hata olsa da olmasa da, try bloğundan çıkılırken her durumda çalışması garanti edilen bloktur. Kaynakları temizlemek için idealdir."},
          {
            "text": "Bir dizinin olmayan bir elemanına erişmeye çalışalım ve bu hatayı yakalayalım.",
            "code": '''
public class Main {
  public static void main(String[] args) {
    int[] sayilar = {1, 2, 3};
    try {
      System.out.println(sayilar[5]); // Hata burada oluşacak
    } catch (ArrayIndexOutOfBoundsException e) {
      System.out.println("Hata: Dizinin sınırları dışına çıktınız!");
      System.out.println("Hata mesajı: " + e.getMessage());
    } finally {
      System.out.println("Finally bloğu her zaman çalışır.");
    }
    System.out.println("Program çalışmaya devam ediyor.");
  }
}''',
            "code_explanation": "try bloğunda hata oluştuğu için program catch bloğuna atladı ve mesajımızı yazdırdı. Ardından finally bloğu çalıştı ve program çökmeden yoluna devam etti."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Hata olsa da olmasa da her zaman çalıştırılması garanti edilen blok hangisidir?",
            options: ["try", "catch", "finally"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Bir sayıyı sıfıra bölme hatasını yakalayan try-catch bloğunu tamamlayın.",
            codeTemplate: "___ {\n  int sonuc = 10 / 0;\n} ___ (ArithmeticException e) {\n  System.out.println(\"Hata!\");\n}",
            correctAnswers: ["try", "catch"],
            options: ["try", "catch", "if", "else"],
          ),
          CodeCompletionQuestion(
            questionText: "Potansiyel olarak hata fırlatabilecek kod hangi bloğun içine yazılır?",
            codeTemplate: "___ {\n  // Riskli kod\n}",
            correctAnswers: ["try"],
            options: ["try", "catch", "finally"],
          ),
          CodeCompletionQuestion(
            questionText: "Yakalanan hata nesnesini tutan e değişkeninin türünü belirtin.",
            codeTemplate: "catch ( ___ e) {\n  System.out.println(\"Hata yakalandı.\");\n}",
            correctAnswers: ["Exception"],
            options: ["Exception", "Error", "Object"],
          )
        ]
      }
    ]
  },
  "java_checked_unchecked": {
    "sub_lessons": [
      {
        "title": "Checked ve Unchecked Exceptions",
        "parts": [
          {"text": "Java'daki istisnalar iki ana kategoriye ayrılır:"},
          {"text": "Checked Exceptions (Kontrol Edilen İstisnalar): Derleyicinin (compiler) sizi yönetmeye zorladığı hatalardır. Bunları ya try-catch ile yakalamalı ya da metodunuzun imzasına throws ile eklemelisiniz. Genellikle programcının kontrolü dışındaki dış etkenlerden kaynaklanır (örn: FileNotFoundException)."},
          {"text": "Unchecked Exceptions (Runtime Exceptions - Kontrol Edilmeyen İstisnalar): Derleyicinin yönetmeye zorlamadığı hatalardır. Genellikle programlama mantığındaki hatalardan kaynaklanır (örn: NullPointerException, ArithmeticException). Bunları da yakalayabilirsiniz ama zorunlu değildir."},
          {
            "text": "FileReader kullanmak, derleyicinin bizi try-catch kullanmaya zorladığı bir 'Checked Exception' örneğidir.",
            "code": '''
import java.io.FileReader;
import java.io.FileNotFoundException;

public class Main {
  public static void main(String[] args) {
    try {
      FileReader reader = new FileReader("olmayan_dosya.txt");
    } catch (FileNotFoundException e) {
      System.out.println("Dosya bulunamadı!");
    }
  }
}''',
            "code_explanation": "Eğer try-catch bloğunu yazmasaydık, bu kod derlenmezdi (compile olmazdı). Çünkü FileNotFoundException bir 'checked exception'dır."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "NullPointerException hangi tür istisnaya bir örnektir?",
            options: ["Checked Exception", "Unchecked (Runtime) Exception", "Syntax Error"],
            correctAnswerIndex: 1,
          ),
          MultipleChoiceQuestion(
            questionText: "Java derleyicisinin sizi try-catch ile yönetmeye zorladığı hata türü hangisidir?",
            options: ["Checked Exception", "Unchecked Exception", "Error"],
            correctAnswerIndex: 0,
          ),
          CodeCompletionQuestion(
            questionText: "ArithmeticException (örn: 10/0) ne tür bir istisnadır?",
            codeTemplate: "// 10 / 0; -> Bu bir ___ istisnadır.",
            correctAnswers: ["Unchecked"],
            options: ["Checked", "Unchecked", "Compile-time"],
          ),
          CodeCompletionQuestion(
            questionText: "FileNotFoundException istisnasını yönetmek zorunlu olduğu için ne tür bir istisnadır?",
            codeTemplate: "// new FileReader(\"yok.txt\"); -> Bu bir ___ istisnadır.",
            correctAnswers: ["Checked"],
            options: ["Checked", "Unchecked", "Runtime"],
          )
        ]
      }
    ]
  },
  "java_throw_throws": {
    "sub_lessons": [
      {
        "title": "'throw' ve 'throws' Anahtar Kelimeleri",
        "parts": [
          {"text": "throw ve throws benzer görünse de çok farklı amaçlara hizmet ederler."},
          {"text": "throw: Kendi kodumuzun içinden, belirli bir koşul sağlandığında kasıtlı olarak bir istisna (exception) fırlatmak için kullanılır. throw new Exception(); şeklinde kullanılır."},
          {"text": "throws: Bir metodun imzasında kullanılır ve o metodun, içinde belirtilen türde bir 'checked exception' fırlatabileceğini, dolayısıyla bu hatayı yönetme sorumluluğunun metodu çağıran yerde olduğunu bildirir."},
          {
            "text": "Yaş kontrolü yapan ve geçersiz yaş durumunda throw ile hata fırlatan bir metot yazalım.",
            "code": '''
public class Main {
  // Bu metot hata fırlatabilir, bu yüzden 'throws' ile belirtiyoruz.
  public static void yasKontrol(int yas) throws Exception {
    if (yas < 18) {
      // Hata nesnesini oluşturup 'throw' ile fırlatıyoruz.
      throw new Exception("Yaş 18'den küçük olamaz!");
    }
    System.out.println("Giriş başarılı.");
  }

  public static void main(String[] args) {
    try {
      yasKontrol(15);
    } catch (Exception e) {
      System.out.println("Yakalanan hata: " + e.getMessage());
    }
  }
}''',
            "code_explanation": "yasKontrol metodu, uygun olmayan bir durumda throw ile bir hata fırlattı. main metodu ise bu potansiyel hatayı try-catch ile yakaladı."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir metot içinde kasıtlı olarak bir istisna fırlatmak için hangi anahtar kelime kullanılır?",
            options: ["throws", "try", "throw"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Bir metodun IOException fırlatabileceğini imzasına ekleyin.",
            codeTemplate: "public void dosyaOku() ___ IOException { ... }",
            correctAnswers: ["throws"],
            options: ["throw", "throws", "catch"],
          ),
          CodeCompletionQuestion(
            questionText: "Negatif bir sayı girildiğinde IllegalArgumentException fırlatan kodu tamamlayın.",
            codeTemplate: "if (sayi < 0) {\n  ___ new IllegalArgumentException(\"Sayı negatif olamaz\");\n}",
            correctAnswers: ["throw"],
            options: ["throw", "throws", "new"],
          ),
          CodeCompletionQuestion(
            questionText: "Hata fırlatma potansiyeli olan yasKontrol metodunu çağırmak için kodu try-catch bloğuna alın.",
            codeTemplate: "___ {\n  yasKontrol(15);\n} ___ (Exception e) {\n  System.out.println(\"Hata\");\n}",
            correctAnswers: ["try", "catch"],
            options: ["try", "catch", "if", "else"],
          )
        ]
      }
    ]
  },
  "java_collections_intro": {
    "sub_lessons": [
      {
        "title": "Koleksiyonlar Nedir?",
        "parts": [
          {"text": "Java Koleksiyonlar Çerçevesi (Java Collections Framework), bir grup nesneyi depolamak ve yönetmek için tasarlanmış bir dizi sınıf ve arayüzdür."},
          {"text": "Normal dizilere (arrays) göre çok daha esnek ve güçlüdürler. Dinamik olarak büyüyüp küçülebilir ve verileri işlemek için birçok hazır metot sunarlar."},
          {"text": "Temel arayüzleri şunlardır: List, Set, ve Map."},
          {"text": "List: Sıralı bir koleksiyondur ve tekrar eden elemanlara izin verir. (Örn: ArrayList)"},
          {"text": "Set: Sırasızdır ve tekrar eden elemanlara izin vermez. Her eleman benzersizdir. (Örn: HashSet)"},
          {"text": "Map: Anahtar-değer (key-value) çiftleri olarak veri saklar. Anahtarlar benzersiz olmalıdır. (Örn: HashMap)"},
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Hangi koleksiyon türü tekrar eden elemanlara izin VERMEZ?",
            options: ["List", "Set", "Map"],
            correctAnswerIndex: 1,
          ),
          MultipleChoiceQuestion(
            questionText: "Anahtar-değer (key-value) çiftleri ile veri saklayan koleksiyon hangisidir?",
            options: ["List", "Set", "Map"],
            correctAnswerIndex: 2,
          ),
          MultipleChoiceQuestion(
            questionText: "Elemanların eklendiği sırayı koruyan ve indeks ile erişime izin veren koleksiyon hangisidir?",
            options: ["List", "Set", "Map"],
            correctAnswerIndex: 0,
          ),
          CodeCompletionQuestion(
            questionText: "Benzersiz elemanlar saklamak için hangi koleksiyon türü en uygundur?",
            codeTemplate: "// İhtiyaç: Tekrar eden eleman olmamalı. Kullanılacak koleksiyon: ___",
            correctAnswers: ["Set"],
            options: ["List", "Set", "Map"],
          ),
          CodeCompletionQuestion(
            questionText: "Öğrenci numarasına göre öğrenci adını saklamak için en uygun koleksiyon türü hangisidir?",
            codeTemplate: "// İhtiyaç: Anahtar(numara)-değer(ad) eşleşmesi. Kullanılacak koleksiyon: ___",
            correctAnswers: ["Map"],
            options: ["List", "Set", "Map"],
          )
        ]
      }
    ]
  },
  "java_list_arraylist": {
    "sub_lessons": [
      {
        "title": "List Arayüzü ve ArrayList",
        "parts": [
          {"text": "List, elemanların eklendiği sırayı koruyan bir koleksiyondur. Elemanlara indeks numaralarıyla erişilebilir."},
          {"text": "ArrayList, List arayüzünün en yaygın kullanılan somut uygulamasıdır. Arka planda dinamik bir dizi kullanır."},
          {"text": "Kullanmak için import java.util.ArrayList; satırını eklemelisiniz."},
          {"text": "Temel Metotlar: .add(eleman), .get(indeks), .set(indeks, yeniEleman), .remove(indeks), .size()"},
          {
            "text": "Şehir isimlerini tutan bir ArrayList oluşturalım ve üzerinde işlemler yapalım.",
            "code": '''
import java.util.ArrayList;

public class Main {
  public static void main(String[] args) {
    ArrayList<String> sehirler = new ArrayList<>();
    sehirler.add("İstanbul");
    sehirler.add("Ankara");
    sehirler.add("İzmir");

    System.out.println("İlk şehir: " + sehirler.get(0));
    sehirler.set(1, "Bursa"); // Ankara'yı Bursa ile değiştir
    sehirler.remove(2); // İzmir'i sil

    System.out.println("Liste boyutu: " + sehirler.size());
  }
}''',
            "code_explanation": "ArrayList oluştururken < > arasına hangi türde veri tutacağını belirtiriz. add ile ekler, get ile okur, set ile günceller, remove ile siler ve size ile boyutunu öğreniriz."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir ArrayList'e yeni bir eleman eklemek için hangi metot kullanılır?",
            options: ["add()", "put()", "insert()"],
            correctAnswerIndex: 0,
          ),
          CodeCompletionQuestion(
            questionText: "Bir ArrayList'in kaç elemanı olduğunu öğrenmek için hangi metot kullanılır?",
            codeTemplate: "int boyut = liste.___();",
            correctAnswers: ["size"],
            options: ["length", "size", "count"],
          ),
          CodeCompletionQuestion(
            questionText: "Listenin 0. indeksindeki elemanı getirmek için hangi metot kullanılır?",
            codeTemplate: "String eleman = liste.___ (0);",
            correctAnswers: ["get"],
            options: ["get", "set", "remove"],
          ),
          CodeCompletionQuestion(
            questionText: "Listenin 1. indeksindeki elemanı silmek için hangi metot kullanılır?",
            codeTemplate: "liste.___ (1);",
            correctAnswers: ["remove"],
            options: ["remove", "delete", "get"],
          )
        ]
      }
    ]
  },
  "java_set_hashset": {
    "sub_lessons": [
      {
        "title": "Set Arayüzü ve HashSet",
        "parts": [
          {"text": "Set, her elemanın benzersiz (unique) olduğu bir koleksiyondur. Tekrar eden elemanları otomatik olarak görmezden gelir."},
          {"text": "HashSet, Set arayüzünün en yaygın kullanılan uygulamasıdır. Elemanları belirli bir sırada tutma garantisi vermez."},
          {"text": "En önemli kullanım amacı, bir listedeki tekrar eden elemanları ayıklamaktır."},
          {
            "text": "Bir HashSet'e aynı elemanı birkaç kez eklemeye çalışalım ve sonucu görelim.",
            "code": '''
import java.util.HashSet;

public class Main {
  public static void main(String[] args) {
    HashSet<String> isimler = new HashSet<>();
    isimler.add("Ali");
    isimler.add("Veli");
    isimler.add("Ali"); // Bu eleman eklenmeyecek

    System.out.println(isimler); // Çıktı: [Veli, Ali] (sıra garanti değil)
  }
}''',
            "code_explanation": "isimler kümesine ikinci kez \"Ali\" eklemeye çalıştığımızda, HashSet bunun zaten var olduğunu bildiği için işlemi görmezden geldi ve koleksiyonun boyutu değişmedi."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Set koleksiyonunun en temel özelliği nedir?",
            options: ["Sıralı olması", "Benzersiz elemanlar içermesi", "Anahtar-değer yapısı"],
            correctAnswerIndex: 1,
          ),
          MultipleChoiceQuestion(
            questionText: "Bir HashSet'e aynı eleman ikinci kez eklendiğinde ne olur?",
            options: ["Hata verir", "Eleman ikinci kez eklenir", "İkinci ekleme işlemi yok sayılır"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Bir HashSet'e yeni bir eleman eklemek için kullanılan metodu yazın.",
            codeTemplate: "isimler.___ (\"Ayşe\");",
            correctAnswers: ["add"],
            options: ["add", "put", "insert"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir HashSet'in 'Veli' elemanını içerip içermediğini kontrol eden metodu yazın.",
            codeTemplate: "boolean varMi = isimler.___ (\"Veli\");",
            correctAnswers: ["contains"],
            options: ["contains", "has", "includes"],
          )
        ]
      }
    ]
  },
  "java_map_hashmap": {
    "sub_lessons": [
      {
        "title": "Map Arayüzü ve HashMap",
        "parts": [
          {"text": "Map, verileri benzersiz anahtar-değer (key-value) çiftleri olarak saklayan bir yapıdır. Python'daki sözlüklere çok benzer."},
          {"text": "HashMap, Map arayüzünün en yaygın kullanılan uygulamasıdır."},
          {"text": "Temel Metotlar: .put(anahtar, deger), .get(anahtar), .remove(anahtar), .containsKey(anahtar)"},
          {
            "text": "Öğrenci numaralarını (anahtar) ve isimlerini (değer) tutan bir HashMap oluşturalım.",
            "code": '''
import java.util.HashMap;

public class Main {
  public static void main(String[] args) {
    HashMap<Integer, String> ogrenciler = new HashMap<>();
    ogrenciler.put(101, "Ece");
    ogrenciler.put(102, "Can");
    ogrenciler.put(103, "Aslı");

    // 102 numaralı öğrencinin adını al
    String isim = ogrenciler.get(102);
    System.out.println("102 nolu öğrenci: " + isim);

    ogrenciler.remove(103);
    System.out.println(ogrenciler);
  }
}''',
            "code_explanation": "put ile veri ekleriz. get metoduna anahtarı vererek değeri alırız. remove ile de anahtarı vererek o çifti silebiliriz."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir HashMap'e yeni bir anahtar-değer çifti eklemek için hangi metot kullanılır?",
            options: ["add()", "put()", "set()"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir `HashMap`'ten belirli bir anahtara karşılık gelen değeri almak için hangi metot kullanılır?",
            codeTemplate: "String deger = map.___(\"anahtar\");",
            correctAnswers: ["get"],
            options: ["get", "fetch", "read"],
          ),
          CodeCompletionQuestion(
            questionText: "Map'ten 101 anahtarına sahip olan kaydı silmek için hangi metot kullanılır?",
            codeTemplate: "ogrenciler.___ (101);",
            correctAnswers: ["remove"],
            options: ["remove", "delete", "erase"],
          ),
          CodeCompletionQuestion(
            questionText: "Map'te 102 anahtarının var olup olmadığını kontrol etmek için hangi metot kullanılır?",
            codeTemplate: "boolean varMi = ogrenciler.___ (102);",
            correctAnswers: ["containsKey"],
            options: ["containsKey", "hasKey", "findKey"],
          )
        ]
      }
    ]
  },
  "java_lambda_expressions": {
    "sub_lessons": [
      {
        "title": "Lambda İfadeleri",
        "parts": [
          {"text": "Lambda İfadeleri (Java 8 ile geldi), isimsiz, kısa ve tek bir iş yapan fonksiyonlar yazmamızı sağlayan bir özelliktir."},
          {"text": "Genellikle, bir arayüzün tek bir metodunu (functional interface) uygulamak için kullanılırlar. Kodun daha kısa ve okunaklı olmasını sağlarlar."},
          {"text": "Temel sözdizimi: (parametreler) -> { kod bloğu; } veya tek satırsa parametre -> ifade."},
          {
            "text": "Bir ArrayList'i, lambda ifadesi kullanarak forEach metodu ile gezelim.",
            "code": '''
import java.util.ArrayList;

public class Main {
  public static void main(String[] args) {
    ArrayList<String> isimler = new ArrayList<>();
    isimler.add("Zeynep");
    isimler.add("Ahmet");

    // Her bir 'isim' elemanı için belirtilen kodu çalıştır
    isimler.forEach( (isim) -> System.out.println(isim) );
  }
}''',
            "code_explanation": "Normalde for döngüsü ile yapacağımız işi, forEach metoduna bir lambda ifadesi vererek çok daha kısa bir şekilde hallettik."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Lambda ifadeleri en basit tanımıyla nedir?",
            options: ["Yeni bir sınıf türü", "İsimsiz, kısa fonksiyonlar", "Bir döngü çeşidi"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Lambda ifadesini oluşturan temel iki parça olan parametre ve ifadeyi ayıran sembol hangisidir?",
            codeTemplate: "(p) ___ p * 2",
            correctAnswers: ["->"],
            options: ["=>", "->", "::"],
          ),
          CodeCompletionQuestion(
            questionText: "Parametresiz bir lambda ifadesi ile 'Merhaba' yazdırın.",
            codeTemplate: "Runnable r = () ___ System.out.println(\"Merhaba\");",
            correctAnswers: ["->"],
            options: ["->", "=>", ":"],
          ),
          CodeCompletionQuestion(
            questionText: "İki sayıyı toplayan bir lambda ifadesi yazın.",
            codeTemplate: "BinaryOperator<Integer> topla = (a, b) ___ a + b;",
            correctAnswers: ["->"],
            options: ["->", "return", "=>"],
          )
        ]
      }
    ]
  },
  "java_stream_api": {
    "sub_lessons": [
      {
        "title": "Stream API'ye Giriş",
        "parts": [
          {"text": "Stream API (Java 8 ile geldi), koleksiyonlar üzerindeki işlemleri (filtreleme, dönüştürme, eşleme vb.) zincirleme bir şekilde ve çok okunaklı bir tarzda yapmamızı sağlayan güçlü bir araçtır."},
          {"text": "Stream'ler koleksiyonun kendisini değiştirmez, onun elemanlarından oluşan bir akış üzerinde işlem yapar ve yeni bir sonuç üretir."},
          {"text": "Yaygın operasyonlar: filter() (koşula uyanları seç), map() (elemanları dönüştür), forEach() (her elemanla işlem yap), collect() (sonucu bir koleksiyona topla)."},
          {
            "text": "Bir listedeki meyvelerden 'a' harfi ile başlayanları filtreleyip, büyük harfe çevirip yeni bir listeye toplayalım.",
            "code": '''
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class Main {
  public static void main(String[] args) {
    List<String> meyveler = Arrays.asList("elma", "armut", "çilek", "ayva");

    List<String> sonuc = meyveler.stream()  // 1. Akışı başlat
      .filter(m -> m.startsWith("a"))   // 2. 'a' ile başlayanları filtrele
      .map(m -> m.toUpperCase())     // 3. Büyük harfe çevir
      .collect(Collectors.toList()); // 4. Sonucu listeye topla

    System.out.println(sonuc); // Çıktı: [ARMUT, AYVA]
  }
}''',
            "code_explanation": "Gördüğünüz gibi, karmaşık bir işlemi for döngüleri ve if koşulları olmadan, ne yapılmak istendiğini net bir şekilde anlatan zincirleme metot çağrıları ile gerçekleştirdik."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Stream API'de, bir koleksiyondaki elemanları belirli bir koşula göre seçmek için hangi metot kullanılır?",
            options: ["map()", "filter()", "collect()"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir listedeki tüm sayıları 2 ile çarpmak (dönüştürmek) için hangi stream metodu kullanılır?",
            codeTemplate: "sayilar.stream().___ (n -> n * 2)...",
            correctAnswers: ["map"],
            options: ["filter", "collect", "map"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir koleksiyondan bir stream (akış) başlatmak için hangi metot çağrılır?",
            codeTemplate: "List<String> liste = ...;\nliste.___().filter(...);",
            correctAnswers: ["stream"],
            options: ["stream", "begin", "start"],
          ),
          CodeCompletionQuestion(
            questionText: "Stream işlemlerinin sonucunu yeni bir List'e toplamak için collect metodunu tamamlayın.",
            codeTemplate: "... .collect(Collectors.___());",
            correctAnswers: ["toList"],
            options: ["toList", "toSet", "toMap"],
          )
        ]
      }
    ]
  }
};
