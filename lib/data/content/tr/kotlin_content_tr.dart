// lib/data/content/tr/kotlin_content_tr.dart

import 'package:learn_code/models/quiz_models.dart';

// kotlinContentTr değişkeni, Kotlin derslerinin tüm Türkçe içeriğini barındırır.
final Map<String, Map<String, dynamic>> kotlinContentTr = {
  // =======================================================================
  // BÖLÜM 1: GİRİŞ
  // =======================================================================

  "Kotlin nedir?": {
    "parts": [
      {"text": "Kotlin dünyasına hoş geldin! Bu yolculukta modern bir dilin gücünü keşfedeceğiz."},
      {"text": "Kotlin, JetBrains tarafından geliştirilen, Google'ın Android uygulama geliştirme için resmi olarak desteklediği modern bir programlama dilidir."},
      {"text": "En büyük avantajlarından biri, Java ile %100 uyumlu olmasıdır. Bu, milyonlarca Java kütüphanesini Kotlin projelerinde sorunsuzca kullanabileceğin anlamına gelir."},
      {"text": "Ayrıca, daha güvenli ve daha kısa kod yazmayı sağlayan (null-safety gibi) harika özelliklere sahiptir. Az kodla çok iş yapacağız!"},
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Aşağıdakilerden hangisi Kotlin'in en önemli özelliklerinden biri DEĞİLDİR?",
        options: ["Java ile %100 uyumlu olması", "Google tarafından Android için desteklenmesi", "Sadece web siteleri için kullanılması"],
        correctAnswerIndex: 2,
      ),
      MultipleChoiceQuestion(
        questionText: "Kotlin'i geliştiren şirket hangisidir?",
        options: ["Google", "Microsoft", "JetBrains"],
        correctAnswerIndex: 2,
      ),
    ]
  },

  "Kurulum (IntelliJ / Android Studio)": {
    "parts": [
      {"text": "Kod yazmaya başlamak için bir 'Entegre Geliştirme Ortamı'na (IDE) ihtiyacımız var."},
      {"text": "Kotlin için en popüler IDE'ler, yine JetBrains tarafından geliştirilen IntelliJ IDEA ve Android uygulamaları için kullanılan Android Studio'dur."},
      {"text": "IntelliJ IDEA'nın 'Community' sürümü tamamen ücretsizdir ve Kotlin öğrenmek için harikadır."},
      {"text": "Ayrıca, hızlıca denemeler yapmak istersen, JetBrains'in web sitesindeki 'Kotlin Playground'u da kullanabilirsin."},
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Kotlin öğrenmek için önerilen ücretsiz IDE hangisidir?",
        options: ["Visual Studio Code", "IntelliJ IDEA Community Edition", "Sublime Text"],
        correctAnswerIndex: 1,
      ),
    ]
  },

  "'Merhaba Kotlin'": {
    "parts": [
      {"text": "Ve işte başlıyoruz! Geleneksel 'Merhaba, Dünya' programımızı yazalım."},
      {"text": "Kotlin'de bir programın başlangıç noktası `main` fonksiyonudur. Kodlarımız bu fonksiyonun içinden çalışmaya başlar."},
      {"text": "Ekrana bir şeyler yazdırmak için `println()` fonksiyonunu kullanırız. Parantez içine ne yazarsak, onu bir alt satıra geçerek ekrana basar."},
      {
        "text": "İşte ilk Kotlin kodumuz:",
        "code": "fun main() {\n  println(\"Merhaba, Kotlin!\")\n}",
        "code_explanation": "Bu kod, program çalıştığında ekrana 'Merhaba, Kotlin!' metnini yazdıracaktır."
      }
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Kotlin'de ekrana bir satır yazı yazdırmak için hangi fonksiyon kullanılır?",
        options: ["printline()", "log()", "println()"],
        correctAnswerIndex: 2,
      ),
      CodeCompletionQuestion(
        questionText: "Bir Kotlin programının başlangıç noktasını tanımlayan fonksiyonu tamamla.",
        codeTemplate: "___ main() {\n  // Kodlar buraya gelecek\n}",
        correctAnswers: ["fun"],
        options: ["function", "def", "fun"],
      ),
      CodeCompletionQuestion(
        questionText: "Ekrana \"Kotlin öğreniyorum\" yazdıran kodu tamamla.",
        codeTemplate: "fun main() {\n  ___(\"Kotlin öğreniyorum\")\n}",
        correctAnswers: ["println"],
        options: ["println", "print", "readLine"],
      ),
    ]
  },

  // =======================================================================
  // BÖLÜM 2: TEMELLER
  // =======================================================================

  "Değişkenler (val, var)": {
    "parts": [
      {"text": "Verileri saklamak için değişkenleri kullanırız. Kotlin'de iki tür değişken anahtar kelimesi vardır: `val` ve `var`."},
      {"text": "`val` (value - değer): Değiştirilemez (immutable) bir değişken tanımlar. Bir kere değer atandıktan sonra, o değeri bir daha değiştiremezsin. Tıpkı bir sabit gibi."},
      {"text": "`var` (variable - değişken): Değiştirilebilir (mutable) bir değişken tanımlar. Değerini programın ilerleyen adımlarında istediğin zaman değiştirebilirsin."},
      {
        "text": "Genel kural: Değiştirmeyeceğin her şey için `val` kullan. Bu, kodunu daha güvenli ve öngörülebilir yapar.",
        "code": "fun main() {\n  val pi = 3.14 // Değiştirilemez\n  var skor = 0  // Değiştirilebilir\n\n  // pi = 3.1415 // Bu satır HATA verir!\n  skor = 100 // Bu satır sorunsuz çalışır\n\n  println(pi)\n  println(skor)\n}",
        "code_explanation": "`pi` sayısı `val` ile tanımlandığı için yeni bir değer atanamazken, `skor` `var` ile tanımlandığı için güncellenebildi."
      }
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "`val` ve `var` arasındaki temel fark nedir?",
        options: ["val sayılar, var metinler içindir", "val değiştirilemez, var değiştirilebilir", "val global, var lokal değişkendir"],
        correctAnswerIndex: 1,
      ),
      CodeCompletionQuestion(
        questionText: "Değeri sonradan değiştirilebilecek `yas` adında bir değişken tanımla.",
        codeTemplate: "___ yas = 25",
        correctAnswers: ["var"],
        options: ["val", "const", "var"],
      ),
      CodeCompletionQuestion(
        questionText: "Değeri asla değişmeyecek olan `dogumYili` adında bir değişken tanımla.",
        codeTemplate: "___ dogumYili = 1999",
        correctAnswers: ["val"],
        options: ["var", "val", "let"],
      ),
      CodeCompletionQuestion(
        questionText: "`kullaniciAdi` adında, değeri \"admin\" olan değiştirilemez bir değişken tanımla.",
        codeTemplate: "___ kullaniciAdi = \"admin\"",
        correctAnswers: ["val"],
        options: ["var", "val", "const"],
      ),
    ]
  },

  "Veri Türleri ve String Şablonları": {
    "parts": [
  {"text": "Değişkenlerimiz farklı türde veriler tutabilir. Kotlin'de temel veri türleri şunlardır: `Int` (tam sayılar), `Double` (ondalıklı sayılar), `Boolean` (true/false), `String` (metinler)."},
  {"text": "Kotlin genellikle atanan değere bakarak türü otomatik olarak anlar (Type Inference)."},
  {"text": "Metinler (String) içinde değişkenleri kullanmak çok kolaydır. Buna 'String Şablonları' (String Templates) denir."},
  {
    "text": "Bir değişkeni metin içinde kullanmak için başına `\$` işareti koyman yeterlidir. Eğer bir işlem yapacaksan `\${...}` kullanırsın.",
    "code": "fun main() {\n  val isim = \"Ayşe\"\n  val yas = 28\n\n  println(\"Kullanıcının adı: \$isim\")\n  println(\"\$isim, \${yas + 1} yaşında olacak.\")\n}",
    "code_explanation": "`\$isim` ifadesi doğrudan \"Ayşe\" değerini, `\${yas + 1}` ise 29 sonucunu metnin içine yerleştirdi."
  }
],
"quiz": [
MultipleChoiceQuestion(
questionText: "Bir `String` içinde değişken değeri kullanmak için hangi sembol kullanılır?",
options: ["%", "#", "\$"],
correctAnswerIndex: 2,
),
CodeCompletionQuestion(
questionText: "`puan` değişkeninin değerini \"Puanınız: ...\" şeklinde ekrana yazdıran kodu tamamla.",
codeTemplate: "val puan = 95\nprintln(\"Puanınız: ___\")",
correctAnswers: ["\$puan"],
options: ["puan", "\$puan", "&puan"],
),
CodeCompletionQuestion(
questionText: "İki sayının toplamını metin içinde gösteren kodu tamamla.",
codeTemplate: "val a = 10\nval b = 20\nprintln(\"Toplam: ___{a + b}\")",
correctAnswers: ["\$"],
options: ["#", "\$", "%"],
),
CodeCompletionQuestion(
questionText: "Doğru/Yanlış değeri tutan `Boolean` tipinde bir değişken tanımla.",
codeTemplate: "val girisYapildi: ___ = true",
correctAnswers: ["Boolean"],
options: ["String", "Int", "Boolean"],
),
]
},

"println ve readLine": {
"parts": [
{"text": "`println()` ile ekrana çıktı vermeyi zaten gördük."},
{"text": "Peki kullanıcıdan bilgi almak için ne yapacağız? Cevap: `readLine()`."},
{"text": "`readLine()` fonksiyonu, kullanıcı konsola bir metin yazıp 'Enter' tuşuna basana kadar programı bekletir."},
{"text": "ÇOK ÖNEMLİ: `readLine()` her zaman bir `String?` (nullable String) döndürür. Yani ya bir metin ya da `null` dönebilir. Şimdilik `!!` ile `null` olmayacağını varsayalım."},
{
"text": "Eğer aldığımız girdiyle matematiksel bir işlem yapacaksak, onu `toInt()` gibi fonksiyonlarla sayıya çevirmemiz gerekir.",
"code": "fun main() {\n  print(\"Adınız nedir? \") // println'den farkı alt satıra geçmez\n  val isim = readLine()!!\n\n  print(\"Yaşınız kaç? \")\n  val yas = readLine()!!.toInt()\n\n  println(\"Merhaba \$isim, demek \$yas yaşındasın!\")\n}",
"code_explanation": "Kullanıcıdan `readLine()` ile adını ve yaşını aldık. Yaşı sayıya çevirmek için `.toInt()` kullandık ve sonra ekrana yazdırdık."
}
],
"quiz": [
MultipleChoiceQuestion(
questionText: "Kullanıcıdan konsol aracılığıyla metin girdisi almak için hangi fonksiyon kullanılır?",
options: ["println()", "read()", "readLine()"],
correctAnswerIndex: 2,
),
CodeCompletionQuestion(
questionText: "Kullanıcıdan şehir adını alıp `sehir` değişkenine atayan kodu tamamla.",
codeTemplate: "println(\"Hangi şehirde yaşıyorsun?\")\nval sehir = ___!!",
correctAnswers: ["readLine()"],
options: ["readLine()", "getInput()", "println()"],
),
CodeCompletionQuestion(
questionText: "Kullanıcıdan alınan metin halindeki sayıyı `Int` tipine çeviren kodu tamamla.",
codeTemplate: "val sayiStr = \"25\"\nval sayiInt = sayiStr.___()",
correctAnswers: ["toInt"],
options: ["toInt", "parseInteger", "asInt"],
),
CodeCompletionQuestion(
questionText: "Kullanıcıdan iki sayı alıp toplamlarını yazdıran kodu tamamla.",
codeTemplate: "val sayi1 = readLine()!!.toInt()\nval sayi2 = readLine()!!.toInt()\nprintln(sayi1 ___ sayi2)",
correctAnswers: ["+"],
options: ["&", "+", "plus"],
),
]
},

// =======================================================================
// BÖLÜM 3: KOŞULLAR VE DÖNGÜLER
// =======================================================================

"if-else İfadeleri": {
"parts": [
{"text": "Programlarımızın karar vermesini sağlamak için `if-else` kullanırız."},
{"text": "Bir koşul `true` ise `if` bloğu, `false` ise (ve varsa) `else` bloğu çalışır."},
{"text": "Kotlin'de `if-else` aynı zamanda bir 'ifade' (expression) olarak da kullanılabilir. Yani bir değer döndürebilir."},
{
"text": "Bu sayede bir değişkene doğrudan `if-else` bloğunun sonucunu atayabiliriz. Bu, kodu çok daha kısa ve okunaklı yapar.",
"code": "fun main() {\n  val yas = 20\n\n  // Klasik if-else kullanımı\n  if (yas >= 18) {\n    println(\"Reşitsiniz.\")\n  } else {\n    println(\"Reşit değilsiniz.\")\n  }\n\n  // İfade (expression) olarak if-else kullanımı\n  val durum = if (yas >= 18) \"Reşit\" else \"Reşit değil\"\n  println(\"Durumunuz: \$durum\")\n}",
"code_explanation": "İkinci örnekte, `if-else` bloğu bir sonuç (`\"Reşit\"` veya `\"Reşit değil\"`) üretti ve bu sonuç doğrudan `durum` değişkenine atandı."
}
],
"quiz": [
MultipleChoiceQuestion(
questionText: "Kotlin'de `if-else` yapısının diğer birçok dilden farklı olan özelliği nedir?",
options: ["Sadece `if` kullanılabilir", "Bir değer döndürebilir (expression)", "Parantez kullanmaz"],
correctAnswerIndex: 1,
),
CodeCompletionQuestion(
questionText: "Sayı pozitifse \"Pozitif\", değilse \"Pozitif Değil\" yazan kodu tamamla.",
codeTemplate: "val sayi = 5\nif (sayi > 0) {\n  println(\"Pozitif\")\n} ___ {\n  println(\"Pozitif Değil\")\n}",
correctAnswers: ["else"],
options: ["otherwise", "then", "else"],
),
CodeCompletionQuestion(
questionText: "`if-else` yapısını ifade olarak kullanarak `sonuc` değişkenine değer ata.",
codeTemplate: "val puan = 55\nval sonuc = if (puan >= 50) \"Geçti\" ___ \"Kaldı\"",
correctAnswers: ["else"],
options: ["or", "else", "then"],
),
CodeCompletionQuestion(
questionText: "Bir sayının çift mi tek mi olduğunu kontrol eden koşulu yaz.",
codeTemplate: "val sayi = 7\nif (sayi % 2 ___ 0) {\n  println(\"Çift\")\n}",
correctAnswers: ["=="],
options: ["=", "===", "=="],
),
]
},

"when İfadesi (switch'in gücü)": {
"parts": [
{"text": "Kotlin'de `switch-case` yapısının çok daha güçlü ve esnek bir versiyonu vardır: `when`."},
{"text": "`when`, bir değişkenin değerine göre farklı kod bloklarını çalıştırmanızı sağlar."},
{"text": "`when` de `if` gibi bir ifade olarak kullanılabilir ve bir sonuç döndürebilir."},
{
"text": "`when`'in bazı harika yetenekleri vardır: Virgülle birden fazla koşulu birleştirebilir, `in` ile bir aralık kontrolü yapabilir ve `is` ile tip kontrolü yapabilirsiniz.",
"code": "fun main() {\n  val not = 3\n\n  when (not) {\n    1 -> println(\"Çok Kötü\")\n    2 -> println(\"Kötü\")\n    3 -> println(\"Orta\")\n    4 -> println(\"İyi\")\n    5 -> println(\"Pekiyi\")\n    else -> println(\"Geçersiz not\")\n  }\n\n  // İfade olarak when kullanımı\n  val mesaj = when (not) {\n    1, 2 -> \"Başarısız\"\n    in 3..5 -> \"Başarılı\"\n    else -> \"Bilinmiyor\"\n  }\n  println(mesaj)\n}",
"code_explanation": "İlk `when` bloğu `not`'un değerine göre ekrana bir yazı yazdı. İkinci `when` bloğu ise `not`'un değerine göre bir `String` sonucu üretti ve bu `mesaj` değişkenine atandı."
}
],
"quiz": [
MultipleChoiceQuestion(
questionText: "Kotlin'de `switch-case` yerine kullanılan daha güçlü yapı hangisidir?",
options: ["switch", "check", "when"],
correctAnswerIndex: 2,
),
CodeCompletionQuestion(
questionText: "`when` içinde, eşleşen durum olmadığında çalışacak olan varsayılan blok hangisidir?",
codeTemplate: "when (gun) {\n  \"Pazartesi\" -> println(\"Hafta başı\")\n  ___ -> println(\"Diğer gün\")\n}",
correctAnswers: ["else"],
options: ["default", "else", "any"],
),
CodeCompletionQuestion(
questionText: "Bir komutun hem \"evet\" hem de \"e\" olması durumunu tek bir `when` satırında kontrol et.",
codeTemplate: "when (cevap) {\n  \"evet\", ___ -> println(\"Onaylandı\")\n}",
correctAnswers: ["\"e\""],
options: ["\"e\"", "or \"e\"", "|| \"e\""],
),
CodeCompletionQuestion(
questionText: "Bir sayının 1 ile 10 arasında olup olmadığını `when` ile kontrol et.",
codeTemplate: "val sayi = 7\nwhen (sayi) {\n  ___ 1..10 -> println(\"Aralıkta\")\n}",
correctAnswers: ["in"],
options: ["is", "in", "between"],
),
]
},

"for ve while Döngüleri": {
"parts": [
{"text": "Tekrar eden işler için döngüleri kullanırız. Kotlin'de `for` ve `while` döngüleri bulunur."},
{"text": "`for` döngüsü, bir koleksiyon (liste gibi) veya bir aralık (range) üzerindeki her eleman için tekrarlanır."},
{"text": "`while` döngüsü ise, belirli bir koşul `true` olduğu sürece tekrarlanır. Koşul `false` olduğunda döngü durur."},
{
"text": "Sonsuz döngüye girmemek için `while` döngüsü içindeki koşulu değiştiren bir mekanizma kurmak çok önemlidir.",
"code": "fun main() {\n  // for döngüsü\n  val meyveler = listOf(\"Elma\", \"Muz\", \"Çilek\")\n  for (meyve in meyveler) {\n    println(meyve)\n  }\n\n  // while döngüsü\n  var sayac = 5\n  while (sayac > 0) {\n    println(\"Geri sayım: \$sayac\")\n    sayac-- // sayac = sayac - 1\n  }\n}",
"code_explanation": "`for` döngüsü `meyveler` listesindeki her elemanı sırayla ekrana yazdı. `while` döngüsü ise `sayac` 0'dan büyük olduğu sürece çalıştı ve her adımda sayacı bir azalttı."
}
],
"quiz": [
MultipleChoiceQuestion(
questionText: "Bir liste üzerindeki tüm elemanları gezmek için en uygun döngü hangisidir?",
options: ["while", "for", "do-while"],
correctAnswerIndex: 1,
),
CodeCompletionQuestion(
questionText: "1'den 5'e kadar olan sayıları ekrana yazdıran `for` döngüsünü tamamla.",
codeTemplate: "for (i in 1___5) {\n  println(i)\n}",
correctAnswers: [".."],
options: ["-", "to", ".."],
),
CodeCompletionQuestion(
questionText: "Bir koşul doğru olduğu sürece çalışan döngü hangisidir?",
codeTemplate: "var x = 0\n___(x < 3) {\n  println(x)\n  x++\n}",
correctAnswers: ["while"],
options: ["for", "while", "repeat"],
),
CodeCompletionQuestion(
questionText: "`isimler` listesindeki her bir ismi `for` döngüsü ile ekrana yazdır.",
codeTemplate: "val isimler = listOf(\"Ali\", \"Veli\")\nfor (isim ___ isimler) {\n  println(isim)\n}",
correctAnswers: ["in"],
options: ["in", "of", ":"],
),
]
},

"Aralıklar (Ranges)": {
"parts": [
{"text": "Kotlin, sayılarla çalışmayı kolaylaştıran 'Aralık' (Range) konseptine sahiptir."},
{"text": "`1..5`: 1'den 5'e kadar olan tüm sayıları içerir (1 ve 5 dahil)."},
{"text": "`1 until 5`: 1'den 5'e kadar olan sayıları içerir (5 dahil DEĞİL). Yani 1, 2, 3, 4."},
{"text": "`5 downTo 1`: 5'ten 1'e kadar geriye doğru sayar."},
{
"text": "`step` ile atlama miktarını belirleyebilirsiniz. `1..10 step 2` ifadesi 1, 3, 5, 7, 9 sayılarını üretir.",
"code": "fun main() {\n  for (i in 1..4) { // 1, 2, 3, 4\n    print(\"\$i \")\n  }\n  println()\n\n  for (i in 10 downTo 7) { // 10, 9, 8, 7\n    print(\"\$i \")\n  }\n  println()\n\n  for (i in 0..8 step 2) { // 0, 2, 4, 6, 8\n    print(\"\$i \")\n  }\n}",
"code_explanation": "`..`, `downTo` ve `step` kullanarak farklı aralıklar oluşturduk ve bu aralıkları `for` döngüsü ile gezdik."
}
],
"quiz": [
MultipleChoiceQuestion(
questionText: "Bitiş değerini dahil ETMEYEN aralık operatörü hangisidir?",
options: ["..", "downTo", "until"],
correctAnswerIndex: 2,
),
CodeCompletionQuestion(
questionText: "10'dan 1'e doğru geriye sayan bir aralık oluştur.",
codeTemplate: "val aralik = 10 ___ 1",
correctAnswers: ["downTo"],
options: ["..", "until", "downTo"],
),
CodeCompletionQuestion(
questionText: "0'dan 100'e kadar 10'ar 10'ar sayan bir aralık oluştur.",
codeTemplate: "val aralik = 0..100 ___ 10",
correctAnswers: ["step"],
options: ["jump", "step", "by"],
),
CodeCompletionQuestion(
questionText: "1, 2, 3, 4, 5 sayılarını içeren aralığı oluştur.",
codeTemplate: "val aralik = 1___5",
correctAnswers: [".."],
options: ["..", "to", "until"],
),
]
},

// ... Kalan bölümler bu formatta devam edecek ...
// (Diğer bölümleri de aşağıya ekliyorum)
// =======================================================================
// BÖLÜM 4: FONKSİYONLAR
// =======================================================================
"Fonksiyon Tanımı": {
"parts": [
{"text": "Fonksiyonlar, belirli bir işi yapan ve tekrar tekrar çağırılabilen kod bloklarıdır."},
{"text": "Bu, kod tekrarını önler (DRY - Don't Repeat Yourself) ve programımızı daha modüler hale getirir."},
{"text": "Kotlin'de bir fonksiyon `fun` anahtar kelimesi ile başlar, ardından fonksiyonun adı, parametre parantezleri `()` ve (varsa) dönüş tipi gelir."},
{
"text": "Bir fonksiyonun gövdesi süslü parantezler `{}` içine yazılır.",
"code": "fun selamla() {\n  println(\"Merhaba, Kotlin fonksiyonlarına hoş geldin!\")\n}\n\nfun main() {\n  selamla() // Fonksiyonu burada çağırıyoruz\n}",
"code_explanation": "`selamla` adında bir fonksiyon tanımladık ve `main` fonksiyonu içinden onu ismiyle çağırdık."
}
],
"quiz": [
MultipleChoiceQuestion(
questionText: "Kotlin'de fonksiyon tanımlamak için hangi anahtar kelime kullanılır?",
options: ["function", "fun", "def"],
correctAnswerIndex: 1,
),
CodeCompletionQuestion(
questionText: "`toplama_yap` adında, iki tam sayı (`Int`) parametresi alan ve bir tam sayı döndüren bir fonksiyon başlığı yaz.",
codeTemplate: "___ toplama_yap(sayi1: Int, sayi2: Int): ___ { ... }",
correctAnswers: ["fun", "Int"],
options: ["fun", "Int", "def", "Integer"],
),
CodeCompletionQuestion(
questionText: "Parametresiz ve geriye değer döndürmeyen `mesajGoster` fonksiyonunu tanımla.",
codeTemplate: "___ mesajGoster() {\n  println(\"Mesaj!\")\n}",
correctAnswers: ["fun"],
options: ["def", "fun", "function"],
),
CodeCompletionQuestion(
questionText: "Bir `isim` parametresi alan ve bu ismi ekrana yazdıran fonksiyonu tamamla.",
codeTemplate: "fun merhabaDe(isim: String) {\n  println(\"Merhaba, \$___!\")\n}",
correctAnswers: ["isim"],
options: ["isim", "String", "name"],
),
]
},

"Varsayılan ve İsimli Parametreler": {
"parts": [
{"text": "Kotlin fonksiyonları daha esnek hale getiren harika özelliklere sahiptir: Varsayılan (Default) ve İsimli (Named) Parametreler."},
{"text": "Varsayılan Parametre: Bir parametreye tanım anında `=` ile bir başlangıç değeri verebilirsiniz. Eğer fonksiyonu çağırırken o parametre için bir değer verilmezse, bu varsayılan değer kullanılır."},
{"text": "İsimli Parametre: Bir fonksiyonu çağırırken, argümanların sırasını karıştırmamak veya kodu daha okunaklı yapmak için `parametreAdi = deger` şeklinde argümanları belirtebilirsiniz."},
{
"text": "Bu iki özellik birleştiğinde çok güçlü bir yapı ortaya çıkar.",
"code": "fun kullaniciOlustur(isim: String, aktif: Boolean = true, rol: String = \"Kullanıcı\") {\n  println(\"İsim: \$isim, Rol: \$rol, Aktif: \$aktif\")\n}\n\nfun main() {\n  kullaniciOlustur(\"Ahmet\") // Varsayılan değerler kullanılır\n  kullaniciOlustur(\"Zeynep\", false) // Sıradaki varsayılan değer kullanılır\n  kullaniciOlustur(isim = \"Mehmet\", rol = \"Admin\") // İsimli parametreler\n}",
"code_explanation": "`aktif` ve `rol` parametrelerinin varsayılan değerleri var. Çağrılarda bu esneklikten faydalandık. Özellikle son çağrıda, `aktif` parametresini atlayıp doğrudan `rol`'e isimli olarak değer verdik."
}
],
"quiz": [
MultipleChoiceQuestion(
questionText: "Fonksiyonu çağırırken bir argüman verilmediğinde kullanılacak değere ne denir?",
options: ["Zorunlu Parametre", "İsimli Parametre", "Varsayılan Parametre"],
correctAnswerIndex: 2,
),
CodeCompletionQuestion(
questionText: "`mesaj` parametresine varsayılan olarak \"Merhaba\" değerini ata.",
codeTemplate: "fun goster(mesaj: String ___ \"Merhaba\") {\n  println(mesaj)\n}",
correctAnswers: ["="],
options: [":", "->", "="],
),
CodeCompletionQuestion(
questionText: "Aşağıdaki fonksiyonu, `adet` parametresine 10 değerini isimli olarak atayarak çağır.",
codeTemplate: "fun siparisVer(urun: String, adet: Int) { ... }\nsiparisVer(\"Kalem\", ___ = 10)",
correctAnswers: ["adet"],
options: ["adet", "Int", "sayi"],
),
CodeCompletionQuestion(
questionText: "`puan` parametresini opsiyonel (varsayılan değerli) hale getir.",
codeTemplate: "fun oyuncuEkle(isim: String, puan: Int ___ 0) { ... }",
correctAnswers: ["="],
options: [":", "=", "->"],
),
]
},

"Tek Satırlık Fonksiyonlar": {
"parts": [
{"text": "Eğer bir fonksiyon sadece tek bir işlem yapıp sonuç döndürüyorsa, onu çok daha kısa bir şekilde yazabiliriz."},
{"text": "Bu fonksiyonlara 'Tek Satırlık Fonksiyonlar' (Single-Expression Functions) denir."},
{"text": "Bu yazımda, süslü parantezleri `{}` ve `return` anahtar kelimesini kaldırırız. Fonksiyon gövdesi yerine `=` koyup yapılacak işlemi yazarız."},
{
"text": "Kotlin, eşittirin sağındaki ifadenin sonucuna bakarak fonksiyonun dönüş türünü kendi kendine anlar (type inference).",
"code": "// Standart yazım\nfun topla(a: Int, b: Int): Int {\n    return a + b\n}\n\n// Tek satırlık yazım\nfun carp(a: Int, b: Int) = a * b\n\nfun main() {\n  println(topla(5, 3)) // Çıktı: 8\n  println(carp(5, 3)) // Çıktı: 15\n}",
"code_explanation": "`carp` fonksiyonu, `topla` fonksiyonu ile aynı işi yapan çok daha kısa ve modern bir gösterimdir."
}
],
"quiz": [
MultipleChoiceQuestion(
questionText: "Tek satırlık fonksiyonlarda `return` ve `{}` yerine ne kullanılır?",
options: ["->", "=>", "="],
correctAnswerIndex: 2,
),
CodeCompletionQuestion(
questionText: "Verilen sayının karesini alan tek satırlık bir fonksiyon yaz.",
codeTemplate: "fun kareAl(x: Int) ___ x * x",
correctAnswers: ["="],
options: [":", "=", "->"],
),
CodeCompletionQuestion(
questionText: "İki sayıdan büyük olanı döndüren tek satırlık fonksiyonu tamamla.",
codeTemplate: "fun buyukOlaniBul(a: Int, b: Int) = if (a > b) a ___ b",
correctAnswers: ["else"],
options: ["then", "else", "or"],
),
CodeCompletionQuestion(
questionText: "Bir ismi alıp \"Merhaba, [isim]!\" metnini döndüren tek satırlık fonksiyonu tamamla.",
codeTemplate: "fun selamVer(isim: String) = \"Merhaba, \$___!\"",
correctAnswers: ["isim"],
options: ["isim", "name", "val"],
),
]
},

// =======================================================================
// BÖLÜM 5: KOLEKSİYONLAR
// =======================================================================
"List, Set ve Map": {
"parts": [
{"text": "Birden fazla veriyi bir arada tutmak için koleksiyonları kullanırız. Kotlin'de üç temel koleksiyon türü vardır:"},
{"text": "`List`: Sıralı bir koleksiyondur. Elemanların bir sırası vardır ve aynı elemandan birden fazla olabilir. Ör: `[1, 2, 2, 3]`"},
{"text": "`Set`: Sırasız bir koleksiyondur. Her elemandan sadece bir tane olabilir, tekrar edenlere izin vermez. Ör: `{1, 2, 3}`"},
{"text": "`Map`: Anahtar-değer (key-value) çiftlerinden oluşan bir koleksiyondur. Her anahtar benzersizdir ve bir değere karşılık gelir. Ör: `{\"isim\" to \"Ali\", \"yas\" to 30}`"},
{
"text": "Bu koleksiyonları oluşturmak için `listOf()`, `setOf()`, `mapOf()` gibi hazır fonksiyonlar kullanılır.",
"code": "fun main() {\n  val sayilarListesi = listOf(1, 2, 3, 2) // [1, 2, 3, 2]\n  val sayilarKumesi = setOf(1, 2, 3, 2)   // {1, 2, 3}\n  val kullaniciKarti = mapOf(\"id\" to 1, \"kullanici\" to \"admin\")\n\n  println(sayilarListesi[1]) // 2. elemana erişim -> 2\n  println(sayilarKumesi)     // {1, 2, 3}\n  println(kullaniciKarti[\"kullanici\"]) // anahtar ile değere erişim -> admin\n}",
"code_explanation": "Üç farklı koleksiyon türünü oluşturduk. `setOf` fonksiyonunun tekrar eden `2` değerini otomatik olarak attığına dikkat et."
}
],
"quiz": [
MultipleChoiceQuestion(
questionText: "Tekrar eden elemanlara izin VERMEYEN koleksiyon türü hangisidir?",
options: ["List", "Set", "Map"],
correctAnswerIndex: 1,
),
CodeCompletionQuestion(
questionText: "Anahtar-değer çiftlerini saklamak için hangi koleksiyon kullanılır?",
codeTemplate: "val notlar = ___(\"Matematik\" to 90, \"Fizik\" to 85)",
correctAnswers: ["mapOf"],
options: ["mapOf", "setOf", "listOf"],
),
CodeCompletionQuestion(
questionText: "`renkler` adında bir `List` oluşturan kodu tamamla.",
codeTemplate: "val renkler = ___(\"Kırmızı\", \"Mavi\", \"Yeşil\")",
correctAnswers: ["listOf"],
options: ["arrayListOf", "setOf", "listOf"],
),
CodeCompletionQuestion(
questionText: "`harfler` listesinin ilk elemanına erişen kodu tamamla. (İndeksler 0'dan başlar)",
codeTemplate: "val harfler = listOf('a', 'b', 'c')\nval ilkHarf = harfler[___]",
correctAnswers: ["0"],
options: ["0", "1", "first"],
),
]
},

"Değişmez ve Değişebilir Koleksiyonlar": {
"parts": [
{"text": "Kotlin'de güvenlik ön plandadır. Bu yüzden koleksiyonların iki versiyonu bulunur: Değişmez (Immutable) ve Değişebilir (Mutable)."},
{"text": "Değişmez Koleksiyonlar (`List`, `Set`, `Map`): `listOf`, `setOf`, `mapOf` ile oluşturulurlar. Oluşturulduktan sonra eleman eklenemez, silinemez veya değiştirilemez."},
{"text": "Değişebilir Koleksiyonlar (`MutableList`, `MutableSet`, `MutableMap`): `mutableListOf`, `mutableSetOf`, `mutableMapOf` ile oluşturulurlar. Bunlara sonradan eleman ekleyebilir (`add`), silebilir (`remove`) ve değerleri güncelleyebilirsiniz."},
{
"text": "Genel kural: Eğer bir koleksiyonu sonradan değiştirmeyecekseniz, her zaman değişmez (immutable) versiyonunu kullanın. Bu, beklenmedik hataları önler.",
"code": "fun main() {\n  // Değişebilir bir liste\n  val sehirler = mutableListOf(\"Ankara\", \"İstanbul\")\n  sehirler.add(\"İzmir\") // Eleman ekleme\n  sehirler.remove(\"Ankara\") // Eleman silme\n  sehirler[0] = \"Bursa\" // Eleman değiştirme\n  println(sehirler) // [Bursa, İzmir]\n\n  // Değişmez bir liste (Aşağıdaki kodlar hata verir)\n  // val sabitSehirler = listOf(\"Ankara\", \"İstanbul\")\n  // sabitSehirler.add(\"İzmir\") // HATA!\n}",
"code_explanation": "`mutableListOf` ile oluşturduğumuz listeyi sonradan değiştirebilirken, `listOf` ile oluşturulan bir listeye müdahale edemeyiz."
}
],
"quiz": [
MultipleChoiceQuestion(
questionText: "Oluşturulduktan sonra eleman eklenip çıkarılabilen liste türü hangisidir?",
options: ["List", "Array", "MutableList"],
correctAnswerIndex: 2,
),
CodeCompletionQuestion(
questionText: "İçeriği sonradan değiştirilebilecek bir `Set` oluşturan kodu tamamla.",
codeTemplate: "val numaralar = ___<Int>()",
correctAnswers: ["mutableSetOf"],
options: ["mutableSetOf", "setOf", "hashSetOf"],
),
CodeCompletionQuestion(
questionText: "`isimler` adlı değişebilir listeye \"Ayşe\" ismini ekle.",
codeTemplate: "val isimler = mutableListOf(\"Ali\")\nisimler.___(\"Ayşe\")",
correctAnswers: ["add"],
options: ["add", "push", "append"],
),
CodeCompletionQuestion(
questionText: "`ogrenciler` adlı değişebilir haritadan (map) 101 anahtarını sil.",
codeTemplate: "val ogrenciler = mutableMapOf(101 to \"Ali\", 102 to \"Veli\")\nogrenciler.remove(___)",
correctAnswers: ["101"],
options: ["\"Ali\"", "101", "102"],
),
]
},

"Koleksiyon Fonksiyonları (filter, map)": {
"parts": [
{"text": "Kotlin, koleksiyonlarla çalışmayı aşırı kolaylaştıran harika fonksiyonlar sunar. En popüler ikisi `filter` ve `map`'tir."},
{"text": "`filter`: Bir koleksiyondaki elemanları belirli bir koşula göre filtreler ve bu koşulu sağlayan elemanlardan yeni bir liste oluşturur."},
{"text": "`map`: Bir koleksiyondaki her bir elemanı alır, üzerinde bir işlem yapar (dönüştürür) ve bu işlemlerin sonuçlarından yeni bir liste oluşturur."},
{
"text": "Bu fonksiyonlar, `for` döngüleri yazmadan karmaşık işlemleri tek satırda ve okunaklı bir şekilde yapmamızı sağlar.",
"code": "fun main() {\n  val sayilar = listOf(1, 2, 3, 4, 5, 6)\n\n  // filter: Sadece çift sayıları al\n  val ciftSayilar = sayilar.filter { it % 2 == 0 }\n  println(ciftSayilar) // [2, 4, 6]\n\n  // map: Her sayının karesini al\n  val kareler = sayilar.map { it * it }\n  println(kareler) // [1, 4, 9, 16, 25, 36]\n\n  // Zincirleme kullanım: Sadece çift sayıların karelerini al\n  val ciftKareler = sayilar.filter { it % 2 == 0 }.map { it * it }\n  println(ciftKareler) // [4, 16, 36]\n}",
"code_explanation": "`it` anahtar kelimesi, lambda fonksiyonu içindeki o anki elemanı temsil eder. `filter` ile listeyi süzdük, `map` ile elemanlarını dönüştürdük."
}
],
"quiz": [
MultipleChoiceQuestion(
questionText: "Bir listedeki her elemanı alıp, dönüştürüp yeni bir liste oluşturan fonksiyon hangisidir?",
options: ["filter", "forEach", "map"],
correctAnswerIndex: 2,
),
CodeCompletionQuestion(
questionText: "Bir listedeki 10'dan büyük sayıları filtreleyen kodu tamamla.",
codeTemplate: "val sayilar = listOf(5, 12, 8, 20)\nval buyukler = sayilar.___ { it > 10 }",
correctAnswers: ["filter"],
options: ["map", "filter", "select"],
),
CodeCompletionQuestion(
questionText: "Bir isimler listesindeki her ismin başına \"Sn. \" ekleyerek yeni bir liste oluşturan kodu tamamla.",
codeTemplate: "val isimler = listOf(\"Ahmet\", \"Can\")\nval unvanliIsimler = isimler.___ { \"Sn. \$it\" }",
correctAnswers: ["map"],
options: ["filter", "map", "transform"],
),
CodeCompletionQuestion(
questionText: "Lambda fonksiyonu içinde o anki elemanı temsil eden varsayılan isim nedir?",
codeTemplate: "sayilar.filter { ___ > 5 }",
correctAnswers: ["it"],
options: ["it", "item", "element"],
),
]
},

// =======================================================================
// BÖLÜM 6: NULL GÜVENLİĞİ
// =======================================================================

"Nullable Türler (?)": {
"parts": [
{"text": "Kotlin'in en önemli ve güçlü özelliklerinden biri Null Güvenliği'dir. Amacı, programlamadaki 'milyar dolarlık hata' olarak bilinen `NullPointerException`'ı (NPE) ortadan kaldırmaktır."},
{"text": "Kotlin'de, bir değişken varsayılan olarak `null` değeri alamaz."},
{"text": "Eğer bir değişkenin `null` olabilmesini istiyorsak, bunu derleyiciye açıkça bildirmemiz gerekir. Bunu, değişkenin türünün sonuna `?` işareti koyarak yaparız."},
{
"text": "`String` türü `null` olamaz, ama `String?` türü hem bir metin hem de `null` değeri alabilir.",
"code": "fun main() {\n  var a: String = \"abc\" // null olamaz\n  // a = null // Bu satır HATA verir\n\n  var b: String? = \"xyz\" // null olabilir\n  b = null // Sorun yok\n\n  println(a.length) // Güvenli\n  // println(b.length) // Bu satır HATA verir çünkü b null olabilir!\n}",
"code_explanation": "Kotlin, `b` değişkeninin `null` olma ihtimali olduğu için, üzerinde doğrudan bir işlem yapmamızı (örneğin `.length`) derleme anında engelleyerek bizi olası bir çökmeden korur."
}
],
"quiz": [
MultipleChoiceQuestion(
questionText: "Bir değişkenin `null` değer alabilmesi için türünün sonuna hangi karakter konur?",
options: ["!", "*", "?"],
correctAnswerIndex: 2,
),
CodeCompletionQuestion(
questionText: "`null` olabilen bir `Int` değişkeni tanımla.",
codeTemplate: "val sayi: Int___ = null",
correctAnswers: ["?"],
options: ["&", "!", "?"],
),
CodeCompletionQuestion(
questionText: "`null` olamayan bir metin değişkeni tanımla.",
codeTemplate: "val isim: ___ = \"Kotlin\"",
correctAnswers: ["String"],
options: ["String?", "String", "MaybeString"],
),
// ******** BURASI DÜZELTİLDİ ********
  MultipleChoiceQuestion(
    questionText: "Aşağıdaki kod neden derleme hatası verir?\n\n`val metin: String? = null`\n`println(metin.length)`",
    options: ["Çünkü metin boş", "Çünkü metin null olabilir", "Çünkü println null kabul etmez"],
    correctAnswerIndex: 1,
  ),
]
},

"Güvenli Çağrılar (?.) ve Elvis Operatörü (?:)": {
"parts": [
{"text": "`null` olabilecek bir değişkenle güvenli bir şekilde çalışmanın iki yaygın yolu vardır."},
{"text": "1. Güvenli Çağrı Operatörü `?.`: Eğer değişken `null` değilse, `?.`'dan sonraki işlemi yapar. Eğer değişken `null` ise, işlemi hiç yapmaz ve sonuç olarak `null` döndürür. Program çökmez!"},
{"text": "2. Elvis Operatörü `?:`: Adını Elvis Presley'in saç stilinden alır. `sol taraf ?: sağ taraf` şeklinde kullanılır. Eğer sol taraf `null` değilse, sol tarafın sonucunu kullanır. Eğer sol taraf `null` ise, sağ taraftaki varsayılan değeri kullanır."},
{
"text": "Bu iki operatör, `null` kontrolleri için uzun `if-else` blokları yazmaktan bizi kurtarır.",
"code": "fun main() {\n  val isim: String? = \"Ahmet\"\n  val soyisim: String? = null\n\n  // Güvenli Çağrı (?.)\n  println(isim?.length) // 5\n  println(soyisim?.length) // null\n\n  // Elvis Operatörü (?:)\n  val kullanilacakIsim = isim ?: \"Misafir\"\n  val kullanilacakSoyisim = soyisim ?: \"Bilinmiyor\"\n\n  println(kullanilacakIsim) // Ahmet\n  println(kullanilacakSoyisim) // Bilinmiyor\n}",
"code_explanation": "Güvenli çağrı ile `soyisim` `null` olduğu için program çökmedi, sonuç `null` oldu. Elvis operatörü ile `soyisim` `null` olduğu için varsayılan değer olan \"Bilinmiyor\" kullanıldı."
}
],
"quiz": [
MultipleChoiceQuestion(
questionText: "Bir ifade `null` ise, onun yerine varsayılan bir değer kullanmayı sağlayan operatör hangisidir?",
options: ["?.", "!!", "?:"],
correctAnswerIndex: 2,
),
CodeCompletionQuestion(
questionText: "Eğer `sehir` değişkeni `null` değilse, adını büyük harfe çevir. Null ise bir şey yapma.",
codeTemplate: "val sehir: String? = \"Bursa\"\nval buyukHarf = sehir___ .uppercase()",
correctAnswers: ["?."],
options: ["!!", "?:", "?."],
),
CodeCompletionQuestion(
questionText: "`puan` `null` ise, `sonuc` değişkenine 0 değerini ata.",
codeTemplate: "val puan: Int? = null\nval sonuc = puan ___ 0",
correctAnswers: ["?:"],
options: ["?.", "!!", "?:"],
),
CodeCompletionQuestion(
questionText: "Eğer `kullanici?.adres?.sokak` ifadesi `null` dönerse, sonuç \"Adres yok\" olsun.",
codeTemplate: "val sokak = kullanici?.adres?.sokak ___ \"Adres yok\"",
correctAnswers: ["?:"],
options: ["?.", "!!", "?:"],
),
]
},

"Not-null İddiası (!!)": {
"parts": [
{"text": "Bazen bir programcı olarak, `null` olabilen bir değişkenin o anki kod satırında kesinlikle `null` olmayacağından %100 emin olabilirsiniz."},
{"text": "Bu durumda, derleyiciye \"Bana güven, bu `null` değil!\" demek için 'not-null iddiası' operatörünü, yani çift ünlemi (`!!`) kullanabilirsiniz."},
{"text": "Bu operatör, `null` olabilen bir türü (`String?` gibi), `null` olamayan bir türe (`String` gibi) zorla dönüştürür."},
{
"text": "DİKKAT! Bu riskli bir operatördür. Eğer `!!` kullandığınızda değişken gerçekten `null` ise, programınız o çok kaçındığımız `NullPointerException` hatası ile çökecektir. Sadece başka çareniz kalmadığında veya `null` olamayacağından tamamen emin olduğunuzda kullanın.",
"code": "fun main() {\n  val metin: String? = \"Merhaba\"\n  val uzunluk = metin!!.length // Güvenli, çünkü metin null değil.\n  println(uzunluk)\n\n  val baskaMetin: String? = null\n  // Aşağıdaki satır programı ÇÖKERTİR!\n  // val digerUzunluk = baskaMetin!!.length\n}",
"code_explanation": "`!!` operatörü ile derleyiciye bir söz verdik. İlk kullanımda sözümüzü tuttuk, ama ikinci kullanımda tutmasaydık programımız çökecekti."
}
],
"quiz": [
MultipleChoiceQuestion(
questionText: "`!!` operatörünü kullanmak neden risklidir?",
options: ["Programı yavaşlatır", "Değişken gerçekten `null` ise program çöker", "Sadece String'lerde çalışır"],
correctAnswerIndex: 1,
),
CodeCompletionQuestion(
questionText: "Derleyiciye `isim` değişkeninin `null` olmadığına dair güvence veren operatörü ekle.",
codeTemplate: "val isim: String? = \"Zeynep\"\nval kesinIsim: String = isim___",
correctAnswers: ["!!"],
options: ["?.", "?:", "!!"],
),
  MultipleChoiceQuestion(
    questionText: "Bu kod neden çöker?\n\n`val deger: Any? = null`\n`deger!!`",
    options: ["Çünkü `deger` `null`", "Çünkü `Any` türü kullanılamaz", "Sözdizimi hatası var"],
    correctAnswerIndex: 0,
  ),
CodeCompletionQuestion(
questionText: "Gelen girdinin boş olmayacağını varsayarak `!!` ile `null` kontrolünü geç.",
codeTemplate: "val girdi = readLine()___\nprintln(girdi.length)",
correctAnswers: ["!!"],
options: ["?", "?:", "!!"],
),
]
},

// =======================================================================
// BÖLÜM 7: OOP'YE GİRİŞ
// =======================================================================
"Sınıf ve Nesne": {
"parts": [
{"text": "Nesne Yönelimli Programlama'nın (OOP) temeline hoş geldin. OOP, gerçek dünyadaki nesneleri ve onların etkileşimlerini koda dökmemizi sağlar."},
{"text": "`Sınıf` (Class): Bir nesne için bir kalıp veya şablondur. Örneğin `Araba` bir sınıftır. Arabanın özelliklerini (`renk`, `hiz`) ve eylemlerini (`calistir()`, `durdur()`) tanımlar."},
{"text": "`Nesne` (Object): Bir sınıftan (kalıptan) üretilmiş gerçek bir örnektir. Kırmızı renkli, 120km/s hıza sahip `benimArabam` bir nesnedir."},
{
"text": "Kotlin'de bir sınıf `class` anahtar kelimesi ile oluşturulur. Bir sınıftan nesne oluşturmak ise o sınıfın adını bir fonksiyon gibi çağırmakla olur.",
"code": "class Araba {\n  var renk: String = \"Kırmızı\"\n  var hiz: Int = 0\n\n  fun hizlan(artis: Int) {\n    hiz += artis\n  }\n}\n\nfun main() {\n  val benimArabam = Araba() // Nesne oluşturma\n  benimArabam.renk = \"Mavi\"\n  benimArabam.hizlan(50)\n\n  println(\"Arabamın rengi: \${benimArabam.renk}\")\n  println(\"Arabamın hızı: \${benimArabam.hiz} km/s\")\n}",
"code_explanation": "`Araba` sınıfını bir kalıp olarak tanımladık. `benimArabam` adında bu kalıptan bir nesne ürettik ve onun özelliklerini (`renk`) ve metotlarını (`hizlan`) kullandık."
}
],
"quiz": [
MultipleChoiceQuestion(
questionText: "Bir nesne için kalıp veya şablon görevi gören yapıya ne denir?",
options: ["Fonksiyon", "Sınıf (Class)", "Değişken"],
correctAnswerIndex: 1,
),
CodeCompletionQuestion(
questionText: "`Kedi` adında boş bir sınıf tanımla.",
codeTemplate: "___ Kedi { }",
correctAnswers: ["class"],
options: ["object", "data class", "class"],
),
CodeCompletionQuestion(
questionText: "`Ogrenci` sınıfından `ogrenci1` adında bir nesne (instance) oluştur.",
codeTemplate: "class Ogrenci { }\nval ogrenci1 = ___()",
correctAnswers: ["Ogrenci"],
options: ["new Ogrenci", "Ogrenci", "object Ogrenci"],
),
CodeCompletionQuestion(
questionText: "`bisiklet` nesnesinin `zilCal` metodunu çağır.",
codeTemplate: "class Bisiklet {\n  fun zilCal() { println(\"Zırrr!\") }\n}\n\nval bisiklet = Bisiklet()\nbisiklet.___()",
correctAnswers: ["zilCal"],
options: ["run", "zilCal", "call"],
),
]
},

"Constructor ve init Bloğu": {
"parts": [
{"text": "Bir nesneyi oluştururken ona başlangıç değerleri atamak isteriz. Örneğin her arabanın markası ve modeli farklı olmalıdır."},
{"text": "İşte burada 'Yapıcı Metot' (Constructor) devreye girer. Kotlin'de `class` isminin yanına parantez açarak birincil yapıcı metot (primary constructor) tanımlanır."},
{"text": "Bu parantez içine yazılan parametreler, nesne oluşturulurken verilmesi gereken değerlerdir."},
{"text": "Eğer nesne oluşturulurken ek bir işlem yapılması gerekiyorsa, bu kodlar `init` bloğu içine yazılır. `init` bloğu, nesne oluşturulduğu anda çalıştırılır."},
{
"text": "Şimdi `Araba` sınıfımızı, marka ve model alacak şekilde güncelleyelim.",
"code": "class Araba(val marka: String, val model: String) {\n  var hiz: Int = 0\n\n  // Yapıcı metot çalıştığında bu blok da çalışır\n  init {\n    println(\"\$marka \$model marka bir araba oluşturuldu!\")\n  }\n\n  fun hizlan(artis: Int) {\n    hiz += artis\n  }\n}\n\nfun main() {\n  val araba1 = Araba(\"Ford\", \"Mustang\")\n  println(araba1.marka) // Ford\n}",
"code_explanation": "`Araba` sınıfının constructor'ına `marka` ve `model` parametrelerini ekledik. Nesne oluşturulurken bu değerleri verdik ve `init` bloğu otomatik olarak çalıştı."
}
],
"quiz": [
MultipleChoiceQuestion(
questionText: "Nesne oluşturulur oluşturulmaz çalışan kod bloğunun adı nedir?",
options: ["constructor", "init", "main"],
correctAnswerIndex: 1,
),
CodeCompletionQuestion(
questionText: "`Ogrenci` sınıfı için `isim` ve `numara` alan bir birincil yapıcı metot (primary constructor) tanımla.",
codeTemplate: "class Ogrenci(___ isim: String, ___ numara: Int) { }",
correctAnswers: ["val", "val"],
options: ["val", "var", "param"],
),
CodeCompletionQuestion(
questionText: "`init` bloğu içine bir karşılama mesajı yazdır.",
codeTemplate: "class Test {\n  ___ {\n    println(\"Nesne hazır!\")\n  }\n}",
correctAnswers: ["init"],
options: ["init", "start", "constructor"],
),
CodeCompletionQuestion(
questionText: "Bir `Kitap` nesnesini, başlığı \"Sefiller\" olacak şekilde oluştur.",
codeTemplate: "class Kitap(val baslik: String)\n\nval kitap = Kitap(___)",
correctAnswers: ["\"Sefiller\""],
options: ["\"Sefiller\"", "baslik", "String"],
),
]
},

"Kalıtım ve `open` anahtar kelimesi": {
"parts": [
{"text": "Kalıtım (Inheritance), bir sınıfın başka bir sınıfın özelliklerini ve metotlarını miras almasını sağlar. Bu, kod tekrarını önler."},
{"text": "Kotlin'de güvenlik gereği tüm sınıflar ve metotlar varsayılan olarak `final`'dır. Yani, onlardan kalıtım alınamaz veya onlar `override` edilemez (ezilemez)."},
{"text": "Bir sınıfın kalıtıma açık olmasını istiyorsak, başına `open` anahtar kelimesini eklemeliyiz."},
{"text": "Benzer şekilde, bir metodun alt sınıflar tarafından ezilebilmesi için onun da `open` olması gerekir. Alt sınıf ise bu metodu ezerken `override` anahtar kelimesini kullanır."},
{
"text": "Bir `Hayvan` sınıfı ve ondan türeyen bir `Kedi` sınıfı örneğine bakalım.",
"code": "open class Hayvan(val isim: String) {\n  open fun sesCikar() {\n    println(\"Hayvan sesi\")\n  }\n}\n\nclass Kedi(isim: String) : Hayvan(isim) {\n  override fun sesCikar() {\n    println(\"Miyav!\")\n  }\n}\n\nfun main() {\n  val tekir = Kedi(\"Tekir\")\n  tekir.sesCikar() // Miyav!\n}",
"code_explanation": "`Hayvan` sınıfını `open` yaparak kalıtıma açtık. `Kedi` sınıfı `:` kullanarak `Hayvan`'dan türedi ve `open` olan `sesCikar` metodunu `override` ederek kendine özgü bir davranış sergiledi."
}
],
"quiz": [
MultipleChoiceQuestion(
questionText: "Bir sınıfın başka bir sınıftan miras alabilmesi için, miras alınacak sınıfın başına ne yazılmalıdır?",
options: ["public", "override", "open"],
correctAnswerIndex: 2,
),
CodeCompletionQuestion(
questionText: "`Calisan` sınıfından türeyen bir `Mudur` sınıfı tanımla.",
codeTemplate: "open class Calisan\n\nclass Mudur : ___()",
correctAnswers: ["Calisan"],
options: ["Calisan", "extends Calisan", "super Calisan"],
),
CodeCompletionQuestion(
questionText: "Üst sınıftaki bir metodu alt sınıfta ezmek için hangi anahtar kelime kullanılır?",
codeTemplate: "class B: A() {\n  ___ fun metot() { ... }\n}",
correctAnswers: ["override"],
options: ["open", "override", "super"],
),
CodeCompletionQuestion(
questionText: "`Sekil` sınıfını kalıtıma uygun hale getir.",
codeTemplate: "___ class Sekil { }",
correctAnswers: ["open"],
options: ["public", "static", "open"],
),
]
},

"`data class` ile Veri Sınıfları": {
"parts": [
{"text": "Bazen bir sınıfın tek amacı veri tutmaktır. Örneğin bir `Kullanici` sınıfı sadece id, isim, email gibi verileri saklar."},
{"text": "Bu tür durumlar için Kotlin harika bir kolaylık sunar: `data class`."},
{"text": "Bir sınıfı `data` olarak işaretlediğinizde, derleyici sizin için otomatik olarak bazı yararlı metotlar üretir: `toString()`, `equals()`, `hashCode()`, `copy()`."},
{
"text": "Bu, sizi bir sürü standart kod yazma zahmetinden kurtarır ve kodunuzu çok daha temiz hale getirir.",
"code": "data class Kullanici(val id: Int, val isim: String)\n\nfun main() {\n  val kullanici1 = Kullanici(1, \"Ali\")\n  val kullanici2 = Kullanici(1, \"Ali\")\n\n  println(kullanici1) // toString() -> Kullanici(id=1, isim=Ali)\n  println(kullanici1 == kullanici2) // equals() -> true\n\n  val kullanici3 = kullanici1.copy(isim = \"Veli\")\n  println(kullanici3) // copy() -> Kullanici(id=1, isim=Veli)\n}",
"code_explanation": "`data class` sayesinde `println` daha anlamlı bir çıktı verdi, iki nesnenin içeriklerinin aynı olup olmadığını `==` ile kolayca kontrol edebildik ve `copy()` ile nesnenin bir kopyasını kolayca oluşturabildik."
}
],
"quiz": [
MultipleChoiceQuestion(
questionText: "Temel amacı sadece veri tutmak olan sınıflar için en uygun sınıf türü hangisidir?",
options: ["open class", "data class", "object"],
correctAnswerIndex: 1,
),
CodeCompletionQuestion(
questionText: "`Film` adında, `isim` ve `yil` verilerini tutan bir `data class` oluştur.",
codeTemplate: "___ class Film(val isim: String, val yil: Int)",
correctAnswers: ["data"],
options: ["open", "data", "final"],
),
CodeCompletionQuestion(
questionText: "`urun1` nesnesinin bir kopyasını oluşturup sadece fiyatını güncelleyen kodu tamamla.",
codeTemplate: "data class Urun(val ad: String, val fiyat: Int)\nval urun1 = Urun(\"Kitap\", 50)\nval urun2 = urun1.___(fiyat = 60)",
correctAnswers: ["copy"],
options: ["clone", "copy", "duplicate"],
),
  MultipleChoiceQuestion(
    questionText: "`data class`'ın otomatik olarak üretmediği metot hangisidir?\n\n`// toString(), equals(), hashCode(), ___, copy()`",
    options: ["init()", "equals()", "copy()"],
    correctAnswerIndex: 0,
  ),
]
},

// =======================================================================
// BÖLÜM 8: MİNİ PROJE
// =======================================================================
"Proje: Basit Görev Yöneticisi": {
"parts": [
{"text": "Tebrikler! Artık Kotlin'in temellerini biliyorsun. Şimdi öğrendiklerimizi birleştireceğimiz bir proje yapma zamanı."},
{"text": "Amacımız: Konsol üzerinden çalışan basit bir görev yöneticisi yapmak."},
{"text": "Uygulama şunları yapabilmeli:\n1. Yeni bir görev ekleyebilmeli.\n2. Tüm görevleri listeleyebilmeli.\n3. Bir görevi tamamlandı olarak işaretleyebilmeli.\n4. Programdan çıkış yapabilmeli."},
{"text": "İpucu: Görevleri saklamak için bir `data class Gorev(val aciklama: String, var tamamlandi: Boolean = false)` oluşturabilirsin."},
{"text": "Tüm görevleri bir `mutableListOf<Gorev>()` içinde tutabilirsin. Kullanıcının seçimini almak için bir `while` döngüsü ve `when` ifadesi harika bir ikili olacaktır. Başarılar!"},
],
"quiz": [
MultipleChoiceQuestion(
questionText: "Bu projede, her bir görevin açıklamasını ve tamamlanma durumunu saklamak için en uygun yapı hangisidir?",
options: ["Bir `List<String>`", "Bir `data class`", "İki ayrı `MutableList`"],
correctAnswerIndex: 1,
),
]
},
};