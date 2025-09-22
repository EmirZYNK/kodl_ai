import 'package:learn_code/models/quiz_models.dart';

final Map<String, Map<String, dynamic>> javascriptContentTr = {
  // BÖLÜM 1: GİRİŞ (Önceki kodda mevcut)
  "JavaScript nedir?": {
    "parts": [
      {"text": "JavaScript (kısaca JS), web sitelerine hayat veren programlama dilidir!"},
      {"text": "Dinamik içerikleri güncellemek, animasyonlar oluşturmak, kullanıcıyla etkileşime geçmek gibi görevleri tarayıcıda doğrudan çalıştırır."},
      {"text": "Günümüzde sadece web'in ön yüzünde (frontend) değil, Node.js sayesinde sunucu tarafında (backend) da kullanılır."},
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "JavaScript'in temel kullanım amacı nedir?",
        options: ["Veritabanı yönetmek", "Mobil uygulama yapmak", "Web sitelerini interaktif hale getirmek"],
        correctAnswerIndex: 2,
      ),
      MultipleChoiceQuestion(
        questionText: "JavaScript kodları nerede çalışır?",
        options: ["Sadece sunucuda", "Kullanıcının web tarayıcısında", "Sadece mobil uygulamalarda"],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "Node.js, JavaScript'in nerede kullanılmasını sağlar?",
        options: ["Sadece animasyonlarda", "Sunucu tarafında (backend)", "Sadece CSS içinde"],
        correctAnswerIndex: 1,
      ),
    ]
  },
  "HTML + CSS + JS Üçlüsü": {
    "parts": [
      {"text": "Bir web sitesini bir insan vücuduna benzetebiliriz:"},
      {"text": "HTML iskelettir. Sayfanın temel yapısını ve içeriğini belirler."},
      {"text": "CSS, kıyafetler ve dış görünüştür. Renkleri, fontları, yerleşimi, yani sayfanın stilini belirler."},
      {"text": "JavaScript ise kaslar ve sinir sistemidir. Hareket etmeyi, tepki vermeyi ve işlevselliği sağlar."},
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir web sayfasının yapısını (iskeletini) hangi teknoloji oluşturur?",
        options: ["HTML", "CSS", "JavaScript"],
        correctAnswerIndex: 0,
      ),
      MultipleChoiceQuestion(
        questionText: "Bir web sayfasının görünümünü ve stilini (kıyafetlerini) ne belirler?",
        options: ["HTML", "CSS", "JavaScript"],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "Web sayfasının 'düşünmesini' ve 'hareket etmesini' sağlayan teknoloji hangisidir?",
        options: ["HTML", "CSS", "JavaScript"],
        correctAnswerIndex: 2,
      ),
    ]
  },
  "Kurulum (VS Code ve Tarayıcı Konsolu)": {
    "parts": [
      {"text": "JavaScript kodu yazmak için özel bir programa ihtiyacımız yok! Sadece bir metin editörü ve bir web tarayıcısı yeterli."},
      {"text": "Kodlarımızı yazmak için popüler ve ücretsiz bir editör olan Visual Studio Code (VS Code) kullanmanızı öneririz."},
      {"text": "Yazdığımız kodların çıktılarını görmek ve hataları ayıklamak için ise web tarayıcısının 'Geliştirici Konsolu'nu kullanırız. Genellikle F12 tuşuna basarak açabilirsiniz."},
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "JavaScript kodlarını test etmek ve çıktılarını görmek için en pratik araç hangisidir?",
        options: ["Photoshop", "Web Tarayıcısı Konsolu", "Word"],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "Popüler ve ücretsiz bir kod editörü önerisi nedir?",
        options: ["Visual Studio Code", "Not Defteri", "Excel"],
        correctAnswerIndex: 0,
      ),
      MultipleChoiceQuestion(
        questionText: "Çoğu tarayıcıda geliştirici konsolunu açmak için kullanılan yaygın kısayol tuşu hangisidir?",
        options: ["Ctrl + S", "F5", "F12"],
        correctAnswerIndex: 2,
      ),
    ]
  },
  "'Merhaba Dünya' (alert, console.log)": {
    "parts": [
      {"text": "Her dilde olduğu gibi, ilk adımımız ekrana 'Merhaba Dünya' yazdırmak olacak."},
      {"text": "JavaScript'te bunu yapmanın birkaç yolu var. İlki `alert()` fonksiyonudur. Bu, kullanıcıya bir uyarı kutusu gösterir."},
      {
        "text": "Örneğin, bu kod bir açılır pencere çıkarır:",
        "code": "alert(\"Merhaba Dünya!\");",
        "code_explanation": "alert() fonksiyonu içindeki metni bir uyarı kutusunda gösterir."
      },
      {"text": "İkinci ve daha sık kullanacağımız yöntem `console.log()`'dur. Bu, mesajımızı tarayıcı konsoluna yazar."},
      {
        "text": "Bu kod ise çıktısını F12 ile açtığımız konsolda gösterir:",
        "code": "console.log(\"Merhaba Dünya!\");",
        "code_explanation": "console.log() geliştiricilerin kodun durumunu kontrol etmesi için çok kullanışlıdır."
      }
    ],
    "quiz": [
      CodeCompletionQuestion(
        questionText: "Kullanıcıya bir uyarı kutusu göstermek için kodu tamamla.",
        codeTemplate: "___(\"Bu bir uyarıdır!\");",
        correctAnswers: ["alert"],
        options: ["console.log", "alert", "print"],
      ),
      CodeCompletionQuestion(
        questionText: "Tarayıcı konsoluna 'Test' mesajı yazdırmak için kodu tamamla.",
        codeTemplate: "___(\"Test\");",
        correctAnswers: ["console.log"],
        options: ["alert", "write", "console.log"],
      ),
      MultipleChoiceQuestion(
        questionText: "Hangisi geliştiricilerin hata ayıklama ve test için daha sık kullandığı bir yöntemdir?",
        options: ["alert()", "console.log()", "document.write()"],
        correctAnswerIndex: 1,
      ),
    ]
  },
  // BÖLÜM 2: TEMELLER (Önceki kodda mevcut)
  "Değişkenler (let, const, var)": {
    "parts": [
      {"text": "Değişkenler, verileri depolamak için kullanılan isimlendirilmiş kaplardır."},
      {"text": "JavaScript'te değişken tanımlamak için `let`, `const` ve `var` anahtar kelimelerini kullanırız."},
      {"text": "`let` ile tanımlanan bir değişkenin değeri sonradan değiştirilebilir."},
      {
        "text": "İşte `let` kullanımı:",
        "code": "let mesaj = \"Merhaba\";\nmesaj = \"Hoşça kal\"; // Geçerli",
        "code_explanation": "`mesaj` değişkeninin değeri yeniden atanabiliyor."
      },
      {"text": "`const` ile tanımlanan değişkenler ise sabittir, değeri sonradan değiştirilemez."},
      {
        "text": "İşte `const` kullanımı:",
        "code": "const dogumYili = 1990;\ndogumYili = 1991; // Hata verir!",
        "code_explanation": "Sabit (constant) olduğu için `dogumYili`'na yeni bir değer atanamaz."
      },
      {"text": "`var` ise eski bir yöntemdir. Modern JavaScript'te genellikle `let` ve `const` tercih edilir."},
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Değeri sonradan DEĞİŞTİRİLEMEYECEK bir değişken tanımlamak için hangisi kullanılır?",
        options: ["let", "const", "var"],
        correctAnswerIndex: 1,
      ),
      CodeCompletionQuestion(
        questionText: "Değeri 'Ahmet' olan ve sonradan değiştirilebilecek bir 'isim' değişkeni oluştur.",
        codeTemplate: "___ isim = \"Ahmet\";",
        correctAnswers: ["let"],
        options: ["const", "let", "var"],
      ),
      CodeCompletionQuestion(
        questionText: "Değeri 3.14 olan ve ASLA değişmeyecek bir 'pi' sabiti oluştur.",
        codeTemplate: "___ pi = 3.14;",
        correctAnswers: ["const"],
        options: ["let", "var", "const"],
      ),
    ]
  },
  "Veri Türleri (Primitive & Object)": {
    "parts": [
      {"text": "Değişkenlerin tuttuğu verilerin farklı türleri vardır."},
      {"text": "Temel (Primitive) veri türleri en basit olanlardır: String, Number, Boolean, null, undefined."},
      {"text": "`String`: Metinsel ifadelerdir. Tırnak işaretleri içinde yazılır. Örnek: \"Merhaba\""},
      {"text": "`Number`: Sayısal değerlerdir. Örnek: 10, 3.14"},
      {"text": "`Boolean`: Sadece `true` (doğru) veya `false` (yanlış) değerini alabilen mantıksal bir türdür."},
      {"text": "Bunların dışında daha karmaşık yapılar için `Object` (Obje) veri türü de vardır. Bunu ileride göreceğiz."},
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "`\"JavaScript\"` ifadesi hangi veri türüne aittir?",
        options: ["Number", "Boolean", "String"],
        correctAnswerIndex: 2,
      ),
      MultipleChoiceQuestion(
        questionText: "`25` değeri hangi veri türündedir?",
        options: ["String", "Number", "Boolean"],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "Bir durumun sadece doğru ya da yanlış olduğunu belirtmek için hangi veri türü kullanılır?",
        options: ["Boolean", "String", "Number"],
        correctAnswerIndex: 0,
      ),
    ]
  },
  "Yorum Satırları": {
    "parts": [
      {"text": "Yorum satırları, kodun ne yaptığını açıklamak veya geçici olarak bir kod parçasını devre dışı bırakmak için kullanılır."},
      {"text": "JavaScript motoru yorum satırlarını görmezden gelir, yani çalıştırmaz."},
      {"text": "Tek satırlık bir yorum için `//` kullanılır."},
      {
        "text": "Örnek tek satırlık yorum:",
        "code": "// Bu satır çalıştırılmayacak\nlet x = 5; // Bu da değişkeni açıklar",
        "code_explanation": "`//` işaretinden sonra satır sonuna kadar olan her şey bir yorumdur."
      },
      {"text": "Çok satırlı yorumlar için ise `/*` ile başlanır ve `*/` ile bitirilir."},
      {
        "text": "Örnek çok satırlı yorum:",
        "code": "/*\nBu bir açıklamadır.\nBirden fazla satırda\nyazılabilir.\n*/\nlet y = 10;",
        "code_explanation": "İki işaret arasındaki her şey yorum olarak kabul edilir."
      },
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Tek satırlık bir yorum nasıl başlatılır?",
        options: ["<!--", "/*", "//"],
        correctAnswerIndex: 2,
      ),
      CodeCompletionQuestion(
        questionText: "Aşağıdaki kodun çalışmasını engelleyecek şekilde onu yorum satırı içine al.",
        codeTemplate: "___ alert(\"Bu görünmemeli\");",
        correctAnswers: ["//"],
        options: ["/*", "//", "#"],
      ),
      CodeCompletionQuestion(
        questionText: "Birden fazla satırı yorum içine almak için hangi işaretler kullanılır?",
        codeTemplate: "___ Bu bir yorumdur ___",
        correctAnswers: ["/*", "*/"],
        options: ["//", "/*", "*/", "<!--", "-->"],
      ),
    ]
  },
  "prompt ile Kullanıcıdan Girdi Alma": {
    "parts": [
      {"text": "Bazen kullanıcıdan bilgi almamız gerekebilir. Bunun için `prompt()` fonksiyonunu kullanırız."},
      {"text": "`prompt()` fonksiyonu, kullanıcıya bir soru soran bir açılır pencere gösterir ve bir giriş alanı sunar."},
      {"text": "Kullanıcının girdiği değer, genellikle bir değişkende saklanır."},
      {
        "text": "İşte kullanıcıdan ismini alıp konsola yazdıran bir örnek:",
        "code": "let isim = prompt(\"Lütfen isminizi giriniz:\");\nconsole.log(\"Merhaba, \" + isim);",
        "code_explanation": "Kullanıcının girdiği değer `isim` değişkenine atanır ve sonra kullanılır."
      },
      {"text": "Unutmayın: `prompt` ile alınan her değer, sayı bile girilse, `String` (metin) olarak kabul edilir."},
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Kullanıcıdan veri almak için bir açılır pencere gösteren fonksiyon hangisidir?",
        options: ["alert()", "prompt()", "console.log()"],
        correctAnswerIndex: 1,
      ),
      CodeCompletionQuestion(
        questionText: "Kullanıcıya \"Yaşınız kaç?\" sorusunu soran kodu tamamla.",
        codeTemplate: "let yas = ___(\"Yaşınız kaç?\");",
        correctAnswers: ["prompt"],
        options: ["alert", "confirm", "prompt"],
      ),
      MultipleChoiceQuestion(
        questionText: "Kullanıcı `prompt` kutusuna `25` yazarsa, bu değerin veri türü ne olur?",
        options: ["Number", "String", "Boolean"],
        correctAnswerIndex: 1,
      ),
    ]
  },
  // BÖLÜM 3: OPERATÖRLER (Önceki kodda mevcut)
  "Aritmetik ve Atama Operatörleri": {
    "parts": [
      {"text": "Aritmetik operatörler, bildiğimiz matematiksel işlemleri yapmak için kullanılır."},
      {"text": "Toplama (+), Çıkarma (-), Çarpma (*), Bölme (/) ve Mod Alma (%) en yaygın olanlardır."},
      {
        "text": "Aritmetik operatör örnekleri:",
        "code": "let sonuc = 10 + 5; // sonuc = 15\nsonuc = 10 / 2;  // sonuc = 5\nsonuc = 10 % 3;  // sonuc = 1 (10'un 3'e bölümünden kalan)",
        "code_explanation": "Bu operatörler sayılarla matematiksel hesaplamalar yapar."
      },
      {"text": "Atama operatörü (=), bir değişkene değer atamak için kullanılır."},
      {"text": "Ayrıca, aritmetik işlemlerle birleşik atama operatörleri de vardır: +=, -=, *=, /="},
      {
        "text": "Birleşik atama operatörleri:",
        "code": "let sayi = 10;\nsayi += 5; // sayi = sayi + 5; demek. Sonuç: 15\nsayi *= 2; // sayi = sayi * 2; demek. Sonuç: 30",
        "code_explanation": "Bu operatörler, işlemi yapıp sonucu aynı değişkene geri atar."
      },
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir sayının başka bir sayıya bölümünden kalanı bulmak için hangi operatör kullanılır?",
        options: ["/", "*", "%"],
        correctAnswerIndex: 2,
      ),
      CodeCompletionQuestion(
        questionText: "'x' değişkeninin değerini 3 artırmak için kısa yolu tamamla.",
        codeTemplate: "x ___ 3;",
        correctAnswers: ["+="],
        options: ["=", "+=", "=+"],
      ),
      CodeCompletionQuestion(
        questionText: "15 ve 4 sayılarının çarpımını 'sonuc' değişkenine atayan kodu yaz.",
        codeTemplate: "let sonuc = 15 ___ 4;",
        correctAnswers: ["*"],
        options: ["x", "+", "*"],
      ),
    ]
  },
  "Karşılaştırma Operatörleri (== vs ===)": {
    "parts": [
      {"text": "Karşılaştırma operatörleri, iki değeri karşılaştırır ve sonuç olarak `true` (doğru) veya `false` (yanlış) döndürür."},
      {"text": "Büyüktür (>), küçüktür (<), büyük veya eşittir (>=), küçük veya eşittir (<=) sıkça kullanılır."},
      {"text": "Eşitlik kontrolü için iki operatör vardır: `==` ve `===`."},
      {"text": "`==` (Gevşek Eşitlik): Sadece değerleri karşılaştırır, tipleri önemsemez. Gerekirse tip dönüşümü yapar."},
      {
        "text": "`==` örneği:",
        "code": "console.log(5 == \"5\"); // true yazar",
        "code_explanation": "Değerler aynı olduğu için, biri sayı diğeri metin olsa bile `true` döner."
      },
      {"text": "`===` (Katı Eşitlik): Hem değerleri hem de veri tiplerini karşılaştırır. Bu daha güvenli ve tavsiye edilen yöntemdir."},
      {
        "text": "`===` örneği:",
        "code": "console.log(5 === \"5\"); // false yazar",
        "code_explanation": "Değerler aynı olsa bile, tipler farklı (Number ve String) olduğu için `false` döner."
      },
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Hem değeri hem de veri tipini kontrol eden katı eşitlik operatörü hangisidir?",
        options: ["=", "==", "==="],
        correctAnswerIndex: 2,
      ),
      CodeCompletionQuestion(
        questionText: "7'nin 7'ye eşit olup olmadığını katı bir şekilde kontrol eden kodu yazın.",
        codeTemplate: "7 ___ 7",
        correctAnswers: ["==="],
        options: ["==", "!==", "==="],
      ),
      MultipleChoiceQuestion(
        questionText: "`10 > 20` ifadesinin sonucu nedir?",
        options: ["true", "false", "SyntaxError"],
        correctAnswerIndex: 1,
      ),
    ]
  },
  "Mantıksal Operatörler (&&, ||, !)": {
    "parts": [
      {"text": "Mantıksal operatörler, birden fazla koşulu birleştirmek için kullanılır."},
      {"text": "`&&` (VE - AND): Her iki koşul da `true` ise sonuç `true` olur."},
      {
        "text": "`&&` Örneği:",
        "code": "let yas = 25;\nlet saglikli = true;\nyas > 18 && saglikli == true; // Sonuç: true",
        "code_explanation": "Hem yaş 18'den büyük OLDUĞU İÇİN, hem de sağlıklı `true` OLDUĞU İÇİN sonuç `true`'dur."
      },
      {"text": "`||` (VEYA - OR): Koşullardan en az biri `true` ise sonuç `true` olur."},
      {
        "text": "`||` Örneği:",
        "code": "let para = 10;\nlet kupon = true;\npara > 50 || kupon == true; // Sonuç: true",
        "code_explanation": "Para 50'den büyük olmasa bile, kupon `true` olduğu için (koşullardan biri sağlandığı için) sonuç `true`'dur."
      },
      {"text": "`!` (DEĞİL - NOT): Bir boolean değerinin tersini alır. `true` ise `false`, `false` ise `true` yapar."},
      {
        "text": "`!` Örneği:",
        "code": "let kapali = false;\n!kapali; // Sonuç: true",
        "code_explanation": "`kapali` değişkeni `false` olduğu için, `!` operatörü onu `true` yapar."
      },
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Birden çok koşulun HEPSİNİN doğru olması gerektiğini kontrol eden operatör hangisidir?",
        options: ["||", "!", "&&"],
        correctAnswerIndex: 2,
      ),
      MultipleChoiceQuestion(
        questionText: "Koşullardan SADECE BİRİNİN doğru olmasının yeterli olduğu operatör hangisidir?",
        options: ["&&", "||", "!"],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "`!true` ifadesinin sonucu nedir?",
        options: ["true", "false", "undefined"],
        correctAnswerIndex: 1,
      ),
    ]
  },
  // BÖLÜM 4: Koşullar ve Döngüler (Önceki kodda mevcut)
  "if / else if / else": {
    "parts": [
      {"text": "Programların karar vermesini sağlamak için koşullu ifadeler kullanırız. En temeli `if` yapısıdır."},
      {"text": "`if` bloğu, içindeki koşul `true` ise çalışır."},
      {
        "text": "Basit bir `if` örneği:",
        "code": "let yas = 20;\nif (yas > 18) {\n  console.log(\"Ehliyet alabilirsiniz.\");\n}",
        "code_explanation": "yas, 18'den büyük olduğu için koşul doğrudur ve kod bloğu çalışır."
      },
      {"text": "Eğer `if` koşulu `false` ise ne olacağını belirtmek için `else` kullanırız."},
      {
        "text": "`if-else` örneği:",
        "code": "let saat = 22;\nif (saat < 20) {\n  console.log(\"İyi günler!\");\n} else {\n  console.log(\"İyi akşamlar!\");\n}",
        "code_explanation": "saat, 20'den küçük olmadığı için `else` bloğu çalışır."
      },
      {"text": "Birden fazla koşulu sırayla kontrol etmek için `else if` kullanabiliriz."},
      {
        "text": "Tam bir `if-else if-else` yapısı:",
        "code": "let not = 85;\nif (not > 90) {\n  console.log(\"AA\");\n} else if (not > 80) {\n  console.log(\"BA\");\n} else {\n  console.log(\"Geçemediniz\");\n}",
        "code_explanation": "İlk koşul yanlış (85 > 90 değil), ikinci koşul doğru (85 > 80) olduğu için 'BA' yazar."
      }
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir koşul yanlış olduğunda çalışacak olan kod bloğu hangisidir?",
        options: ["if", "else", "else if"],
        correctAnswerIndex: 1,
      ),
      CodeCompletionQuestion(
        questionText: "x'in 10'dan büyük olup olmadığını kontrol eden koşulu tamamla.",
        codeTemplate: "___ (x > 10) {\n  // kodlar\n}",
        correctAnswers: ["if"],
        options: ["for", "if", "while"],
      ),
      CodeCompletionQuestion(
        questionText: "Paranın 50'den az olması durumunu kontrol eden `if-else` yapısını tamamla.",
        codeTemplate: "if (para >= 50) {\n  // ...\n} ___ {\n  console.log(\"Yetersiz bakiye\");\n}",
        correctAnswers: ["else"],
        options: ["elseif", "else if", "else"],
      )
    ]
  },
  "switch-case Yapısı": {
    "parts": [
      {"text": "Bazen bir değişkenin alabileceği birden çok belirli değere göre farklı işlemler yapmak isteriz."},
      {"text": "Çok sayıda `else if` kullanmak yerine, bu gibi durumlarda `switch-case` yapısı daha okunaklı olabilir."},
      {"text": "`switch` ifadesi bir değişkeni değerlendirir. `case` ise değişkenin alabileceği olası değerleri kontrol eder."},
      {
        "text": "İşte bir `switch-case` örneği:",
        "code": "let gun = \"Pazartesi\";\nswitch (gun) {\n  case \"Pazartesi\":\n    console.log(\"Haftanın ilk günü.\");\n    break;\n  case \"Cuma\":\n    console.log(\"Hafta sonu yaklaşıyor!\");\n    break;\n  default:\n    console.log(\"Normal bir gün.\");\n}",
        "code_explanation": "`gun` değişkeninin değeri \"Pazartesi\" olduğu için ilgili `case` çalışır. `break` komutu `switch`'ten çıkmayı sağlar."
      },
      {"text": "`break` komutunu kullanmak önemlidir. Yoksa doğru `case` bulunduktan sonra bile alttaki `case`'ler çalışmaya devam eder."},
      {"text": "`default` bloğu ise hiçbir `case` ile eşleşme olmazsa çalışır. `if-else` yapısındaki `else` gibi düşünebilirsiniz."}
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir `case` bloğu çalıştıktan sonra `switch` yapısından çıkmak için hangi komut kullanılır?",
        options: ["return", "exit", "break"],
        correctAnswerIndex: 2,
      ),
      MultipleChoiceQuestion(
        questionText: "Hiçbir `case` koşulu sağlanmazsa `switch` içinde hangi blok çalışır?",
        options: ["default", "else", "otherwise"],
        correctAnswerIndex: 0,
      ),
      CodeCompletionQuestion(
        questionText: "Meyvenin \"Elma\" olup olmadığını kontrol eden `case`'i tamamla.",
        codeTemplate: "switch(meyve) {\n  ___ \"Elma\":\n    console.log(\"Elmalar sağlıklıdır.\");\n    break;\n}",
        correctAnswers: ["case"],
        options: ["if", "case", "when"],
      )
    ]
  },
  "for ve while Döngüleri": {
    "parts": [
      {"text": "Döngüler, bir kod bloğunu belirli bir koşul sağlandığı sürece tekrar tekrar çalıştırmamızı sağlar."},
      {"text": "`for` döngüsü, genellikle tekrar sayısının belli olduğu durumlarda kullanılır."},
      {"text": "Üç bölümden oluşur: başlangıç; koşul; artış miktarı."},
      {
        "text": "0'dan 4'e kadar sayıları yazdıran bir `for` döngüsü:",
        "code": "for (let i = 0; i < 5; i++) {\n  console.log(i);\n}",
        "code_explanation": "i=0'dan başlar, i<5 olduğu sürece çalışır ve her adımda i bir artar. 0, 1, 2, 3, 4 yazar."
      },
      {"text": "`while` döngüsü ise, bir koşul `true` olduğu sürece çalışmaya devam eder. Tekrar sayısı başlangıçta belli olmayabilir."},
      {
        "text": "Aynı işi yapan bir `while` döngüsü:",
        "code": "let i = 0;\nwhile (i < 5) {\n  console.log(i);\n  i++;\n}",
        "code_explanation": "i<5 olduğu sürece döngü çalışır. Döngü içinde i'yi artırmayı unutmamalıyız yoksa sonsuz döngüye girer!"
      }
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Tekrar sayısının genellikle başlangıçta belli olduğu döngü türü hangisidir?",
        options: ["while", "for", "if"],
        correctAnswerIndex: 1,
      ),
      CodeCompletionQuestion(
        questionText: "Bir kod bloğunu 10 kez tekrarlayacak `for` döngüsünün koşulunu tamamla.",
        codeTemplate: "for (let i = 0; ___; i++) {\n  // kodlar\n}",
        correctAnswers: ["i < 10"],
        options: ["i > 10", "i < 10", "i == 10"],
      ),
      CodeCompletionQuestion(
        questionText: "Aşağıdaki `while` döngüsünü sonsuz döngü olmaktan kurtaracak kodu ekle.",
        codeTemplate: "let sayac = 0;\nwhile (sayac < 3) {\n  console.log(\"Merhaba\");\n  ___;\n}",
        correctAnswers: ["sayac++"],
        options: ["break", "sayac++", "continue"],
      )
    ]
  },
  "break ve continue": {
    "parts": [
      {"text": "Bazen bir döngüyü normalden erken bitirmek veya mevcut adımı atlayıp bir sonrakine geçmek isteyebiliriz."},
      {"text": "`break` komutu, içinde bulunduğu döngüyü tamamen sonlandırır ve döngüden sonraki ilk koddan devam eder."},
      {
        "text": "`break` kullanımı:",
        "code": "for (let i = 0; i < 10; i++) {\n  if (i === 5) {\n    break; // i 5'e eşit olduğunda döngü durur\n  }\n  console.log(i);\n}",
        "code_explanation": "Bu kod 0, 1, 2, 3, 4 sayılarını yazar ve i=5 olunca döngüden çıkar."
      },
      {"text": "`continue` komutu ise döngünün mevcut adımını atlar ve bir sonraki adımdan devam eder."},
      {
        "text": "`continue` kullanımı:",
        "code": "for (let i = 0; i < 5; i++) {\n  if (i === 2) {\n    continue; // i 2'ye eşit olduğunda bu adımı atla\n  }\n  console.log(i);\n}",
        "code_explanation": "Bu kod 0, 1, 3, 4 sayılarını yazar. i=2 olduğunda `console.log` çalışmaz, döngü bir sonraki adıma (i=3) geçer."
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
        questionText: "Bir `for` döngüsü içinde `i === 3` olduğunda `continue` çalışırsa ne olur?",
        options: ["Döngü tamamen durur.", "Program hata verir.", "Sadece i'nin 3 olduğu adım atlanır, döngü devam eder."],
        correctAnswerIndex: 2,
      )
    ]
  },
  // BÖLÜM 5: FONKSİYONLAR
  "Fonksiyon Tanımlama ve Çağırma": {
    "parts": [
      {"text": "Fonksiyonlar, belirli bir görevi yerine getiren ve tekrar tekrar çağrılabilen kod bloklarıdır."},
      {"text": "Bu, kod tekrarını önler ve programlarımızı daha modüler hale getirir."},
      {"text": "Bir fonksiyonu `function` anahtar kelimesi, bir isim, parantezler `()` ve süslü parantezler `{}` ile tanımlarız."},
      {
        "text": "İşte bir fonksiyon tanımı:",
        "code": "function selamVer() {\n  console.log(\"Merhaba!\");\n}",
        "code_explanation": "Bu kod `selamVer` adında bir fonksiyon oluşturur, ancak henüz çalıştırmaz."
      },
      {"text": "Bir fonksiyonu çalıştırmak için, adını ve ardından parantezleri yazarız. Buna 'çağırma' denir."},
      {
        "text": "Fonksiyonu çağırma:",
        "code": "selamVer(); // Konsola \"Merhaba!\" yazar\nselamVer(); // Tekrar çağırabiliriz, yine \"Merhaba!\" yazar",
        "code_explanation": "Fonksiyonu her çağırdığımızda, içindeki kod bloğu yeniden çalıştırılır."
      }
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Belirli bir görevi yapan ve yeniden kullanılabilen kod bloklarına ne ad verilir?",
        options: ["Değişken", "Döngü", "Fonksiyon"],
        correctAnswerIndex: 2,
      ),
      CodeCompletionQuestion(
        questionText: "`mesajGoster` adında bir fonksiyon tanımlamak için kodu tamamla.",
        codeTemplate: "___ mesajGoster() {\n  // kodlar\n}",
        correctAnswers: ["function"],
        options: ["fun", "function", "def"],
      ),
      CodeCompletionQuestion(
        questionText: "Daha önce tanımlanmış olan `hesapla` fonksiyonunu çalıştırmak (çağırmak) için kodu tamamla.",
        codeTemplate: "___;",
        correctAnswers: ["hesapla()"],
        options: ["hesapla", "run hesapla", "hesapla()"],
      )
    ]
  },
  "Arrow Functions (Ok Fonksiyonları)": {
    "parts": [
      {"text": "ES6 ile birlikte JavaScript'e fonksiyon yazmanın daha kısa bir yolu geldi: Ok Fonksiyonları (Arrow Functions)."},
      {"text": "Özellikle küçük ve tek seferlik fonksiyonlar için çok kullanışlıdır."},
      {"text": "Normal bir fonksiyon ifadesi şöyledir: `const topla = function(a, b) { return a + b; }`"},
      {
        "text": "Aynı fonksiyonun ok fonksiyonu ile yazılışı:",
        "code": "const topla = (a, b) => {\n  return a + b;\n};",
        "code_explanation": "`function` kelimesi kalkar ve parametrelerden sonra `=>` (ok) işareti gelir."
      },
      {"text": "Eğer fonksiyon sadece tek bir işlem yapıp sonuç döndürüyorsa, süslü parantezleri ve `return` kelimesini kaldırabilirsiniz!"},
      {
        "text": "En kısa hali:",
        "code": "const topla = (a, b) => a + b;",
        "code_explanation": "Bu yazım, bir üstteki kod ile tamamen aynı işi yapar. Çok daha temiz, değil mi?"
      }
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Ok fonksiyonlarının en büyük avantajı nedir?",
        options: ["Daha hızlı çalışmaları", "Daha kısa ve okunaklı sözdizimi", "Daha güvenli olmaları"],
        correctAnswerIndex: 1,
      ),
      CodeCompletionQuestion(
        questionText: "Verilen normal fonksiyonu bir ok fonksiyonuna çevir.",
        codeTemplate: "const selamla = (isim) ___ => `Merhaba, \${isim}`",
        correctAnswers: ["=>"],
        options: ["->", "function", "=>"],
      ),
      MultipleChoiceQuestion(
        questionText: "Tek satırlık bir ok fonksiyonunda `return` kelimesini yazmak gerekir mi?",
        options: ["Evet, her zaman gerekir", "Hayır, gerekmez (otomatik olarak döndürülür)", "Sadece sayılarda gerekmez"],
        correctAnswerIndex: 1,
      )
    ]
  },
  "Parametre ve Dönüş Değeri": {
    "parts": [
      {"text": "Fonksiyonları daha güçlü kılan şey, onlara dışarıdan bilgi (parametre) verebilmek ve onlardan bir sonuç (dönüş değeri) alabilmektir."},
      {"text": "Parametreler, fonksiyonu tanımlarken parantezlerin içine yazdığımız değişkenlerdir. Fonksiyona veri aktarmamızı sağlarlar."},
      {
        "text": "İsim parametresi alan bir fonksiyon:",
        "code": "function selamla(isim) {\n  console.log(\"Merhaba, \" + isim);\n}",
        "code_explanation": "`isim` burada bir parametredir. Fonksiyon çağrılırken verilecek değer bu değişkene atanır."
      },
      {
        "text": "Parametreli fonksiyonu çağırma:",
        "code": "selamla(\"Ayşe\"); // Konsola \"Merhaba, Ayşe\" yazar.\nselamla(\"Ali\"); // Konsola \"Merhaba, Ali\" yazar.",
        "code_explanation": "\"Ayşe\" ve \"Ali\" değerlerine argüman denir."
      },
      {"text": "`return` anahtar kelimesi, bir fonksiyonun çalışmasını sonlandırır ve bir değer döndürür."},
      {
        "text": "Sonuç döndüren bir fonksiyon:",
        "code": "function topla(sayi1, sayi2) {\n  return sayi1 + sayi2;\n}\n\nlet sonuc = topla(5, 3); // sonuc değişkeninin değeri 8 olur.",
        "code_explanation": "`topla` fonksiyonu, iki sayının toplamını hesaplar ve bu sonucu `return` ile dışarıya verir."
      }
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir fonksiyondan dışarıya bir değer aktarmak için hangi anahtar kelime kullanılır?",
        options: ["give", "return", "output"],
        correctAnswerIndex: 1,
      ),
      CodeCompletionQuestion(
        questionText: "İki sayıyı çarpan ve sonucu döndüren fonksiyonu tamamla.",
        codeTemplate: "function carp(a, b) {\n  ___ a * b;\n}",
        correctAnswers: ["return"],
        options: ["console.log", "return", "print"],
      ),
      CodeCompletionQuestion(
        questionText: "`kareAl` fonksiyonuna 5 değerini parametre olarak gönder.",
        codeTemplate: "kareAl(___);",
        correctAnswers: ["5"],
        options: ["(5)", "5", "\"5\""],
      )
    ]
  },
  "Değişken Kapsamı (Scope)": {
    "parts": [
      {"text": "Değişken Kapsamı (Scope), bir değişkenin kodun hangi bölümlerinden erişilebilir olduğunu belirleyen kurallar bütünüdür."},
      {"text": "Global Scope (Genel Kapsam): Bir fonksiyonun veya bloğun dışında tanımlanan değişkenler genel kapsama sahiptir. Kodun her yerinden erişilebilirler."},
      {
        "text": "Global değişken örneği:",
        "code": "let kullaniciAdi = \"admin\"; // Global\n\nfunction selamla() {\n  console.log(\"Hoş geldin, \" + kullaniciAdi); // Erişilebilir\n}\n\nselamla();",
        "code_explanation": "`kullaniciAdi` değişkeni her yerden erişilebilirdir."
      },
      {"text": "Local Scope (Yerel Kapsam): Bir fonksiyonun içinde tanımlanan değişkenler yereldir. Sadece tanımlandıkları fonksiyon içinden erişilebilirler."},
      {
        "text": "Yerel değişken örneği:",
        "code": "function topla() {\n  let sonuc = 10; // Yerel\n  console.log(sonuc);\n}\n\ntopla(); // 10 yazar\nconsole.log(sonuc); // Hata verir! `sonuc` burada tanımsızdır.",
        "code_explanation": "`sonuc` değişkeni sadece `topla` fonksiyonunun içinde 'yaşar'."
      },
      {"text": "Kısacası: İçerideki, dışarıdakine erişebilir ama dışarıdaki, içeridekine erişemez!"}
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir fonksiyonun içinde `let` ile tanımlanmış bir değişkene fonksiyonun dışından erişmeye çalışırsak ne olur?",
        options: ["Değişkenin değeri 'undefined' olur.", "Program hata verir.", "Değişkene sorunsuzca erişilir."],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "Kodun herhangi bir yerinden erişilebilen değişkenler hangi kapsamdadır?",
        options: ["Yerel (Local) Scope", "Blok (Block) Scope", "Genel (Global) Scope"],
        correctAnswerIndex: 2,
      ),
      CodeCompletionQuestion(
        questionText: "Aşağıdaki kodda `mesaj` değişkeni hangi kapsamdadır?",
        codeTemplate: "function goster() {\n  let mesaj = \"Merhaba\";\n}",
        correctAnswers: ["Yerel"],
        options: ["Genel", "Yerel", "Evrensel"],
      )
    ]
  },

// BÖLÜM 6: Diziler ve Objeler
  "Dizi (Array) Oluşturma ve Erişim": {
    "parts": [
      {"text": "Diziler (Arrays), birden çok değeri tek bir değişken altında sıralı bir şekilde saklamamızı sağlayan özel bir veri yapısıdır."},
      {"text": "Dizi oluşturmak için köşeli parantezler `[]` kullanılır ve elemanlar virgülle ayrılır."},
      {
        "text": "Bir dizi oluşturma:",
        "code": "let meyveler = [\"Elma\", \"Muz\", \"Çilek\"];",
        "code_explanation": "Bu dizi, 3 adet string (metin) elemanı içeriyor."
      },
      {"text": "Dizilerdeki elemanlara erişmek için 'indeks' numaralarını kullanırız. ÖNEMLİ: İndeksleme her zaman 0'dan başlar!"},
      {
        "text": "Dizi elemanına erişim:",
        "code": "console.log(meyveler[0]); // \"Elma\" yazar\nconsole.log(meyveler[1]); // \"Muz\" yazar",
        "code_explanation": "İlk eleman için indeks 0, ikinci eleman için indeks 1 kullanılır."
      },
      {"text": "Bir dizideki eleman sayısını öğrenmek için `.length` özelliğini kullanırız."},
      {
        "text": "Dizinin uzunluğunu bulma:",
        "code": "console.log(meyveler.length); // 3 yazar",
        "code_explanation": "Bu özellik, dizide kaç eleman olduğunu söyler."
      }
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir dizideki İLK elemanın indeksi kaçtır?",
        options: ["1", "0", "-1"],
        correctAnswerIndex: 1,
      ),
      CodeCompletionQuestion(
        questionText: "Aşağıdaki diziden \"Kedi\" elemanına erişen kodu tamamla.",
        codeTemplate: "let hayvanlar = [\"Köpek\", \"Kedi\", \"Balık\"];\nhayvanlar[___];",
        correctAnswers: ["1"],
        options: ["0", "1", "2"],
      ),
      CodeCompletionQuestion(
        questionText: "Bir dizinin eleman sayısını veren özelliği yazın.",
        codeTemplate: "let renkler = [\"Mavi\", \"Yeşil\"];\nrenkler.___ ;",
        correctAnswers: ["length"],
        options: ["size", "count", "length"],
      )
    ]
  },
  "Önemli Dizi Metotları (push, pop, forEach, map)": {
    "parts": [
      {"text": "Dizilerle çalışmayı kolaylaştıran birçok yerleşik fonksiyon (metot) vardır."},
      {"text": "`push()`: Dizinin SONUNA yeni bir eleman ekler."},
      {
        "text": "`push()` örneği:",
        "code": "let sayilar = [10, 20];\nsayilar.push(30);\nconsole.log(sayilar); // [10, 20, 30] yazar",
        "code_explanation": "Diziye 30 sayısı eklendi."
      },
      {"text": "`pop()`: Dizinin SONUNDAKİ elemanı siler."},
      {
        "text": "`pop()` örneği:",
        "code": "let harfler = ['a', 'b', 'c'];\nharfler.pop();\nconsole.log(harfler); // ['a', 'b'] yazar",
        "code_explanation": "'c' harfi diziden çıkarıldı."
      },
      {"text": "`forEach()`: Dizinin her bir elemanı için sırayla bir fonksiyon çalıştırır."},
      {
        "text": "`forEach()` örneği:",
        "code": "let isimler = [\"Ali\", \"Veli\"];\nisimler.forEach(function(isim) {\n  console.log(isim);\n});\n// Sırasıyla \"Ali\" ve \"Veli\" yazar.",
        "code_explanation": "Bu metot, döngü kurmanın modern bir yoludur."
      }
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir dizinin sonuna eleman eklemek için hangi metot kullanılır?",
        options: ["add()", "push()", "insert()"],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "Bir dizinin sonundaki elemanı silen metot hangisidir?",
        options: ["pop()", "remove()", "delete()"],
        correctAnswerIndex: 0,
      ),
      CodeCompletionQuestion(
        questionText: "Dizinin her bir elemanını konsola yazdırmak için forEach metodunu tamamla.",
        codeTemplate: "['x', 'y'].___(function(harf) {\n  console.log(harf);\n});",
        correctAnswers: ["forEach"],
        options: ["forAll", "forEach", "map"],
      )
    ]
  },
  "Obje (Object) Tanımı ve Kullanımı": {
    "parts": [
      {"text": "Objeler, birbiriyle ilişkili verileri ve fonksiyonları bir arada tutan koleksiyonlardır."},
      {"text": "Diziler gibi sıralı olmak zorunda değillerdir. Bunun yerine `anahtar: değer` (key: value) çiftleri halinde veri saklarlar."},
      {"text": "Obje oluşturmak için süslü parantezler `{}` kullanılır."},
      {
        "text": "Bir obje oluşturma:",
        "code": "let araba = {\n  marka: \"Tesla\",\n  model: \"Model 3\",\n  yıl: 2024,\n  calistir: function() {\n    console.log(\"Motor çalıştı.\");\n  }\n};",
        "code_explanation": "Bu objede metin, sayı ve hatta bir fonksiyon bile saklanıyor."
      },
      {"text": "Objenin özelliklerine (property) erişmek için genellikle 'nokta notasyonu' kullanılır."},
      {
        "text": "Özelliklere erişim:",
        "code": "console.log(araba.marka); // \"Tesla\" yazar\nconsole.log(araba.yıl);   // 2024 yazar\naraba.calistir();      // \"Motor çalıştı.\" yazar",
        "code_explanation": "objeAdi.anahtarAdi şeklinde erişim sağlanır."
      }
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Objeler verileri hangi formatta saklar?",
        options: ["Sadece sıralı listeler halinde", "Anahtar:değer (key:value) çiftleri halinde", "Sadece fonksiyonlar halinde"],
        correctAnswerIndex: 1,
      ),
      CodeCompletionQuestion(
        questionText: "Aşağıdaki `kisi` objesinden `soyisim` değerine erişen kodu tamamla.",
        codeTemplate: "let kisi = { isim: 'Zeynep', soyisim: 'Yılmaz' };\nkisi.___ ;",
        correctAnswers: ["soyisim"],
        options: ["isim", "soyisim", "getSoyisim()"],
      ),
      CodeCompletionQuestion(
        questionText: "Yukarıdaki `araba` objesine `renk: \"Kırmızı\"` özelliğini ekleyin.",
        codeTemplate: "araba.___ = \"Kırmızı\";",
        correctAnswers: ["renk"],
        options: ["yeniRenk", "color", "renk"],
      )
    ]
  },
  "JSON'a Giriş": {
    "parts": [
      {"text": "JSON (JavaScript Object Notation), farklı sistemler arasında veri taşımak ve depolamak için kullanılan hafif bir metin tabanlı formattır."},
      {"text": "Sözdizimi, JavaScript objelerine çok benzer, bu da JavaScript ile çalışmasını çok kolaylaştırır."},
      {"text": "İki temel kuralı vardır: 1) Hem anahtarlar hem de metinsel değerler çift tırnak `\"\"` içinde olmalıdır. 2) Fonksiyon içeremez."},
      {
        "text": "Geçerli bir JSON örneği:",
        "code": "{\n  \"isim\": \"Ahmet\",\n  \"yas\": 30,\n  \"ogrenciMi\": false\n}",
        "code_explanation": "Gördüğünüz gibi, `isim`, `yas`, `ogrenciMi` anahtarlarının hepsi çift tırnak içinde."
      },
      {"text": "JavaScript objesini JSON metnine çevirmek için `JSON.stringify()` kullanılır."},
      {"text": "JSON metnini tekrar JavaScript objesine çevirmek için ise `JSON.parse()` kullanılır."},
      {
        "text": "JSON metodları:",
        "code": "let user = { name: \"Eva\", age: 25 };\nlet jsonText = JSON.stringify(user); // '{\"name\":\"Eva\",\"age\":25}'\nlet userObject = JSON.parse(jsonText); // { name: 'Eva', age: 25 }",
        "code_explanation": "Bu iki metot, sunucularla (API) iletişim kurarken sürekli kullanılır."
      }
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "JSON formatının en temel amacı nedir?",
        options: ["Web sitelerini şekillendirmek", "Farklı sistemler arasında veri alışverişi yapmak", "Animasyon oluşturmak"],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "JSON'da anahtarlar (keys) nasıl yazılmalıdır?",
        options: ["Tırnaksız", "Tek tırnak içinde", "Çift tırnak içinde"],
        correctAnswerIndex: 2,
      ),
      CodeCompletionQuestion(
        questionText: "Bir JavaScript objesini JSON metnine çeviren metodu tamamla.",
        codeTemplate: "JSON.___ (myObject);",
        correctAnswers: ["stringify"],
        options: ["parse", "stringify", "toText"],
      )
    ]
  },

// BÖLÜM 7: DOM'a Giriş
  "DOM Nedir?": {
    "parts": [
      {"text": "DOM (Document Object Model - Belge Nesne Modeli), bir web sayfasının mantıksal bir temsilidir."},
      {"text": "Tarayıcı bir HTML belgesini yüklediğinde, bu belgeye dayalı bir DOM oluşturur."},
      {"text": "DOM, sayfayı bir ağaç yapısı olarak modeller. Her HTML etiketi bu ağaçta bir 'düğüm' (node) haline gelir."},
      {"text": "İşte en önemli kısım: JavaScript, bu DOM ağacı sayesinde web sayfasındaki her şeye erişebilir ve onları değiştirebilir!"},
      {"text": "Yani bir başlığı değiştirmek, bir butona tıklanınca yeni bir resim eklemek, bir yazının rengini değiştirmek... Hepsi DOM sayesinde mümkün olur."}
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "DOM'un açılımı nedir?",
        options: ["Document Object Mainframe", "Data Object Model", "Document Object Model"],
        correctAnswerIndex: 2,
      ),
      MultipleChoiceQuestion(
        questionText: "DOM, bir HTML belgesini ne olarak temsil eder?",
        options: ["Basit bir metin dosyası", "Bir ağaç yapısı", "Bir dizi"],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "JavaScript'in HTML elemanlarını değiştirmesine olanak tanıyan yapı hangisidir?",
        options: ["CSS", "DOM", "JSON"],
        correctAnswerIndex: 1,
      )
    ]
  },
  "Element Seçme (querySelector, getElementById)": {
    "parts": [
      {"text": "DOM'da bir elemanı değiştirebilmek için önce onu 'seçmemiz' gerekir."},
      {"text": "Bunun en klasik yolu, bir elemana HTML'de benzersiz bir `id` verip onu `getElementById()` ile seçmektir."},
      {
        "text": "`getElementById` kullanımı:",
        "code": "// HTML: <h1 id=\"baslik\">Merhaba</h1>\n\nconst baslikElementi = document.getElementById(\"baslik\");",
        "code_explanation": "Bu kod, `baslik` id'sine sahip `h1` elemanını seçip bir değişkene atar."
      },
      {"text": "Daha modern ve esnek bir yöntem ise `querySelector()` metodudur. Bu metot, CSS seçicilerini kullanır."},
      {
        "text": "`querySelector` kullanımı:",
        "code": "// id için: #, class için: ., etiket için: etiket adı\nconst baslik = document.querySelector(\"#baslik\");\nconst paragraf = document.querySelector(\".aciklama\");\nconst ilkButton = document.querySelector(\"button\");",
        "code_explanation": "CSS'te nasıl seçiyorsak, burada da aynı şekilde seçiyoruz. `querySelector` sadece bulduğu ilk elemanı seçer."
      }
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "CSS'teki gibi seçiciler kullanarak DOM'dan eleman seçmemizi sağlayan modern metot hangisidir?",
        options: ["getElementById()", "getElementsByClass()", "querySelector()"],
        correctAnswerIndex: 2,
      ),
      CodeCompletionQuestion(
        questionText: "Sayfadaki `logo` id'li elemanı seçen kodu tamamla.",
        codeTemplate: "document.___(\"logo\");",
        correctAnswers: ["getElementById"],
        options: ["querySelector", "getElementById", "getElement"],
      ),
      CodeCompletionQuestion(
        questionText: "Sayfadaki `menu` class'ına sahip İLK elemanı seçen kodu tamamla.",
        codeTemplate: "document.querySelector(\"___\");",
        correctAnswers: [".menu"],
        options: ["#menu", ".menu", "menu"],
      )
    ]
  },
  "İçerik Değiştirme (innerText, innerHTML)": {
    "parts": [
      {"text": "Bir elemanı seçtikten sonra, onun içeriğini kolayca değiştirebiliriz."},
      {"text": "`innerText` özelliği, bir elemanın sadece metin içeriğini temsil eder. HTML etiketlerini görmezden gelir."},
      {
        "text": "`innerText` kullanımı:",
        "code": "const baslik = document.querySelector(\"#baslik\");\nbaslik.innerText = \"Yeni Başlık\";",
        "code_explanation": "Bu kod, başlığın metnini 'Yeni Başlık' olarak değiştirir."
      },
      {"text": "`innerHTML` özelliği ise elemanın içindeki tüm HTML'i temsil eder. Bununla içeriğe yeni HTML etiketleri ekleyebiliriz."},
      {
        "text": "`innerHTML` kullanımı:",
        "code": "const kutu = document.querySelector(\".kutu\");\nkutu.innerHTML = \"<strong>Önemli!</strong>\";",
        "code_explanation": "Bu kod, kutunun içeriğini temizler ve yerine kalın harflerle 'Önemli!' yazar."
      },
      {"text": "DİKKAT: Güvenilmeyen kaynaklardan gelen verileri `innerHTML` ile eklemek güvenlik açıklarına neden olabilir. Sadece metin değiştirecekseniz `innerText` daha güvenlidir."}
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir elemanın içeriğine yeni HTML etiketleri de eklemek istiyorsak hangisini kullanmalıyız?",
        options: ["innerText", "textContent", "innerHTML"],
        correctAnswerIndex: 2,
      ),
      MultipleChoiceQuestion(
        questionText: "Sadece bir elemanın metin içeriğini güvenli bir şekilde değiştirmek için hangisi tercih edilir?",
        options: ["innerHTML", "innerText", "outerHTML"],
        correctAnswerIndex: 1,
      ),
      CodeCompletionQuestion(
        questionText: "`mesaj` id'li bir paragrafın metnini \"Hoşça kal\" olarak değiştiren kodu tamamla.",
        codeTemplate: "const p = document.getElementById(\"mesaj\");\np.___ = \"Hoşça kal\";",
        correctAnswers: ["innerText"],
        options: ["innerHTML", "innerText", "text"],
      )
    ]
  },
  "Stil Değiştirme (element.style)": {
    "parts": [
      {"text": "JavaScript ile bir elemanın CSS stillerini de doğrudan değiştirebiliriz."},
      {"text": "Seçtiğimiz her DOM elemanının bir `.style` özelliği vardır."},
      {"text": "Bu `style` objesi üzerinden CSS özelliklerine erişip onlara yeni değerler atayabiliriz."},
      {
        "text": "Stil değiştirme örneği:",
        "code": "const baslik = document.querySelector(\"#baslik\");\nbaslik.style.color = \"blue\";\nbaslik.style.backgroundColor = \"yellow\";",
        "code_explanation": "Başlığın yazı rengini mavi, arka plan rengini sarı yapar."
      },
      {"text": "ÖNEMLİ BİR KURAL: CSS'te `background-color` gibi tire ile yazılan özellikler, JavaScript'te `backgroundColor` gibi 'camelCase' formatında yazılır."}
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "JavaScript'te bir elemanın CSS'teki `font-size` özelliğine nasıl erişilir?",
        options: ["style.font-size", "style.fontSize", "style.font.size"],
        correctAnswerIndex: 1,
      ),
      CodeCompletionQuestion(
        questionText: "`uyari` id'li bir elemanın yazı rengini kırmızı yapan kodu tamamla.",
        codeTemplate: "const uyari = document.getElementById(\"uyari\");\nuyari.style.___ = \"red\";",
        correctAnswers: ["color"],
        options: ["color", "font-color", "textColor"],
      ),
      CodeCompletionQuestion(
        questionText: "Bir elemanın arka plan rengini değiştirmek için hangi `style` özelliği kullanılır?",
        codeTemplate: "element.style.____",
        correctAnswers: ["backgroundColor"],
        options: ["background-color", "background", "backgroundColor"],
      )
    ]
  },
  "Olayları Dinleme (addEventListener)": {
    "parts": [
      {"text": "Web sayfalarını interaktif yapan en önemli şey 'olaylar'dır (events). Bir butona tıklama, fareyi bir resmin üzerine getirme, klavyede bir tuşa basma gibi..."},
      {"text": "JavaScript'in bu olayları 'dinlemesini' ve olay gerçekleştiğinde belirli bir kod bloğunu (bir fonksiyonu) çalıştırmasını sağlayabiliriz."},
      {"text": "Bunun için `addEventListener()` metodu kullanılır."},
      {"text": "Bu metot en az iki parametre alır: 1) Dinlenecek olayın adı (string olarak, örn: 'click'). 2) Olay gerçekleştiğinde çalışacak olan fonksiyon (callback fonksiyonu)."},
      {
        "text": "Bir butona tıklama olayını dinleme:",
        "code": "const myButton = document.querySelector(\"#myButton\");\n\nmyButton.addEventListener('click', function() {\n  alert(\"Butona tıklandı!\");\n});",
        "code_explanation": "Bu kod, `myButton` id'li elemana her tıklandığında bir uyarı penceresi gösterir."
      }
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir butona tıklama gibi bir kullanıcı eylemini yakalamak için hangi metot kullanılır?",
        options: ["listenForEvent()", "attachEvent()", "addEventListener()"],
        correctAnswerIndex: 2,
      ),
      MultipleChoiceQuestion(
        questionText: "`addEventListener` metodunda, olay gerçekleştiğinde çalışan fonksiyona ne ad verilir?",
        options: ["Parametre", "Callback Fonksiyonu", "Return Değeri"],
        correctAnswerIndex: 1,
      ),
      CodeCompletionQuestion(
        questionText: "`btn` adlı bir butona 'click' olayını dinlemek için kodu tamamlayın.",
        codeTemplate: "btn.addEventListener('___', myFunction);",
        correctAnswers: ["click"],
        options: ["onclick", "clicked", "click"],
      )
    ]
  },

// BÖLÜM 8: Asenkron JavaScript
  "Asenkron Programlama Nedir?": {
    "parts": [
      {"text": "Normalde JavaScript kodu 'senkron' (synchronous) çalışır. Yani, her satır bir öncekinin bitmesini bekler."},
      {
        "text": "Senkron Çalışma Sorunu:",
        "code": "console.log(\"İlk işlem\");\nalert(\"Bu uyarı bitmeden alttaki kod çalışmaz!\"); // Kod burada kilitlenir\nconsole.log(\"İkinci işlem\");",
        "code_explanation": "Uyarı kutusunu kapatana kadar 'İkinci işlem' konsola yazılmaz. Buna 'blocking' (engelleme) denir."
      },
      {"text": "'Asenkron' (asynchronous) programlama, bu engellemeyi önler. Uzun süren işlemlerin (örneğin internetten veri çekme) arka planda başlamasını ve kodun geri kalanının çalışmaya devam etmesini sağlar."},
      {"text": "İşlem bittiğinde ise bir fonksiyon aracılığıyla bize haber verir. Böylece web sayfası donmaz ve kullanıcı etkileşime devam edebilir."},
      {"text": "Kısacası Asenkron: 'Sen bu işe başla, bitince bana haber ver, ben o sırada başka işler yapıyorum.' demektir."}
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir kod satırının, bir üstteki satırın işinin bitmesini beklemesine ne denir?",
        options: ["Asenkron çalışma", "Senkron çalışma", "Paralel çalışma"],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "Asenkron programlamanın temel amacı nedir?",
        options: ["Kodu daha karmaşık hale getirmek", "Uzun süren işlemlerin programı engellemesini (blocking) önlemek", "Tüm işlemleri aynı anda bitirmek"],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "İnternetten veri indirmek gibi bir işlem için hangi yaklaşım daha uygundur?",
        options: ["Senkron", "Asenkron", "Fark etmez"],
        correctAnswerIndex: 1,
      )
    ]
  },
  "setTimeout ve setInterval": {
    "parts": [
      {"text": "Asenkron çalışmayı anlamak için en basit iki fonksiyon `setTimeout` ve `setInterval`'dır."},
      {"text": "`setTimeout`, bir fonksiyonu belirtilen bir süre (milisaniye cinsinden) sonra SADECE BİR KEZ çalıştırmak için kullanılır."},
      {
        "text": "`setTimeout` örneği:",
        "code": "console.log(\"Merhaba!\");\n\nsetTimeout(function() {\n  console.log(\"2 saniye sonra gelen mesaj\");\n}, 2000); // 2000ms = 2 saniye\n\nconsole.log(\"Görüşürüz!\");",
        "code_explanation": "Çıktı sırası şöyledir: Merhaba, Görüşürüz, (2 sn sonra) 2 saniye sonra gelen mesaj. Kod beklememiştir!"
      },
      {"text": "`setInterval` ise bir fonksiyonu belirtilen aralıklarla SÜREKLİ olarak tekrar tekrar çalıştırır."},
      {
        "text": "`setInterval` örneği:",
        "code": "let sayac = 0;\n\nsetInterval(function() {\n  sayac++;\n  console.log(\"Sayı: \" + sayac);\n}, 1000); // Her 1 saniyede bir çalışır",
        "code_explanation": "Bu kod, durdurulana kadar her saniye konsola artan bir sayı yazdıracaktır."
      }
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir işlemi 3 saniye gecikmeyle sadece bir kez yapmak için hangisi kullanılır?",
        options: ["setInterval(..., 3000)", "setTimeout(..., 3)", "setTimeout(..., 3000)"],
        correctAnswerIndex: 2,
      ),
      MultipleChoiceQuestion(
        questionText: "Ekranda saati her saniye güncellemek gibi tekrarlı bir iş için hangisi daha uygundur?",
        options: ["setInterval", "setTimeout", "requestAnimationFrame"],
        correctAnswerIndex: 0,
      ),
      CodeCompletionQuestion(
        questionText: "Bir uyarıyı 5 saniye sonra gösterecek kodu tamamlayın.",
        codeTemplate: "___(function() {\n  alert(\"Süre doldu!\");\n}, 5000);",
        correctAnswers: ["setTimeout"],
        options: ["setInterval", "setTimeout", "delay"],
      )
    ]
  },
  "Promise Yapısı": {
    "parts": [
      {"text": "Asenkron işlemlerin sonucunu daha yönetilebilir bir şekilde ele almak için 'Promise' (Söz) adı verilen bir yapı kullanılır."},
      {"text": "Bir Promise, gelecekte tamamlanacak bir işlemin sonucunu temsil eden bir objedir."},
      {"text": "Bir Promise'in 3 durumu olabilir: `pending` (beklemede), `fulfilled` (başarıyla tamamlandı), `rejected` (hata ile sonuçlandı)."},
      {"text": "Bir asenkron işlem (örn: veri indirme) başarıyla bittiğinde, Promise 'fulfilled' durumuna geçer ve sonucu `.then()` metodu ile yakalarız."},
      {
        "text": "Başarılı durumu yakalama:",
        "code": "fetch('https://api.example.com/data')\n  .then(function(response) {\n    // İşlem başarılı, gelen yanıt 'response' içinde\n    console.log(\"Veri geldi!\");\n  });",
        "code_explanation": "`fetch` bir Promise döndürür. İşlem bitince `.then` içindeki fonksiyon çalışır."
      },
      {"text": "Eğer işlem sırasında bir hata oluşursa, Promise 'rejected' durumuna geçer ve hatayı `.catch()` metodu ile yakalarız."},
      {
        "text": "Hata durumunu yakalama:",
        "code": "fetch('https://api.example.com/data')\n  .then(response => console.log(\"Başarılı\"))\n  .catch(function(error) {\n    // İşlem başarısız, hata 'error' içinde\n    console.error(\"Hata oluştu!\", error);\n  });",
        "code_explanation": "`.catch` bloğu, ağ hataları gibi sorunları yakalamak için hayati öneme sahiptir."
      }
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir Promise'in işlemin henüz bitmediği durumu hangisidir?",
        options: ["fulfilled", "rejected", "pending"],
        correctAnswerIndex: 2,
      ),
      MultipleChoiceQuestion(
        questionText: "Başarıyla tamamlanan bir Promise'in sonucunu işlemek için hangi metot kullanılır?",
        options: [".catch()", ".then()", ".finally()"],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "Asenkron bir işlem sırasında oluşan hatayı yakalamak için hangi metot kullanılır?",
        options: [".catch()", ".then()", ".error()"],
        correctAnswerIndex: 0,
      )
    ]
  },
  "async/await Kullanımı": {
    "parts": [
      {"text": "Promise'leri `.then()` ve `.catch()` zincirleriyle kullanmak bazen karmaşık görünebilir."},
      {"text": "`async/await` sözdizimi, asenkron kodu neredeyse senkron gibi yazmamızı sağlayan modern bir yöntemdir. Aslında arka planda hala Promise'leri kullanır."},
      {"text": "Kural 1: `await` kelimesini sadece `async` ile işaretlenmiş bir fonksiyonun içinde kullanabilirsiniz."},
      {"text": "Kural 2: `await` kelimesi, bir Promise'in önüne konulur. JavaScript'in o satırda Promise'in sonucunu beklemesini sağlar."},
      {
        "text": "`.then()` yerine `async/await` kullanımı:",
        "code": "// Önce: \nfetch(url).then(response => console.log(response));\n\n// Sonra:\nasync function fetchData() {\n  const response = await fetch(url);\n  console.log(response);\n}",
        "code_explanation": "`await fetch(url)` ifadesi, `fetch` işlemi bitene kadar fonksiyonun o satırda duraklamasını sağlar. Sonuç doğrudan `response` değişkenine atanır."
      },
      {"text": "Hata yakalamak için ise bildiğimiz `try...catch` bloğunu kullanırız. Bu, kodu daha da okunaklı hale getirir."},
      {
        "text": "`try...catch` ile hata yakalama:",
        "code": "async function fetchData() {\n  try {\n    const response = await fetch(url);\n    const data = await response.json();\n    console.log(data);\n  } catch (error) {\n    console.error(\"Hata yakalandı:\", error);\n  }\n}",
        "code_explanation": "Asenkron kod `try` bloğuna yazılır. Bir hata olursa, program `catch` bloğuna atlar."
      }
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "`await` anahtar kelimesini kullanabilmek için fonksiyonun başına ne eklenmelidir?",
        options: ["promise", "async", "function*"],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "`async/await` ile hata yakalamak için en yaygın kullanılan yapı hangisidir?",
        options: [".catch() metodu", "if-else bloğu", "try...catch bloğu"],
        correctAnswerIndex: 2,
      ),
      CodeCompletionQuestion(
        questionText: "Promise döndüren `getUser()` fonksiyonunun sonucunu bekleyip `user` değişkenine atayan kodu tamamlayın.",
        codeTemplate: "const user = ___ getUser();",
        correctAnswers: ["await"],
        options: ["async", "wait", "await"],
      )
    ]
  },

// BÖLÜM 9: Mini Proje
  "Proje: İnteraktif Yapılacaklar Listesi": {
    "parts": [
      {"text": "Tebrikler! Artık temel JavaScript bilgilerini bir araya getirip küçük bir proje yapmaya hazırsınız."},
      {"text": "Projemiz: Kullanıcının bir şeyler yazıp butona bastığında listeye yeni maddeler ekleyen bir 'Yapılacaklar Listesi'."},
      {"text": "Adım 1: HTML Elementlerini Seçmek. Önce ihtiyacımız olan input, button ve liste (`<ul>`) elemanlarını `querySelector` ile seçeceğiz."},
      {
        "text": "Adım 1 Kodu:",
        "code": "const taskInput = document.querySelector(\"#taskInput\");\nconst addButton = document.querySelector(\"#addButton\");\nconst taskList = document.querySelector(\"#taskList\");",
        "code_explanation": "Gerekli tüm DOM elemanlarını değişkenlere atadık."
      },
      {"text": "Adım 2: Olayı Dinlemek. Butona tıklandığında bir fonksiyonun çalışması için `addEventListener` kullanacağız."},
      {
        "text": "Adım 2 Kodu:",
        "code": "addButton.addEventListener('click', function() {\n  // Tüm mantık buraya gelecek...\n});",
        "code_explanation": "Tıklama olayını yakaladık, şimdi içini dolduracağız."
      },
      {"text": "Adım 3: Yeni Eleman Oluşturup Eklemek. Fonksiyonun içinde, input'taki değeri alacak, yeni bir `<li>` elemanı oluşturacak, metnini ayarlayacak ve `<ul>` listesine ekleyeceğiz."},
      {
        "text": "Adım 3 Kodu:",
        "code": "const taskText = taskInput.value; // Input'taki değeri al\nconst newTask = document.createElement('li'); // Yeni <li> oluştur\nnewTask.innerText = taskText; // Metnini ayarla\ntaskList.appendChild(newTask); // Listeye ekle",
        "code_explanation": "`createElement` yeni bir DOM düğümü yaratır, `appendChild` ise onu başka bir düğümün içine ekler."
      }
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "JavaScript ile dinamik olarak yeni bir HTML elemanı (`<p>`, `<li>` vb.) oluşturmak için hangi metot kullanılır?",
        options: ["document.new()", "document.createElement()", "document.build()"],
        correctAnswerIndex: 1,
      ),
      MultipleChoiceQuestion(
        questionText: "Oluşturulan bir elemanı, var olan bir listenin sonuna eklemek için hangi metot kullanılır?",
        options: ["appendChild()", "insertLast()", "attach()"],
        correctAnswerIndex: 0,
      ),
      MultipleChoiceQuestion(
        questionText: "Bir `input` elemanının içindeki metin değerini almak için hangi özellik kullanılır?",
        options: ["innerText", "innerHTML", "value"],
        correctAnswerIndex: 2,
      )
    ]
  },
};