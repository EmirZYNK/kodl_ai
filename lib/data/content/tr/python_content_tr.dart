import 'package:learn_code/models/quiz_models.dart';

// YENİ YAPI:
// Her ders ID'si, bir veya daha fazla alt ders içeren bir "sub_lessons" listesi barındırır.
// Her alt ders kendi anlatım ("parts") ve quiz bölümüne sahiptir.
// Bu yapı, konuları daha küçük, yönetilebilir parçalara ayırarak öğrenmeyi kolaylaştırır.
final Map<String, Map<String, dynamic>> pythonContentTr = {
  // =======================================================================
  // BÖLÜM 1: GİRİŞ
  // =======================================================================

  "py_what_is_programming": {
    // Not: Bu ilk dersler kavramsal olduğu için tek alt dersten oluşur.
    "sub_lessons": [
      {
        "title": "Programlama Nedir?",
        "parts": [
          {"text": "Harika bir yolculuğa başlıyoruz! İlk durağımız: Programlama nedir?"},
          {"text": "En basit haliyle programlama, bir bilgisayara veya cihaza ne yapması gerektiğini adım adım anlatmaktır."},
          {"text": "Bu talimatları, bilgisayarın anlayabileceği özel bir dil (programlama dili) kullanarak yazarız. Tıpkı Python gibi!"},
          {"text": "Yazdığımız bu komutlar sayesinde uygulamalar, web siteleri ve oyunlar ortaya çıkar."},
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Programlama en temel anlamıyla nedir?",
            options: ["Bilgisayar satın almak", "Bilgisayara ne yapacağını söyleyen komutlar yazmak", "Sadece oyun oynamak"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bilgisayara talimat vermek için kullandığımız özel dile ne ad verilir?",
            codeTemplate: "___ dili",
            correctAnswers: ["programlama"],
            options: ["konuşma", "programlama", "işaret"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir ___ kullanarak bilgisayara ne yapması gerektiğini ___.",
            codeTemplate: "Bir ___ kullanarak bilgisayara ne yapması gerektiğini ___.",
            correctAnswers: ["programlama dili", "anlatırız"],
            options: ["fare", "anlatırız", "programlama dili", "oynarız"],
          ),
        ]
      }
    ]
  },

  "py_what_is_python": {
    "sub_lessons": [
      {
        "title": "Python Nedir ve Neden Popüler?",
        "parts": [
          {"text": "Peki neden Python öğreniyoruz?"},
          {"text": "Python, okunması ve yazması en kolay dillerden biridir. İngilizceye çok benzediği için 'başlangıç dostu' olarak bilinir."},
          {"text": "Ama basit olması güçsüz olduğu anlamına gelmez! Instagram, YouTube ve Google gibi devasa şirketler Python kullanır."},
          {"text": "Web geliştirme, yapay zeka, veri bilimi ve oyun geliştirme gibi çok geniş bir kullanım alanına sahiptir."},
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Aşağıdakilerden hangisi Python'un bir özelliği DEĞİLDİR?",
            options: ["Okunabilir ve basit olması", "Geniş kullanım alanlarına sahip olması", "Sadece yapay zeka için kullanılması"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Python, ___ çok benzediği için başlangıç dostu bir dildir.",
            codeTemplate: "Python, ___ çok benzediği için başlangıç dostu bir dildir.",
            correctAnswers: ["İngilizceye"],
            options: ["Çinceye", "İngilizceye", "Matematiğe"],
          ),
          CodeCompletionQuestion(
            questionText: "Python; ___ , ___ ve veri bilimi gibi alanlarda kullanılır.",
            codeTemplate: "Python; ___ , ___ ve veri bilimi gibi alanlarda kullanılır.",
            correctAnswers: ["yapay zeka", "web geliştirme"],
            options: ["sadece oyun", "yapay zeka", "web geliştirme", "sadece mobil"],
          ),
        ]
      }
    ]
  },

  "py_setup": {
    "sub_lessons": [
      {
        "title": "Gerekli Araçlar: Yorumlayıcı ve Editör",
        "parts": [
          {"text": "Gerçek kod yazmaya başlamadan önce, bilgisayarımızın hazır olması gerekir."},
          {"text": "Bunun için iki şeye ihtiyacımız var: Python Yorumlayıcısı ve bir Kod Editörü."},
          {"text": "Python Yorumlayıcısı, yazdığımız Python kodunu bilgisayarın anlayacağı makine diline çeviren programdır."},
          {"text": "VS Code gibi bir kod editörü ise, kodlarımızı daha kolay ve düzenli yazmamızı sağlayan gelişmiş bir not defteridir."},
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Yazdığımız Python kodunu bilgisayarın anlayacağı dile çeviren araca ne denir?",
            options: ["Kod Editörü", "Python Yorumlayıcısı", "İşletim Sistemi"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Kodlarımızı düzenli yazmamızı sağlayan gelişmiş not defterine ___ denir.",
            codeTemplate: "Kodlarımızı düzenli yazmamızı sağlayan gelişmiş not defterine ___ denir.",
            correctAnswers: ["kod editörü"],
            options: ["yorumlayıcı", "kod editörü", "derleyici"],
          ),
          CodeCompletionQuestion(
            questionText: "Python kodunu makine diline ___ çevirir, kodu ise ___ ile yazarız.",
            codeTemplate: "Python kodunu makine diline ___ çevirir, kodu ise ___ ile yazarız.",
            correctAnswers: ["yorumlayıcı", "kod editörü"],
            options: ["yorumlayıcı", "kod editörü", "tarayıcı", "sunucu"],
          ),
        ]
      }
    ]
  },

  "py_hello_world": {
    "sub_lessons": [
      {
        "title": "İlk Kodumuz: Merhaba, Dünya!",
        "parts": [
          {"text": "İşte o an geldi! İlk kodumuzu yazıyoruz."},
          {"text": "Programlama dünyasında gelenek, yeni bir dile başlarken ekrana 'Merhaba, Dünya!' yazdırmaktır."},
          {"text": "Python'da ekrana bir şey yazdırmak için `print()` fonksiyonunu kullanırız."},
          {
            "text": "Parantezlerin içine, tırnak işaretleri arasında ne yazarsak, Python onu ekrana basar.",
            "code": "print(\"Merhaba, Dünya!\")",
            "code_explanation": "Bu kod, ekrana tırnak işaretleri içindeki `Merhaba, Dünya!` metnini yazdıracaktır."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
              questionText: "Python'da ekrana çıktı vermek için hangi fonksiyon kullanılır?",
              options: ["input()", "write()", "print()"],
              correctAnswerIndex: 2
          ),
          CodeCompletionQuestion(
              questionText: "Ekrana 'Python öğreniyorum' yazdıran kodu tamamla.",
              codeTemplate: "___(\"Python öğreniyorum\")",
              correctAnswers: ["print"],
              options: ["print", "input", "code"]
          ),
          CodeCompletionQuestion(
              questionText: "Ekrana 'İlk kodum' yazdıracak kodu, fonksiyon ve metin olarak tamamlayın.",
              codeTemplate: "___(___)",
              correctAnswers: ["print", "\"İlk kodum\""],
              options: ["print", "input", "\"İlk kodum\"", "İlk kodum"]
          ),
          // YENİ EKLENEN SORULAR
          CodeCompletionQuestion(
              questionText: "Bir fonksiyonu çağırmak için gereken parantezleri ekleyerek 'Merhaba, Dünya!' yazdıran kodu tamamla.",
              codeTemplate: "print___\"Merhaba, Dünya!\"___",
              correctAnswers: ["(", ")"],
              options: ["(", ")", "{", "}", "["]
          ),
          CodeCompletionQuestion(
              questionText: "Python'da metinleri (string) belirtmek için kullanılan tırnak işaretlerini ekleyerek 'Merhaba, Dünya!' yazdır.",
              codeTemplate: "print(___Merhaba, Dünya!___)",
              correctAnswers: ["\"", "\""],
              options: ["\"", "'", "`", "#"]
          ),
          CodeCompletionQuestion(
              questionText: "Ekrana 'Python çok eğlenceli' yazdıracak fonksiyonu ve metni yerleştirin.",
              codeTemplate: "___(___)",
              correctAnswers: ["print", "\"Python çok eğlenceli\""],
              options: ["print", "write", "\"Python çok eğlenceli\"", "Python çok eğlenceli"]
          )
        ]
      }
    ]
  },

  // =======================================================================
  // BÖLÜM 2: TEMELLER
  // =======================================================================

  "py_variables_data_types": {

    "sub_lessons": [
  {
    "title": "Değişkenler: Veri Saklama Kutuları",
    "parts": [
      {"text": "Programlarda bilgileri geçici olarak saklamak için 'değişken' adı verilen kutular kullanırız."},
      {"text": "Bir değişkene anlamlı bir isim veririz ve `=` operatörü ile içine bir değer koyarız. Bu işleme 'atama' denir."},
      {
        "text": "Örneğin, bir kullanıcının yaşını saklayalım.",
        "code": "kullanici_yasi = 25",
        "code_explanation": "Burada 'kullanici_yasi' değişkenin adı, '=' atama operatörü, 25 ise değişkene atanan değerdir."
      }
    ],
    "quiz": [
      MultipleChoiceQuestion(
        questionText: "Bir değişkene değer atamak için hangi operatör kullanılır?",
        options: ["==", ":=", "="],
        correctAnswerIndex: 2,
      ),
      CodeCompletionQuestion(
        questionText: "Kullanıcının adını saklamak için 'isim' adında bir değişken oluştur ve değerini 'Ayşe' olarak ata.",
        codeTemplate: "___ = \"Ayşe\"",
        correctAnswers: ["isim"],
        options: ["isim", "String", "def"],
      ),
      CodeCompletionQuestion(
        questionText: "Bir ürünün adını ve fiyatını iki ayrı değişkene atayan kodu tamamlayın.",
        codeTemplate: "___ = \"Klavye\"\n___ = 500",
        correctAnswers: ["urun_adi", "fiyat"],
        options: ["urun_adi", "fiyat", "string", "int"],
      ),
    ]
  },
  {
    "title": "Temel Veri Türleri",
    "parts": [
      {"text": "Değişkenlerde sakladığımız verilerin farklı 'türleri' vardır."},
      {"text": "Metinler için `string` (str), tam sayılar için `integer` (int), ondalıklı sayılar için `float` ve sadece Doğru/Yanlış değerleri için `boolean` (bool) kullanılır."},
      {
        "text": "Python, değişkene atanan değere göre veri türünü otomatik olarak anlar.",
        "code": "isim = \"Ali\"         # String (metin)\nyas = 25              # Integer (tam sayı)\nboy = 1.75            # Float (ondalıklı sayı)\nogrenci_mi = True     # Boolean (True ya da False)",
        "code_explanation": "Dört farklı değişkene atanmış dört farklı türde veri görüyoruz."
      }
    ],
    "quiz": [
  MultipleChoiceQuestion(
    questionText: "`agirlik = 82.4` şeklinde tanımlanan bir değişkenin veri türü nedir?",
    options: ["Integer", "String", "Float"],
    correctAnswerIndex: 2,
  ),
  CodeCompletionQuestion(
    questionText: "Bir şehrin adını tutan `sehir` değişkeni hangi veri türündedir?",
    codeTemplate: "sehir = \"İstanbul\" # Veri Türü: ___",
    correctAnswers: ["string"],
    options: ["integer", "string", "boolean"],
  ),
      CodeCompletionQuestion(
        // HATA BURADAYDI: "questionText": yerine questionText": yazılmıştı.
        questionText: "Bir kullanıcının sisteme giriş yapıp yapmadığını (`True`) ve yaşını (`30`) tutan değişkenleri tamamlayın.",
        codeTemplate: "giris_yapti = ___\nkullanici_yasi = ___",
        correctAnswers: ["True", "30"],
        options: ["True", "False", "30", "\"30\""],
      ),
]
}
]
},

"py_type_casting": {
"sub_lessons": [
{
"title": "Tip Dönüşümleri: int(), float(), str()",
"parts": [
{"text": "Bazen bir veri türünü başka bir türe dönüştürmemiz gerekir. Buna 'tip dönüşümü' (type casting) denir."},
{"text": "Örneğin kullanıcıdan `input()` ile aldığımız her bilgi, sayı bile olsa, metin (string) olarak gelir."},
{"text": "Matematiksel işlem yapmak için bu metni sayıya dönüştürmeliyiz."},
{
"text": "`int()` metni tam sayıya, `float()` ondalıklı sayıya, `str()` ise herhangi bir veriyi metne dönüştürür.",
"code": "yas_str = \"28\"      # Bu bir metin\nyas_int = int(yas_str) # Artık bir sayı\n\nsonuc = yas_int + 2    # Sonuç: 30",
"code_explanation": "Metin olan '28'i, `int()` fonksiyonu ile sayı olan 28'e çevirdik ve toplama işlemi yapabildik."
}
],
"quiz": [
MultipleChoiceQuestion(
questionText: "`input()` ile alınan '50' değerini matematiksel bir işlemde kullanmak için hangi fonksiyon gerekir?",
options: ["str()", "print()", "int()"],
correctAnswerIndex: 2,
),
CodeCompletionQuestion(
questionText: "Metin olarak verilen '12.5' değerini ondalıklı sayıya çeviren kodu tamamla.",
codeTemplate: "puan_str = \"12.5\"\npuan_float = ___ (puan_str)",
correctAnswers: ["float"],
options: ["int", "str", "float"],
),
CodeCompletionQuestion(
questionText: "Yaşı sayı olarak verilen bir kullanıcı için \"Kullanıcı 25 yaşındadır.\" mesajını oluşturan kodu tamamlayın.",
codeTemplate: "yas = 25\nmesaj = \"Kullanıcı \" + ___ (yas) + ___",
correctAnswers: ["str", "\" yaşındadır.\""],
options: ["int", "str", "yas", "\" yaşındadır.\""],
),
  CodeCompletionQuestion(
      questionText: "Kullanıcıdan alınan doğum yılını sayıya çevirerek `dogum_yili` değişkenine atayan kodu tek satırda tamamlayın.",
      codeTemplate: "dogum_yili = ___ (___(\"Doğum yılınız: \"))",
      correctAnswers: ["int", "input"],
      options: ["str", "int", "input", "print"]
  ),
  CodeCompletionQuestion(
      questionText: "Metin olan bir sayıyı, ondalıklı sayıya çevirerek 10.0 ekleyen kodu tamamlayın.",
      codeTemplate: "deger_str = \"15.5\"\nyeni_deger = ___(deger_str) + 10.0",
      correctAnswers: ["float"],
      options: ["int", "str", "float"]
  ),
]
}
]
},

"py_comments": {
"sub_lessons": [
{
"title": "Yorum Satırları: Kod İçin Notlar",
"parts": [
{"text": "Kod yazarken, bazen kendimize veya başkalarına notlar bırakmak isteriz."},
{"text": "Bu notlar kodun ne işe yaradığını açıklar ve programın çalışmasını etkilemez."},
{"text": "Python'da bir satırı yorum haline getirmek için başına `#` işareti koyarız."},
{
"text": "Python yorumlayıcısı, `#` işaretinden sonra gelen hiçbir şeyi dikkate almaz.",
"code": "# Bu bir yorum satırıdır.\nkullanici_yasi = 30 # Değişkenin yanına da yorum yazılabilir.",
"code_explanation": "Yorum satırları, kodu daha anlaşılır kılmak için çok önemlidir."
}
],
"quiz": [
MultipleChoiceQuestion(
questionText: "Python'da tek satırlık bir yorum nasıl başlatılır?",
options: ["// yorum", "/* yorum */", "# yorum"],
correctAnswerIndex: 2,
),
CodeCompletionQuestion(
questionText: "`print` komutunun çalışmasını engelleyecek şekilde o satırı yorum satırı yap.",
codeTemplate: "___ print(\"Bu satır çalışmamalı\")",
correctAnswers: ["#"],
options: ["//", "/*", "#"],
),
CodeCompletionQuestion(
questionText: "Aşağıdaki kodda değişken tanımını ve yorumu uygun yerlere yerleştirin.",
codeTemplate: "___ # Bu değişken, kullanıcının puanını tutar.",
correctAnswers: ["puan = 100"],
options: ["puan = 100", "# puan = 100", "puan: 100"],
),
  CodeCompletionQuestion(
      questionText: "Aşağıdaki kod bloğunda sadece ikinci satırın çalışmamasını sağlayın.",
      codeTemplate: "print(\"Satır 1\")\n___ print(\"Satır 2\")\nprint(\"Satır 3\")",
      correctAnswers: ["#"],
      options: ["#", "//", "/**"]
  ),
  CodeCompletionQuestion(
      questionText: "Değişkenin yanına amacını açıklayan bir yorum eklemek için gereken sembolü koyun.",
      codeTemplate: "kdv_orani = 0.18 ___ # Katma Değer Vergisi oranı",
      correctAnswers: ["#"],
      options: ["&", "#", "!", "//"]
  )
]
}
]
},

"py_user_input": {
"sub_lessons": [
{
"title": "Kullanıcıdan Girdi Alma: input()",
"parts": [
{"text": "Programımızı interaktif hale getirelim! Kullanıcıdan bilgi alabiliriz."},
{"text": "Bunun için `input()` fonksiyonunu kullanırız."},
{"text": "`input()` fonksiyonu, kullanıcı klavyeden bir şey yazıp Enter'a basana kadar programı bekletir."},
{"text": "ÇOK ÖNEMLİ: `input()` ile alınan her değer, sayı bile girilse, her zaman metin (string) olarak kabul edilir."},
{
"text": "Bu yüzden matematiksel işlem yapacaksak, `int()` veya `float()` ile tip dönüşümü yapmalıyız.",
"code": "ad = input(\"Adınız nedir? \")\nprint(\"Merhaba, \" + ad)\n\nyas_str = input(\"Yaşınız kaç? \")\nyas_int = int(yas_str)\nprint(f\"10 yıl sonra {yas_int + 10} yaşında olacaksınız.\")",
"code_explanation": "İlk `input` doğrudan metin olarak kullanıldı. İkincisi ise sayıya çevrilerek matematiksel bir işlemde kullanıldı."
}
],
"quiz": [
MultipleChoiceQuestion(
questionText: "`input()` fonksiyonu kullanıcıdan aldığı veriyi hangi veri türünde döndürür?",
options: ["Integer", "String", "Otomatik anlar"],
correctAnswerIndex: 1,
),
CodeCompletionQuestion(
questionText: "Kullanıcıdan favori rengini alıp `renk` değişkenine atayan kodu tamamla.",
codeTemplate: "renk = ___(\"Favori rengin ne? \")",
correctAnswers: ["input"],
options: ["print", "input", "get"],
),
CodeCompletionQuestion(
questionText: "Kullanıcıdan iki sayı alıp toplamlarını ekrana yazdıran kodu tamamlayın.",
codeTemplate: "sayi1_str = input(\"1. Sayı: \")\nsayi2_str = input(\"2. Sayı: \")\ntoplam = ___ (sayi1_str) + ___ (sayi2_str)\nprint(toplam)",
correctAnswers: ["int", "int"],
options: ["str", "int", "float", "input"],
),
  CodeCompletionQuestion(
      questionText: "Kullanıcının girdiği ismi f-string içinde doğrudan kullanarak ekrana 'Hoşgeldin' mesajı yazdırın.",
      codeTemplate: "print(f\"Hoşgeldin, {___('Adın ne? ')}\")",
      correctAnswers: ["input"],
      options: ["print", "str", "input"]
  ),
  CodeCompletionQuestion(
      questionText: "Kullanıcıdan boyunu metre cinsinden (ondalıklı) alıp `boy_float` değişkenine atayan kodu tamamlayın.",
      codeTemplate: "boy_str = input(\"Boyunuz (metre): \")\nboy_float = ___(boy_str)",
      correctAnswers: ["float"],
      options: ["int", "str", "float"]
  )
]
}
]
},
  "py_print_function": {
    "sub_lessons": [
      {
        "title": "print() Fonksiyonu: 'sep' Parametresi",
        "parts": [
          {"text": "`print()` fonksiyonuna virgülle ayırarak birden fazla değer gönderebiliriz."},
          {"text": "Varsayılan olarak, bu değerlerin arasına bir boşluk koyarak ekrana yazar."},
          {"text": "Bu ayırıcı karakteri değiştirmek için `sep` (separator) parametresini kullanırız."},
          {
            "text": "Sayıların arasına boşluk yerine tire koyalım.",
            "code": "print(2023, 10, 29)       # Çıktı: 2023 10 29\nprint(2023, 10, 29, sep=\"-\") # Çıktı: 2023-10-29",
            "code_explanation": "`sep=\"-\"` ifadesi, `print` fonksiyonuna değerler arasına boşluk yerine tire koymasını söyledi."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`print()` fonksiyonunda değerler arasındaki ayırıcıyı belirleyen parametre hangisidir?",
            options: ["end", "sep", "join"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Verilen değerleri aralarında '...' olacak şekilde yazdıran kodu tamamla.",
            codeTemplate: "print(\"Yükleniyor\", sep=___)",
            correctAnswers: ["\"...\""],
            options: ["\"...\"", "\".\"", "\",\""],
          ),
          CodeCompletionQuestion(
            questionText: "3 farklı kelimeyi aralarında `*` olacak şekilde yazdıran kodu tamamlayın.",
            codeTemplate: "print(\"bir\", \"iki\", \"üç\", ___ = ___)",
            correctAnswers: ["sep", "\"*\""],
            options: ["sep", "end", "\"*\"", "\"-\""],
          ),
          CodeCompletionQuestion(
              questionText: "Bir web sitesi adresini oluşturan parçaları aralarına '.' koyarak yazdırın.",
              codeTemplate: "print(\"www\", \"google\", \"com\", sep=___)",
              correctAnswers: ["\".\""],
              options: ["\" \"", "\".\"", "\",\""]
          ),
          CodeCompletionQuestion(
              questionText: "E-posta adresinin kullanıcı adını ve domain'ini aralarına '@' koyarak birleştiren kodu tamamlayın.",
              codeTemplate: "print(\"kullanici\", \"site.com\", ___ = __)",
              correctAnswers: ["sep", "\"@\""],
              options: ["end", "sep", "\"@\"", "\".\""]
          )
        ]
      },
      {
        "title": "print() Fonksiyonu: 'end' Parametresi",
        "parts": [
          {"text": "Her `print()` fonksiyonu, varsayılan olarak çıktının sonuna bir alt satır karakteri (`\\n`) ekler. Bu yüzden her print yeni bir satırda başlar."},
          {"text": "Bu bitiş karakterini değiştirmek için `end` parametresini kullanırız."},
          {"text": "Örneğin, birden fazla `print` işleminin sonucunu aynı satırda yazdırmak için bu çok kullanışlıdır."},
          {
            "text": "İki print ifadesini yan yana yazdıralım.",
            "code": "print(\"Merhaba\", end=\" \")\nprint(\"Dünya\")\n\n# Çıktı: Merhaba Dünya",
            "code_explanation": "İlk `print`'in sonuna alt satır yerine bir boşluk koymasını `end=\" \"` ile sağladık. Böylece ikinci `print` aynı satırdan devam etti."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`print()` fonksiyonunun çıktının sonuna ne koyacağını belirleyen parametre hangisidir?",
            options: ["end", "sep", "finish"],
            correctAnswerIndex: 0,
          ),
          CodeCompletionQuestion(
            questionText: "Bir sonraki print'in aynı satırda devam etmesi için `end` parametresini ne olarak ayarlamalıyız?",
            codeTemplate: "print(\"İlk bölüm\", end=___)",
            correctAnswers: ["\"\""],
            options: ["\" \"", "\"\"", "\"\\n\""],
          ),
          CodeCompletionQuestion(
            questionText: "İki print komutunun çıktısı arasına `--->` koyan kodu tamamlayın.",
            codeTemplate: "print(\"A\", ___ = \"--->\")\nprint(___)",
            correctAnswers: ["end", "\"B\""],
            options: ["end", "sep", "\"B\"", "B"],
          ),
          CodeCompletionQuestion(
              questionText: "Ekrana 'Yükleniyor...' yazısını tek bir satırda, üç ayrı print ile yazan kodu tamamlayın.",
              codeTemplate: "print(\"Yükleniyor\", end=___)\nprint(\".\", end=\"\")\nprint(\"..\")",
              correctAnswers: ["\"\""],
              options: ["\" \"", "\".\"", "\"\""]
          ),
          CodeCompletionQuestion(
              questionText: "Bir cümleyi iki ayrı print ile oluşturan ve kelimeler arasında bir boşluk bırakan kodu tamamlayın.",
              codeTemplate: "print(\"Python öğrenmek\", ___ = \" \")\nprint(___)",
              correctAnswers: ["end", "\"çok kolay!\""],
              options: ["sep", "end", "\"çok kolay!\"", "\" \""]
          )
        ]
      }
    ]
  },

  "py_string_methods": {
    "sub_lessons": [
      {
        "title": "String Metotları: Büyük/Küçük Harf",
        "parts": [
          {"text": "Metinler (string) üzerinde işlem yapmamızı sağlayan birçok hazır metot bulunur."},
          {"text": "`.upper()`: Tüm metni büyük harfe çevirir."},
          {"text": "`.lower()`: Tüm metni küçük harfe çevirir."},
          {"text": "`.capitalize()`: Sadece metnin ilk harfini büyük, geri kalanını küçük yapar."},
          {"text": "`.title()`: Metindeki her kelimenin ilk harfini büyük yapar."},
          {
            "text": "Bu metotların kullanımını görelim.",
            "code": "metin = \"bU, bİr Test MeTnidiR.\"\n\nprint(metin.upper())      # BU, BİR TEST METNİDİR.\nprint(metin.lower())      # bu, bir test metnidir.\nprint(metin.capitalize()) # Bu, bir test metnidir.\nprint(metin.title())      # Bu, Bir Test Metnidir.",
            "code_explanation": "Aynı metin üzerinde farklı metotlar kullanarak farklı çıktılar elde ettik."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir metindeki her kelimenin ilk harfini büyük yapan metot hangisidir?",
            options: [".upper()", ".capitalize()", ".title()"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "`'PYTHON'` metnini tamamen küçük harfe çeviren kodu tamamla.",
            codeTemplate: "sonuc = \"PYTHON\".___()",
            correctAnswers: ["lower"],
            options: ["lower", "upper", "title"],
          ),
          CodeCompletionQuestion(
            questionText: "Verilen cümlenin sadece ilk harfini büyük, bir başka kelimenin ise tamamını büyük yapan kodları tamamlayın.",
            codeTemplate: "cumle = \"merhaba dünya\"\nyeni_cumle = cumle.___()\n\nkelime = \"python\"\nyeni_kelime = kelime.___()",
            correctAnswers: ["capitalize", "upper"],
            options: ["capitalize", "title", "upper", "lower"],
          ),
          CodeCompletionQuestion(
              questionText: "Önce tüm harfleri küçültüp sonra her kelimenin ilk harfini büyük yapan zincirleme metot çağrısını tamamlayın.",
              codeTemplate: "veri = \"BİR ZAMANLAR...\"\nsonuc = veri.lower().___()",
              correctAnswers: ["title"],
              options: ["upper", "title", "capitalize"]
          ),
          CodeCompletionQuestion(
              questionText: "`'hOşGeLDiN'` metnini, sadece ilk harfi büyük olacak şekilde (`'Hoşgeldin'`) düzelten metodu çağırın.",
              codeTemplate: "mesaj = \"hOşGeLDiN\"\nduzgun_mesaj = mesaj.___()",
              correctAnswers: ["capitalize"],
              options: ["lower", "upper", "capitalize"]
          )
        ]
      },
      {
        "title": "String Metotları: Temizleme ve Değiştirme",
        "parts": [
          {"text": "Metinleri düzenlemek için de güçlü metotlarımız var."},
          {"text": "`.strip()`: Metnin başındaki ve sonundaki istenmeyen karakterleri (varsayılan olarak boşlukları) temizler."},
          {"text": "`.replace(eski, yeni)`: Metindeki bir karakter veya kelime grubunu yenisiyle değiştirir."},
          {
            "text": "Kullanıcıdan gelen bir girdiyi temizleyip içindeki bir bilgiyi güncelleyelim.",
            "code": "kullanici_girdisi = \"   admin@test.com   \"\ntemiz_girdi = kullanici_girdisi.strip() # \"admin@test.com\"\n\nyeni_mail = temiz_girdi.replace(\"test.com\", \"gmail.com\")\nprint(yeni_mail) # admin@gmail.com",
            "code_explanation": "Önce `.strip()` ile gereksiz boşlukları sildik, sonra `.replace()` ile domain adını değiştirdik."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir metnin başındaki ve sonundaki boşlukları silmek için hangi metot kullanılır?",
            options: [".replace()", ".strip()", ".clean()"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "'Merhaba-Dünya' metnindeki '-' karakterini boşluk ile değiştiren kodu tamamla.",
            codeTemplate: "sonuc = \"Merhaba-Dünya\".___(\"-\", \" \")",
            correctAnswers: ["replace"],
            options: ["strip", "replace", "split"],
          ),
          CodeCompletionQuestion(
            questionText: "Fazla boşluklu bir metni temizleyen ve içindeki 'Python2' ifadesini 'Python3' ile değiştiren kodu tamamlayın.",
            codeTemplate: "metin = \"  Hoşgeldin Python2  \"\ntemiz_metin = metin.___()\nson_hali = temiz_metin.replace(___, ___)",
            correctAnswers: ["strip", "\"Python2\"", "\"Python3\""],
            options: ["strip", "replace", "\"Python2\"", "\"Python3\""],
          ),
          CodeCompletionQuestion(
              questionText: "Metnin başındaki ve sonundaki `*` karakterlerini temizleyen kodu tamamlayın.",
              codeTemplate: "baslik = \"***ÖNEMLİ***\"\ntemiz_baslik = baslik.strip(___)",
              correctAnswers: ["\"*\""],
              options: ["\" \"", "\"*\"", "\".\""]
          ),
          CodeCompletionQuestion(
              questionText: "Bir metindeki tüm boşlukları kaldırıp, ardından 'a' harflerini 'e' ile değiştiren zincirleme kodu tamamlayın.",
              codeTemplate: "veri = \"a dan z ye her sey\"\n sonuc = veri.replace(\" \", \"\").___(\"a\", \"e\")",
              correctAnswers: ["replace"],
              options: ["strip", "replace", "upper"]
          )
        ]
      }
    ]
  },

  "py_f_strings": {
    "sub_lessons": [
      {
        "title": "f-string ile Modern String Formatlama",
        "parts": [
          {"text": "Değişkenlerin değerlerini metinlerle birleştirmenin en modern, okunaklı ve verimli yolu f-string kullanmaktır."},
          {"text": "Bir metnin başına `f` harfi koyarak ve değişkenleri veya ifadeleri `{}` süslü parantezler içine yazarak oluşturulur."},
          {"text": "Eski `+` ile birleştirme yöntemine göre çok daha basittir çünkü `str()` ile tip dönüşümü yapmanıza gerek kalmaz."},
          {
            "text": "Bir kullanıcı için karşılama mesajı oluşturalım.",
            "code": "isim = \"Zeynep\"\nyas = 30\n\n# Eski Yöntem:\nprint(\"Merhaba \" + isim + \", yaşınız \" + str(yas))\n\n# f-string ile Modern Yöntem:\nprint(f\"Merhaba {isim}, yaşınız {yas}\")\n\n# İfadeler de kullanılabilir:\nprint(f\"5 yıl sonra {yas + 5} yaşında olacaksınız.\")",
            "code_explanation": "Gördüğünüz gibi f-string hem daha kısa hem de neyin nereye geleceği çok daha net. Ayrıca `{}` içinde doğrudan matematiksel işlem bile yapabildik."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Modern bir f-string oluşturmak için metnin başına hangi karakter konulmalıdır?",
            options: ["s", "p", "f"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "`urun` ve `fiyat` değişkenlerini kullanarak \"Kalem: 5 TL\" çıktısını veren f-string'i tamamla.",
            codeTemplate: "urun = \"Kalem\"\nfiyat = 5\nprint(f\"{urun}: {___} TL\")",
            correctAnswers: ["fiyat"],
            options: ["urun", "fiyat", "\"fiyat\""],
          ),
          CodeCompletionQuestion(
            questionText: "`isim` ve `puan` değişkenlerini kullanarak \"Oyuncu Ali, 100 puan aldı.\" mesajını oluşturan f-string'i tamamlayın.",
            codeTemplate: "isim = \"Ali\"\npuan = 100\nmesaj = ___\"Oyuncu {___}, {puan} puan aldı.\"",
            correctAnswers: ["f", "isim"],
            options: ["f", "s", "isim", "puan"],
          ),
          CodeCompletionQuestion(
              questionText: "Bir karenin alanını f-string içinde hesaplayarak yazdıran kodu tamamlayın.",
              codeTemplate: "kenar = 10\nprint(f\"Alanı: {kenar * ___}\")",
              correctAnswers: ["kenar"],
              options: ["kenar", "10", "2"]
          ),
          CodeCompletionQuestion(
              questionText: "Bir ismin baş harfini büyük yazarak mesaj veren f-string'i, süslü parantez içinde metot kullanarak tamamlayın.",
              codeTemplate: "isim = \"ayşe\"\nprint(f\"Hoşgeldin, {isim.___()}!\")",
              correctAnswers: ["capitalize"],
              options: ["upper", "lower", "capitalize"]
          )
        ]
      }
    ]
  },

// =======================================================================
  // BÖLÜM 3: OPERATÖRLER
  // =======================================================================

  "py_arithmetic_operators": {
    "sub_lessons": [
      {
        "title": "Aritmetik Operatörler",
        "parts": [
          {"text": "Sırada hesaplamalar var! Python'u bir hesap makinesi gibi kullanabiliriz."},
          {"text": "Toplama (+), çıkarma (-), çarpma (*) ve bölme (/) gibi temel matematiksel işlemleri yapabiliriz."},
          {"text": "Ayrıca `//` (kalansız bölme), `%` (bölümden kalan - mod alma) ve `**` (üs alma) gibi özel operatörler de vardır."},
          {
            "text": "Hadi birkaç örneğe bakalım.",
            "code": "toplam = 5 + 3   # Sonuç: 8\nfark = 10 - 2    # Sonuç: 8\nbolum = 10 / 3   # Sonuç: 3.333...\nkalan = 10 % 3   # Sonuç: 1\nus = 2 ** 4     # Sonuç: 16 (2*2*2*2)",
            "code_explanation": "`10 % 3` işlemi, 10'un 3'e bölümünden kalanı verir, yani 1. `2 ** 4` ise 2'nin 4. kuvvetini alır."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`13 % 5` işleminin sonucu nedir?",
            options: ["2.6", "2", "3"],
            correctAnswerIndex: 2, // 13 = 5*2 + 3
          ),
          CodeCompletionQuestion(
            questionText: "5 ile 4'ü çarpan ve sonucu `carpim` değişkenine atayan kodu tamamla.",
            codeTemplate: "carpim = 5 ___ 4",
            correctAnswers: ["*"],
            options: ["+", "x", "*"],
          ),
          CodeCompletionQuestion(
            questionText: "15'in 2'ye bölümünden kalanı ve 3'ün 3. kuvvetini hesaplayan kodu tamamlayın.",
            codeTemplate: "kalan = 15 ___ 2\nkuvvet = 3 ___ 3",
            correctAnswers: ["%", "**"],
            options: ["/", "%", "*", "**"],
          ),
        ]
      }
    ]
  },

  "py_assignment_operators": {
    "sub_lessons": [
      {
        "title": "Atama Operatörleri",
        "parts": [
          {"text": "Bir değişkene değer vermek için `=` operatörünü kullandık. Buna 'atama' denir."},
          {"text": "Peki bir değişkenin değerini kendi değeriyle güncellemek istersek?"},
          {"text": "Örneğin `sayac = sayac + 1` yazmak yerine, bir kısayol kullanabiliriz: `sayac += 1`."},
          {
            "text": "Bu kısayol diğer aritmetik operatörler için de geçerlidir: `+=`, `-=`, `*=`, `/=`",
            "code": "x = 10\nx += 5  # x'in değeri artık 15 (x = x + 5)\nx -= 3  # x'in değeri artık 12 (x = x - 3)\nx *= 2  # x'in değeri artık 24 (x = x * 2)",
            "code_explanation": "Bu birleşik atama operatörleri, kodu daha kısa ve okunaklı hale getirir."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`puan = 100` iken `puan -= 20` kodu çalıştırıldığında `puan` değişkeninin yeni değeri ne olur?",
            options: ["100", "20", "80"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "`bakiye` değişkeninin değerini 2 ile çarparak güncelleyen kodu tamamla.",
            codeTemplate: "bakiye = 50\nbakiye ___ 2",
            correctAnswers: ["*="],
            options: ["=", "+=", "*="],
          ),
          CodeCompletionQuestion(
            questionText: "`stok` değişkenini 10 artırıp, `fiyat` değişkenini 2'ye bölen kodları tamamlayın.",
            codeTemplate: "stok = 100\nfiyat = 50\nstok ___ 10\nfiyat ___ 2",
            correctAnswers: ["+=", "/="],
            options: ["+=", "-=", "*=", "/="],
          ),
        ]
      }
    ]
  },

  "py_comparison_operators": {
    "sub_lessons": [
      {
        "title": "Karşılaştırma Operatörleri",
        "parts": [
          {"text": "Programların karar vermesi için değerleri karşılaştırmamız gerekir."},
          {"text": "Python'da iki değeri karşılaştırmak için `==` (eşit mi?), `!=` (eşit değil mi?), `>` (büyük mü?), `<` (küçük mü?), `>=` (büyük veya eşit mi?), `<=` (küçük veya eşit mi?) operatörlerini kullanırız."},
          {"text": "DİKKAT: Değer atamak için tek eşittir (`=`), eşitliği kontrol etmek için çift eşittir (`==`) kullanılır. Bu çok yaygın bir hatadır!"},
          {
            "text": "Bu işlemlerin sonucu her zaman bir mantıksal değerdir: `True` (Doğru) ya da `False` (Yanlış).",
            "code": "yas = 18\nprint(yas == 18)  # Ekrana True yazar\nprint(yas > 20)   # Ekrana False yazar\nprint(yas != 20)  # Ekrana True yazar",
            "code_explanation": "Bu karşılaştırmalar, `if` gibi koşul ifadelerinin temelini oluşturur."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "İki değerin birbirine eşit olup olmadığını kontrol etmek için hangi operatör kullanılır?",
            options: ["=", "==", "!="],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "`sifre` değişkeninin \"12345\"e eşit OLMADIĞINI kontrol eden kodu tamamla.",
            codeTemplate: "sifre = \"abcde\"\nprint(sifre ___ \"12345\")",
            correctAnswers: ["!="],
            options: ["==", "!=", "="],
          ),
          CodeCompletionQuestion(
            questionText: "`a`'nın `b`'den küçük veya eşit olduğunu VE `a`'nın 5'e eşit olduğunu kontrol eden kodu tamamla.",
            codeTemplate: "a = 5\nb = 10\nprint(a ___ b) # True dönmeli\nprint(a ___ 5) # True dönmeli",
            correctAnswers: ["<=", "=="],
            options: [">=", "==", "<=", "!="],
          ),
        ]
      }
    ]
  },

  "py_logical_operators": {
    "sub_lessons": [
      {
        "title": "Mantıksal Operatörler: 'and'",
        "parts": [
          {"text": "Bazen birden fazla koşulu aynı anda kontrol etmemiz gerekir. İşte burada mantıksal operatörler devreye girer."},
          {"text": "İlk operatörümüz `and` (ve)."},
          {"text": "`and` ile bağlanan koşulların hepsi `True` ise sonuç `True` olur. Bir tanesi bile `False` ise sonuç `False` olur."},
          {
            "text": "Örneğin, bir kişinin hem 18 yaşından büyük olması hem de ehliyeti olması durumunu kontrol edelim.",
            "code": "yas = 20\nehliyet_var_mi = True\n\n# Her iki koşul da True olduğu için sonuç True'dur.\nif yas >= 18 and ehliyet_var_mi:\n  print(\"Araç kullanabilir.\")",
            "code_explanation": "`and` operatörü, tüm şartların aynı anda sağlanmasını gerektirir."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`True and False` işleminin sonucu nedir?",
            options: ["True", "False", "Hata verir"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Sıcaklığın 20'den büyük VE havanın güneşli olması durumunu kontrol eden kodu tamamla.",
            codeTemplate: "sicaklik = 25\nhava = \"güneşli\"\nif sicaklik > 20 ___ hava == \"güneşli\":\n  print(\"Harika bir gün!\")",
            correctAnswers: ["and"],
            options: ["or", "and", "not"],
          ),
          CodeCompletionQuestion(
            questionText: "Kullanıcı adı \"admin\" VE şifre \"1234\" ise giriş izni veren kodu tamamla.",
            codeTemplate: "k_adi = \"admin\"\nsifre = \"1234\"\nif k_adi == \"admin\" ___ sifre == ___:\n  print(\"Giriş başarılı!\")",
            correctAnswers: ["and", "\"1234\""],
            options: ["and", "or", "\"1234\"", "sifre"],
          ),
        ]
      },
      {
        "title": "Mantıksal Operatörler: 'or'",
        "parts": [
          {"text": "İkinci operatörümüz `or` (veya)."},
          {"text": "`or` ile bağlanan koşullardan en az bir tanesinin `True` olması, sonucun `True` olması için yeterlidir."},
          {"text": "Sonucun `False` olması için tüm koşulların `False` olması gerekir."},
          {
            "text": "Hafta sonuysa VEYA tatilse dışarı çıkabileceğimiz bir durumu kontrol edelim.",
            "code": "gun = \"Pazar\"\ntatil_mi = False\n\n# Koşullardan biri (gun == \"Pazar\") True olduğu için sonuç True'dur.\nif gun == \"Pazar\" or tatil_mi == True:\n  print(\"Bugün keyif günü!\")",
            "code_explanation": "`or` operatörü, şartlardan herhangi birinin sağlanmasını yeterli görür."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`False or True` işleminin sonucu nedir?",
            options: ["True", "False", "Hata verir"],
            correctAnswerIndex: 0,
          ),
          CodeCompletionQuestion(
            questionText: "Nakit VEYA kredi kartı varsa ödeme yapılabileceğini kontrol eden kodu tamamla.",
            codeTemplate: "nakit_var = False\nkart_var = True\nif nakit_var ___ kart_var:\n  print(\"Ödeme yapabilirsiniz.\")",
            correctAnswers: ["or"],
            options: ["and", "or", "not"],
          ),
          CodeCompletionQuestion(
            questionText: "Sayı 0'dan küçük VEYA 100'den büyükse \"Geçersiz Sayı\" yazdıran kodu tamamla.",
            codeTemplate: "sayi = 110\nif sayi < 0 ___ sayi > ___:\n  print(\"Geçersiz Sayı\")",
            correctAnswers: ["or", "100"],
            options: ["or", "and", "100", "0"],
          ),
        ]
      },
      {
        "title": "Mantıksal Operatörler: 'not'",
        "parts": [
          {"text": "Son mantıksal operatörümüz `not` (değil)."},
          {"text": "`not`, tek bir koşulun sonucunu tersine çevirir. `True` ise `False`, `False` ise `True` yapar."},
          {
            "text": "Genellikle bir durumun 'olmadığını' kontrol etmek için kullanılır.",
            "code": "giris_yapildi = False\n\n# giris_yapildi False olduğu için, not giris_yapildi True olur.\nif not giris_yapildi:\n  print(\"Lütfen önce giriş yapın.\")",
            "code_explanation": "`not` operatörü, bir ifadenin mantıksal zıttını alır."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`not False` işleminin sonucu nedir?",
            options: ["True", "False", "Hata verir"],
            correctAnswerIndex: 0,
          ),
          CodeCompletionQuestion(
            questionText: "Oyunun bitmemiş olduğunu (`game_over` False iken) kontrol eden kodu tamamla.",
            codeTemplate: "game_over = False\nif ___ game_over:\n  print(\"Oyun devam ediyor...\")",
            correctAnswers: ["not"],
            options: ["and", "or", "not"],
          ),
          CodeCompletionQuestion(
            questionText: "Listenin boş OLMADIĞINI kontrol eden kodu ve `len()` fonksiyonunu kullanarak tamamlayın.",
            codeTemplate: "liste = [1, 2]\nif not len(___) == ___:\n  print(\"Liste boş değil.\")",
            correctAnswers: ["liste", "0"],
            options: ["liste", "0", "1", "True"],
          ),
        ]
      }
    ]
  },

  // =======================================================================
  // BÖLÜM 4: KOŞULLAR
  // =======================================================================

  "py_if_elif_else": {
    "sub_lessons": [
      {
        "title": "Karar Vermeye Giriş: 'if' Deyimi",
        "parts": [
          {"text": "Geldik programlamanın temel taşına: Karar verme!"},
          {"text": "Programlarımızın belirli koşullara göre farklı şeyler yapmasını `if` (eğer) ile sağlarız."},
          {"text": "Bir koşul belirtiriz. Eğer bu koşul DOĞRU (`True`) ise, `if` bloğunun içindeki kod çalıştırılır."},
          {
            "text": "ÇOK ÖNEMLİ: Koşuldan sonra iki nokta üst üste (`:`) koymayı ve bloğun içindeki kodu bir tab içeriden (girintili) yazmayı unutma!",
            "code": "hava_durumu = \"yağmurlu\"\n\nif hava_durumu == \"yağmurlu\":\n  print(\"Şemsiyeni al!\") # Bu satır girintilidir.",
            "code_explanation": "`hava_durumu` değişkeni \"yağmurlu\" olduğu için koşul doğrudur ve ekrana mesaj yazılır."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "'if' bloğunun içindeki kod hangi durumda çalışır?",
            options: ["Koşul yanlış olduğunda", "Koşul doğru olduğunda", "Her zaman"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "`x` değişkeni 10'dan büyükse ekrana \"Büyük\" yazdıran `if` satırını tamamla.",
            codeTemplate: "x = 20\n___ x > 10:\n  print(\"Büyük\")",
            correctAnswers: ["if"],
            options: ["if", "for", "else"],
          ),
          CodeCompletionQuestion(
            questionText: "Parolanın '12345'e eşit olup olmadığını kontrol edip ekrana 'Giriş Başarılı' yazan kodu tamamla.",
            codeTemplate: "parola = \"12345\"\nif parola == ___:\n  print(___)",
            correctAnswers: ["\"12345\"", "\"Giriş Başarılı\""],
            options: ["\"12345\"", "parola", "\"Giriş Başarılı\"", "\"Hatalı Parola\""],
          ),
        ]
      },
      {
        "title": "Alternatif Durum: 'else' Deyimi",
        "parts": [
          {"text": "Peki ya `if` koşulu YANLIŞ (`False`) ise ne olacak?"},
          {"text": "İşte bu noktada `else` (değilse) devreye girer."},
          {"text": "`else` ifadesi, kendinden önceki `if` koşulu sağlanmadığında çalışacak olan kod bloğunu belirtir."},
          {
            "text": "ÖNEMLİ: `else` ifadesinin kendi koşulu yoktur, sadece `if`'in alternatifidir ve ondan sonra gelmelidir.",
            "code": "yas = 15\n\nif yas >= 18:\n  print(\"Ehliyet alabilirsiniz.\")\nelse:\n  print(\"Henüz ehliyet alamazsınız.\")",
            "code_explanation": "`yas` 18'den küçük olduğu için `if` koşulu `False` olur ve `else` bloğu çalışır."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir `if` koşulu sağlanmadığında çalışacak olan alternatif kod bloğu hangisiyle belirtilir?",
            options: ["if", "elif", "else"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Hava \"güneşli\" değilse \"Evde kal\" yazan kodu tamamla.",
            codeTemplate: "hava = \"karlı\"\nif hava == \"güneşli\":\n  print(\"Plaja git\")\n___:\n  print(\"Evde kal\")",
            correctAnswers: ["else"],
            options: ["if", "elif", "else"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir sayı çift ise \"Çift\", değilse \"Tek\" yazan kodu tamamla.",
            codeTemplate: "sayi = 7\nif sayi % 2 == 0:\n  print(\"Çift\")\n___:\n  print(___)",
            correctAnswers: ["else", "\"Tek\""],
            options: ["elif", "else", "\"Tek\"", "\"Çift\""],
          ),
        ]
      },
      {
        "title": "Çoklu Koşullar: 'elif' Deyimi",
        "parts": [
          {"text": "İkiden fazla durum varsa ne olacak? Mesela bir notun Harf notunu bulmak gibi."},
          {"text": "İşte burada `elif` (değilse eğer) imdadımıza yetişir."},
          {"text": "`elif` ile ilk `if` koşulu yanlışsa yeni bir koşul kontrol edebiliriz. İstediğimiz kadar `elif` kullanabiliriz."},
          {
            "text": "Sıralama şöyledir: `if` ile başla, `elif`'ler ile devam et, her şey yanlışsa en son `else` ile bitir.",
            "code": "not_ort = 88\n\nif not_ort >= 90:\n  print(\"Harf Notu: A\")\nelif not_ort >= 80:\n  print(\"Harf Notu: B\")\nelif not_ort >= 70:\n  print(\"Harf Notu: C\")\nelse:\n  print(\"Harf Notu: F\")",
            "code_explanation": "Python, koşulları yukarıdan aşağıya kontrol eder. Doğru olan ilk bloğu (`not_ort >= 80`) çalıştırır ve diğerlerini atlar. Ekrana 'Harf Notu: B' yazar."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Birden fazla ve birbirini dışlayan koşulları kontrol etmek için en uygun yapı hangisidir?",
            options: ["Sadece if", "if-elif-else", "if-if-if"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Sayı 0'dan büyükse \"Pozitif\", küçükse \"Negatif\" yazan `elif` bloğunu tamamla.",
            codeTemplate: "sayi = -5\nif sayi > 0:\n  print(\"Pozitif\")\n___ sayi < 0:\n  print(\"Negatif\")",
            correctAnswers: ["elif"],
            options: ["if", "elif", "else"],
          ),
          CodeCompletionQuestion(
            questionText: "Sayı pozitifse \"Pozitif\", negatifse \"Negatif\", sıfırsa \"Sıfır\" yazan kodu tamamla.",
            codeTemplate: "sayi = 0\nif sayi > 0:\n  print(\"Pozitif\")\n___ sayi < 0:\n  print(\"Negatif\")\n___:\n  print(\"Sıfır\")",
            correctAnswers: ["elif", "else"],
            options: ["if", "elif", "else", "then"],
          ),
        ]
      }
    ]
  },

  "py_nested_conditions": {
    "sub_lessons": [
      {
        "title": "İç İçe Koşul Blokları",
        "parts": [
          {"text": "Bazen bir karar, başka bir karara bağlı olabilir."},
          {"text": "Bu durumlarda, bir `if` bloğunun içine başka bir `if`, `elif` veya `else` bloğu yazabiliriz. Buna 'iç içe koşul' denir."},
          {"text": "Unutma, her iç blok bir öncekinden daha fazla girintili olmalıdır!"},
          {
            "text": "Bir kullanıcının giriş yapıp yapmadığını, sonra da admin olup olmadığını kontrol edelim.",
            "code": "giris_yapti = True\nis_admin = False\n\nif giris_yapti:\n  print(\"Hoş geldiniz!\")\n  if is_admin:\n    print(\"Yönetim paneline erişebilirsiniz.\")\n  else:\n    print(\"Normal kullanıcı yetkilerine sahipsiniz.\")\nelse:\n  print(\"Lütfen önce giriş yapın.\")",
            "code_explanation": "Önce dıştaki `if` çalışıyor. O doğru olduğu için içteki `if/else` bloğuna geçiliyor ve admin durumu kontrol ediliyor."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "İç içe koşul bloklarında dikkat edilmesi gereken en önemli yazım kuralı nedir?",
            options: ["Yorum satırları", "Girintileme (Indentation)", "Değişken adları"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            // HATA BURADAYDI: "questionText": yerine questionText": yazılmıştı.
            questionText: "Bir sayının 0'dan büyük ve çift olup olmadığını kontrol eden iç içe koşul bloğunu tamamla.",
            codeTemplate: "sayi = 10\nif sayi > 0:\n  if sayi % 2 == ___:\n    print(\"Sayı pozitif ve çifttir.\")",
            correctAnswers: ["0"],
            options: ["0", "1", "2"],
          ),
          CodeCompletionQuestion(
            questionText: "Hafta sonuysa, havanın durumuna göre öneri yapan iç içe koşul bloğunu tamamlayın.",
            codeTemplate: "gun = \"Pazar\"\nhava = \"güneşli\"\nif gun == \"Pazar\":\n  if hava == ___:\n    print(\"Plaja git!\")\n  ___:\n    print(\"Evde film izle.\")",
            correctAnswers: ["\"güneşli\"", "else"],
            options: ["\"güneşli\"", "if", "else", "elif"],
          ),
          CodeCompletionQuestion(
              questionText: "Kullanıcının hem 18 yaşından büyük veya eşit olduğunu hem de bileti olup olmadığını kontrol eden iç içe koşulu tamamlayın.",
              codeTemplate: "yas = 20\nbilet_var = True\nif yas >= 18:\n  if bilet_var == ___:\n    print(\"Girebilirsiniz.\")",
              correctAnswers: ["True"],
              options: ["True", "False", "yas"]
          ),
          CodeCompletionQuestion(
              questionText: "Bir ürün stokta varsa ve fiyatı 100 TL'den azsa indirim uygulayan kodu tamamlayın.",
              codeTemplate: "stokta_mi = True\nfiyat = 80\nif ___:\n  if fiyat < ___:\n    print(\"İndirim uygulandı!\")",
              correctAnswers: ["stokta_mi", "100"],
              options: ["stokta_mi", "fiyat", "100", "True"]
          )
        ]
      }
    ]
  },

  // =======================================================================
  // BÖLÜM 5: DÖNGÜLER
  // =======================================================================

  "py_for_loop": {
    "sub_lessons": [
      {
        "title": "for Döngüsü",
        "parts": [
          {"text": "Tekrar eden işleri yapmanın en kolay yolu döngülerdir. İlk döngümüz: `for`!"},
          {"text": "`for` döngüsü, bir dizi (liste, metin vb.) üzerindeki her bir eleman için sırayla çalışır."},
          {"text": "Genel yapısı `for eleman in dizi:` şeklindedir. 'eleman' kelimesi yerine istediğimiz değişken adını verebiliriz."},
          {
            "text": "Bir alışveriş listesindeki her bir maddeyi ekrana yazdıralım.",
            "code": "alisveris_listesi = [\"elma\", \"süt\", \"ekmek\"]\n\nfor urun in alisveris_listesi:\n  print(urun)",
            "code_explanation": "Bu kod, `alisveris_listesi` içindeki her bir `urun` için `print(urun)` komutunu çalıştırır ve ekrana sırasıyla 'elma', 'süt', 'ekmek' yazar."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`for` döngüsü ne işe yarar?",
            options: ["Sadece bir kere çalışır", "Bir koşul doğru olduğu sürece çalışır", "Bir dizi üzerindeki elemanları tek tek gezer"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "\"Python\" kelimesinin her harfini alt alta yazdıran kodu tamamla.",
            codeTemplate: "for harf in ___:\n  print(harf)",
            correctAnswers: ["\"Python\""],
            options: ["\"Python\"", "harfler", "kelime"],
          ),
          CodeCompletionQuestion(
            questionText: "`sayilar` listesindeki her sayıyı ekrana yazdıran döngüyü tamamla.",
            codeTemplate: "sayilar = [1, 2, 3]\n___ sayi ___ sayilar:\n  print(sayi)",
            correctAnswers: ["for", "in"],
            options: ["for", "in", "while", "if"],
          ),
          CodeCompletionQuestion(
            questionText: "`sayilar` listesindeki her elemanın 2 katını `yeni_liste`'ye ekleyen kodu tamamla.",
            codeTemplate: "sayilar = [10, 20]\nyeni_liste = []\nfor sayi in ___:\n  yeni_liste.append(sayi * ___)",
            correctAnswers: ["sayilar", "2"],
            options: ["sayilar", "yeni_liste", "2", "sayi"],
          ),
          CodeCompletionQuestion(
            questionText: "Ekrana 4 kere 'Merhaba' yazdırmak için döngüyü tamamlayın. Döngü değişkeni kullanılmayacaksa `_` kullanılabilir.",
            codeTemplate: "for ___ in range(___):\n  print(\"Merhaba\")",
            correctAnswers: ["_", "4"],
            options: ["i", "_", "4", "5"],
          ),
        ]
      }
    ]
  },

  "py_while_loop": {
    "sub_lessons": [
      {
        "title": "while Döngüsü",
        "parts": [
          {"text": "Diğer bir döngü türümüz `while` (olduğu sürece) döngüsüdür."},
          {"text": "`while` döngüsü, belirli bir koşul `True` olduğu sürece içindeki kod bloğunu tekrar tekrar çalıştırır."},
          {"text": "DİKKAT! Döngü koşulunu bir noktada `False` yapacak bir değişiklik olmazsa, program 'sonsuz döngü'ye girer ve kilitlenir."},
          {
            "text": "1'den 5'e kadar olan sayıları ekrana yazdıralım.",
            "code": "sayac = 1\n\nwhile sayac <= 5:\n  print(sayac)\n  sayac += 1 # Bu satır sonsuz döngüyü engeller!",
            "code_explanation": "`sayac` değişkeni 5'ten küçük veya eşit olduğu sürece döngü çalışır. Her adımda `sayac` 1 artırılır. `sayac` 6 olduğunda koşul `False` olur ve döngü durur."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir `while` döngüsünün sonsuza dek çalışmasını önlemek için ne yapılmalıdır?",
            options: ["Hiçbir şey, kendi durur", "Döngü koşulunu değiştirecek bir ifade eklenmelidir", "`break` komutu zorunludur"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "`x` 0'dan büyük olduğu sürece `x`'i ekrana yazdırıp değerini 1 azaltan döngüyü tamamla.",
            codeTemplate: "x = 3\n___ x > 0:\n  print(x)\n  x -= 1",
            correctAnswers: ["while"],
            options: ["if", "for", "while"],
          ),
          CodeCompletionQuestion(
            questionText: "Kullanıcı doğru şifreyi (`123`) girene kadar tekrar tekrar şifre soran kodu tamamla.",
            codeTemplate: "sifre = \"\"\n___ sifre != \"123\":\n  sifre = ___( \"Şifreyi girin: \" )",
            correctAnswers: ["while", "input"],
            options: ["while", "if", "print", "input"],
          ),
          CodeCompletionQuestion(
            questionText: "`sayac` 5'ten başlayıp 0 olana kadar (0 dahil) geriye sayan ve her sayıyı yazdıran döngüyü tamamlayın.",
            codeTemplate: "sayac = 5\nwhile sayac >= ___:\n  print(sayac)\n  sayac -= ___",
            correctAnswers: ["0", "1"],
            options: ["0", "1", "5", "-1"],
          ),
          CodeCompletionQuestion(
            questionText: "`calisiyor` bayrağı `True` olduğu sürece çalışan bir `while` döngüsü oluşturun.",
            codeTemplate: "calisiyor = True\n___ calisiyor:\n  print(\"Döngü çalışıyor...\")\n  calisiyor = False # Döngüyü sonlandırmak için",
            correctAnswers: ["while"],
            options: ["for", "while", "if", "break"],
          ),
        ]
      }
    ]
  },

  "py_break_continue": {
    "sub_lessons": [
      {
        "title": "Döngüden Çıkmak: 'break'",
        "parts": [
          {"text": "Bazen döngülerin akışını kontrol etmek isteriz. Bunun için `break` ve `continue` ifadeleri vardır."},
          {"text": "`break` (kırmak), içinde bulunduğu döngüyü o anda tamamen sonlandırır. Döngü, daha fazla eleman olsa bile durur ve program döngüden sonraki koddan devam eder."},
          {
            "text": "Listede 'anahtar' kelimesini bulduğumuz an aramayı durduralım.",
            "code": "esyalar = [\"masa\", \"sandalye\", \"anahtar\", \"kitap\"]\n\nfor esya in esyalar:\n  if esya == \"anahtar\":\n    print(\"Anahtar bulundu!\")\n    break # Döngüyü burada kır ve çık\n  print(esya)",
            "code_explanation": "Kod, 'anahtar'ı bulduğunda mesajı yazdırır ve `break` sayesinde 'kitap' elemanını hiç kontrol etmeden döngüden çıkar."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir döngüyü tamamen sonlandıran komut hangisidir?",
            options: ["continue", "stop", "break"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "5'e ulaşıldığında döngüyü tamamen durduran kodu tamamla.",
            codeTemplate: "i = 0\nwhile True: # Sonsuz döngü\n  print(i)\n  if i == 5:\n    ___\n  i += 1",
            correctAnswers: ["break"],
            options: ["continue", "break", "stop"],
          ),
          CodeCompletionQuestion(
            questionText: "Kullanıcı 'çıkış' yazana kadar isim soran, 'çıkış' yazdığında ise döngüyü kıran kodu tamamlayın.",
            codeTemplate: "while True:\n  isim = input(\"İsminiz (çıkış için 'çıkış' yazın): \")\n  if isim == ___:\n    ___",
            correctAnswers: ["\"çıkış\"", "break"],
            options: ["\"çıkış\"", "continue", "break", "\"isim\""],
          ),
          CodeCompletionQuestion(
            questionText: "`sayilar` listesinde 0'dan küçük bir sayıya rastlandığında döngüyü sonlandıran kodu tamamlayın.",
            codeTemplate: "sayilar = [10, 25, 5, -2, 8]\nfor sayi in sayilar:\n  if sayi < 0:\n    ___\n  print(sayi)",
            correctAnswers: ["break"],
            options: ["continue", "exit", "break"],
          ),
          CodeCompletionQuestion(
            questionText: "İç içe döngüde, içteki döngüde `j` değeri 2 olduğunda sadece içteki döngüyü kıran kodu tamamlayın.",
            codeTemplate: "for i in range(2):\n  for j in range(4):\n    if j == 2:\n      ___\n    print(f\"i={i}, j={j}\")",
            correctAnswers: ["break"],
            options: ["break", "continue", "pass"],
          ),
        ]
      },
      {
        "title": "Adımı Atlamak: 'continue'",
        "parts": [
          {"text": "`continue` (devam et) ise döngüyü kırmaz, sadece mevcut adımı atlar ve döngünün bir sonraki elemanıyla devam eder."},
          {"text": "Yani `continue` komutundan sonra gelen kodlar, o adım için çalıştırılmaz."},
          {
            "text": "Sadece pozitif sayıları ekrana yazdıralım, negatifleri atlayalım.",
            "code": "sayilar = [1, -2, 3, -4, 5]\n\nfor sayi in sayilar:\n  if sayi < 0:\n    continue # Bu adımı atla, sonraki sayıya geç\n  print(sayi)",
            "code_explanation": "Kod, `-2` ve `-4` ile karşılaştığında `continue` komutu çalışır. `print(sayi)` satırı o adımlar için atlanır ve döngü bir sonraki elemanla devam eder. Çıktı 1, 3, 5 olur."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir döngünün mevcut adımını atlayıp bir sonrakine geçmesini sağlayan komut hangisidir?",
            options: ["break", "continue", "skip"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Sadece tek sayıları ekrana yazdıran (çift sayıları atlayan) döngüyü tamamla.",
            codeTemplate: "for i in range(10):\n  if i % 2 == 0:\n    ___\n  print(i)",
            correctAnswers: ["continue"],
            options: ["break", "continue", "pass"],
          ),
          CodeCompletionQuestion(
            questionText: "Listede 'yasaklı' kelimesi hariç tüm kelimeleri yazdıran kodu tamamla.",
            codeTemplate: "kelimeler = [\"elma\", \"armut\", \"yasaklı\", \"kiraz\"]\nfor kelime in kelimeler:\n  if kelime == ___:\n    ___\n  print(kelime)",
            correctAnswers: ["\"yasaklı\"", "continue"],
            options: ["\"yasaklı\"", "continue", "break", "print"],
          ),
          CodeCompletionQuestion(
            questionText: "`x` 5'ten küçükken, `x`'in değeri 3 ise o adımı atlayan, diğer adımlarda ekrana yazdıran kodu tamamlayın.",
            codeTemplate: "x = 0\nwhile x < 5:\n  x += 1\n  if x == 3:\n    ___\n  print(x)",
            correctAnswers: ["continue"],
            options: ["break", "continue", "skip"],
          ),
          CodeCompletionQuestion(
            questionText: "Listede metin (string) olmayan elemanları atlayıp sadece metinleri yazdıran kodu tamamlayın.",
            codeTemplate: "karma_liste = [\"a\", 1, \"b\", None, \"c\"]\nfor eleman in karma_liste:\n  if not isinstance(eleman, str):\n    ___\n  print(___)",
            correctAnswers: ["continue", "eleman"],
            options: ["break", "continue", "eleman", "str"],
          ),
        ]
      }
    ]
  },

  "py_range_function": {
    "sub_lessons": [
      {
        "title": "range() Fonksiyonu",
        "parts": [
          {"text": "`for` döngüsünü belirli bir sayıda çalıştırmak istediğimizde `range()` fonksiyonu çok işe yarar."},
          {"text": "`range()` bizim için belirli bir aralıkta sayılar üretir."},
          {"text": "`range(5)`: 0'dan başlayıp 5'e kadar (5 dahil değil) sayılar üretir: 0, 1, 2, 3, 4."},
          {"text": "`range(2, 6)`: 2'den başlayıp 6'ya kadar (6 dahil değil) sayılar üretir: 2, 3, 4, 5."},
          {"text": "`range(0, 10, 2)`: 0'dan başlayıp 10'a kadar 2'şer atlayarak sayılar üretir: 0, 2, 4, 6, 8."},
          {
            "text": "`for` döngüsü ile birlikte kullanımı çok yaygındır.",
            "code": "# Ekrana 5 kez 'Merhaba' yazar\nfor i in range(5):\n  print(f\"{i+1}. Merhaba\")\n\n# Çift sayıları yazdıralım\nfor sayi in range(0, 11, 2):\n  print(sayi)",
            "code_explanation": "İlk döngü 5 kez çalışır. İkinci döngü ise 0'dan 10'a kadar olan çift sayıları yazar."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`range(1, 5)` hangi sayı dizisini üretir?",
            options: ["1, 2, 3, 4, 5", "1, 2, 3, 4", "0, 1, 2, 3, 4"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Ekrana 3 kez \"Tekrar\" yazdıracak döngüyü `range()` kullanarak tamamla.",
            codeTemplate: "for _ in ___:\n  print(\"Tekrar\")",
            correctAnswers: ["range(3)"],
            options: ["range(3)", "3", "list(3)"],
          ),
          CodeCompletionQuestion(
            questionText: "10'dan başlayıp 20'ye kadar (dahil değil) 3'er 3'er sayan kodu tamamla.",
            codeTemplate: "for i in range(___, ___, ___):\n  print(i)",
            correctAnswers: ["10", "20", "3"],
            options: ["10", "20", "3", "1"],
          ),
          CodeCompletionQuestion(
            questionText: "5'ten 1'e kadar (1 dahil) geriye doğru sayan bir `range` oluşturun.",
            codeTemplate: "for i in range(5, 0, ___):\n  print(i)",
            correctAnswers: ["-1"],
            options: ["-1", "0", "1"],
          ),
          CodeCompletionQuestion(
            questionText: "`range(0, 8, 2)`'nin ürettiği sayıları bir listeye çeviren kodu tamamlayın.",
            codeTemplate: "cift_sayilar = ___ (range(0, 8, ___))",
            correctAnswers: ["list", "2"],
            options: ["list", "tuple", "2", "1"],
          ),
        ]
      }
    ]
  },

  "py_enumerate_zip": {
    "sub_lessons": [
      {
        "title": "enumerate() Fonksiyonu",
        "parts": [
          {"text": "Döngüde hem elemanın kendisine hem de onun indeksine (sıra numarasına) ihtiyacımız olduğunda `enumerate()` kullanırız."},
          {"text": "`enumerate()`, bize her adımda (indeks, eleman) şeklinde bir çift verir."},
          {
            "text": "Öğrencileri numaralarıyla birlikte listeleyelim.",
            "code": "ogrenciler = [\"Ali\", \"Veli\", \"Ayşe\"]\n\nfor index, ogrenci in enumerate(ogrenciler):\n  print(f\"{index + 1}. Öğrenci: {ogrenci}\")",
            "code_explanation": "`enumerate` sayesinde hem `index` (0, 1, 2) hem de `ogrenci` ('Ali', 'Veli', 'Ayşe') değişkenlerine aynı anda sahip olduk. Ekrana daha anlamlı bir çıktı için `index + 1` kullandık."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`enumerate()` fonksiyonu bir döngüde neyi sağlar?",
            options: ["Sadece elemanları", "Sadece indeksleri", "Hem indeksi hem de elemanı"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "`meyveler` listesini indeksleriyle birlikte yazdıran kodu tamamlayın.",
            codeTemplate: "meyveler = [\"elma\", \"muz\"]\nfor index, meyve in ___ (meyveler):\n  print(index, meyve)",
            correctAnswers: ["enumerate"],
            options: ["range", "enumerate", "zip"],
          ),
          CodeCompletionQuestion(
            questionText: "Kodu, hem indeksi hem de harfi alacak şekilde tamamlayın.",
            codeTemplate: "for ___, ___ in enumerate(\"abc\"):\n  print(index, harf)",
            correctAnswers: ["index", "harf"],
            options: ["index", "harf", "i", "x"],
          ),
          CodeCompletionQuestion(
            questionText: "Listeyi numaralandırırken 1'den başlamak için `enumerate` fonksiyonunun `start` parametresini kullanın.",
            codeTemplate: "gorevler = [\"Çalış\", \"Uyu\"]\nfor no, gorev in enumerate(gorevler, start=___):\n  print(f\"{no}. {gorev}\")",
            correctAnswers: ["1"],
            options: ["0", "1", "start"],
          ),
          CodeCompletionQuestion(
            questionText: "`enumerate` ile gelen demeti (tuple) `item` değişkenine alıp, içindeki indekse ve değere erişen kodu tamamlayın.",
            codeTemplate: "for item in enumerate([\'A\', \'B\']):\n  indeks = item[___]\n  deger = item[___]\n  print(f\"İndeks: {indeks}, Değer: {deger}\")",
            correctAnswers: ["0", "1"],
            options: ["0", "1", "indeks", "deger"],
          ),
        ]
      },
      {
        "title": "zip() Fonksiyonu",
        "parts": [
          {"text": "Elimizde birden fazla liste varsa ve bu listelerin elemanlarını karşılıklı olarak birleştirmek istiyorsak `zip()` fonksiyonunu kullanırız."},
          {"text": "`zip()`, aynı indeksteki elemanları bir araya getirerek yeni çiftler (veya üçlüler, dörtlüler...) oluşturur."},
          {"text": "Döngü, en kısa liste bittiğinde durur."},
          {
            "text": "Ürünleri ve fiyatlarını eşleştirerek yazdıralım.",
            "code": "urunler = [\"Laptop\", \"Fare\", \"Klavye\"]\nfiyatlar = [15000, 250, 500]\n\nfor urun, fiyat in zip(urunler, fiyatlar):\n  print(f\"{urun}: {fiyat} TL\")",
            "code_explanation": "`zip` fonksiyonu, `urunler` listesinin ilk elemanıyla `fiyatlar` listesinin ilk elemanını, sonra ikincileri, sonra da üçüncüleri eşleştirerek döngünün her adımında bize verir."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`zip()` fonksiyonu ne işe yarar?",
            options: ["Listeleri birleştirip tek bir liste yapar", "Listeleri karşılıklı olarak eşleştirir", "Listeleri sıralar"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "İki listeyi `zip` kullanarak eşleştiren kodu tamamla.",
            codeTemplate: "adlar = [\"Can\", \"Ece\"]\nyaslar = [30, 25]\nfor ad, yas in ___ (adlar, yaslar):\n  print(ad, yas)",
            correctAnswers: ["zip"],
            options: ["range", "enumerate", "zip"],
          ),
          CodeCompletionQuestion(
            questionText: "Öğrencileri notlarıyla eşleştiren döngünün değişkenlerini ve fonksiyonunu tamamlayın.",
            codeTemplate: "ogrenciler = [\"Aslı\", \"Berk\"]\nnotlar = [85, 92]\nfor ___, ___ in ___ (ogrenciler, notlar):\n  print(f\"{ogrenci}: {notu}\")",
            correctAnswers: ["ogrenci", "notu", "zip"],
            options: ["ogrenci", "notu", "zip", "enumerate"],
          ),
          CodeCompletionQuestion(
            questionText: "Üç listeyi `zip` ile birleştirerek öğrenci, ders ve not bilgilerini yazdıran kodu tamamlayın.",
            codeTemplate: "ogrenciler = [\"Ali\"]\ndersler = [\"Mat\"]\nnotlar = [90]\nfor ogr, ders, notu in ___(ogrenciler, ___, notlar):\n  print(f\"{ogr}, {ders}: {notu}\")",
            correctAnswers: ["zip", "dersler"],
            options: ["zip", "enumerate", "dersler", "ogrenciler"],
          ),
          CodeCompletionQuestion(
            questionText: "`zip` fonksiyonu en kısa listeye göre çalışır. Bu döngünün kaç kere döneceğini düşünerek kodu tamamlayın.",
            codeTemplate: "sayilar = [1, 2, 3]\nharfler = [\'a\', \'b\']\nfor sayi, harf in zip(___, ___):\n  print(sayi, harf)",
            correctAnswers: ["sayilar", "harfler"],
            options: ["sayilar", "harfler", "range(2)", "range(3)"],
          ),
        ]
      }
    ]
  },

// =======================================================================
// BÖLÜM 6: VERİ KOLEKSİYONLARI
// =======================================================================

  "py_lists": {
    "sub_lessons": [
      {
        "title": "Listeler: Giriş ve Erişim",
        "parts": [
          {"text": "Birden çok öğeyi bir arada tutmanın en yaygın yolu Listelerdir."},
          {"text": "Listeler, köşeli parantez `[]` ile oluşturulur ve içindeki elemanlar virgülle ayrılır."},
          {"text": "Elemanlara, 0'dan başlayan 'indeks' numaralarıyla erişiriz."},
          {"text": "Listelerin en önemli özelliği, 'değiştirilebilir' (mutable) olmalarıdır. Yani oluşturduktan sonra elemanlarını değiştirebiliriz."},
          {
            "text": "Birkaç temel liste işlemine bakalım.",
            "code": "meyveler = [\"elma\", \"muz\", \"çilek\"]\n\nprint(meyveler[0]) # İlk elemana erişim -> elma\nprint(meyveler[2]) # Üçüncü elemana erişim -> çilek\n\nmeyveler[1] = \"kiraz\" # İkinci elemanı değiştirme\nprint(meyveler)       # Sonuç: ['elma', 'kiraz', 'çilek']",
            "code_explanation": "`[0]` ile ilk elemana ulaştık. `[1] = ...` ile de mevcut bir elemanı güncelledik."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Listelerde ilk elemanın indeksi kaçtır?",
            options: ["1", "ilk", "0"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "`renkler` listesinin ikinci elemanı olan 'mavi'ye erişen kodu tamamla.",
            codeTemplate: "renkler = [\"kırmızı\", \"mavi\", \"yeşil\"]\nikinci_renk = renkler[___]",
            correctAnswers: ["1"],
            options: ["0", "1", "2"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir `sayilar` listesi oluşturup ilk elemanını 10, ikinci elemanını 20 yapın.",
            codeTemplate: "sayilar = [0, 0]\nsayilar[___] = 10\nsayilar[___] = 20",
            correctAnswers: ["0", "1"],
            options: ["0", "1", "2", "sayilar"],
          ),
          CodeCompletionQuestion(
            questionText: "Listenin son elemanına negatif indeksleme kullanarak erişin.",
            codeTemplate: "liste = [10, 20, 30]\nson_eleman = liste[___]",
            correctAnswers: ["-1"],
            options: ["-1", "son", "len(liste)"],
          ),
          CodeCompletionQuestion(
            questionText: "Listenin ikinci elemanından başlayıp dördüncü elemanına kadar (dördüncü dahil değil) olan bölümünü dilimleme (slicing) ile alın.",
            codeTemplate: "harfler = [\'a\', \'b\', \'c\', \'d\', \'e\']\nalt_liste = harfler[___:___]",
            correctAnswers: ["1", "4"],
            options: ["1", "4", "2", "5"],
          ),
        ]
      },
      {
        "title": "Liste Metotları",
        "parts": [
          {"text": "Listelerle çalışmayı kolaylaştıran birçok hazır fonksiyon (metot) vardır."},
          {"text": "`.append(eleman)`: Listenin sonuna yeni bir eleman ekler."},
          {"text": "`.remove(eleman)`: Listeden belirtilen elemanı (ilk bulduğunu) siler."},
          {"text": "`.pop(indeks)`: Belirtilen indeksteki elemanı siler ve geri döndürür. İndeks verilmezse son elemanı siler."},
          {"text": "`len(liste)`: Listenin eleman sayısını verir."},
          {
            "text": "Bu metotların kullanımını görelim.",
            "code": "notlar = [80, 95]\nnotlar.append(100)      # [80, 95, 100]\n\nnotlar.remove(80)       # [95, 100]\n\nson_not = notlar.pop()  # son_not = 100, notlar = [95]\n\nprint(f\"Kalan not sayısı: {len(notlar)}\")",
            "code_explanation": "append ile ekledik, remove ile sildik, pop ile son elemanı çekip aldık ve len ile kalan eleman sayısını öğrendik."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir listenin sonuna eleman eklemek için hangi metot kullanılır?",
            options: ["add()", "insert()", "append()"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "`harfler` listesinden 'b' elemanını silen kodu tamamla.",
            codeTemplate: "harfler = ['a', 'b', 'c']\nharfler.___('b')",
            correctAnswers: ["remove"],
            options: ["delete", "remove", "pop"],
          ),
          CodeCompletionQuestion(
            questionText: "`rakamlar` listesine 4'ü ekleyip, sonra da son elemanı silen kodları tamamlayın.",
            codeTemplate: "rakamlar = [1, 2, 3]\nrakamlar.___ (4)\nrakamlar.___ ()",
            correctAnswers: ["append", "pop"],
            options: ["add", "append", "remove", "pop"],
          ),
          CodeCompletionQuestion(
            questionText: "`.insert()` metodunu kullanarak listenin 1. indeksine 'x' elemanını ekleyin.",
            codeTemplate: "liste = [\'a\', \'b\', \'c\']\nliste.insert(___, ___)",
            correctAnswers: ["1", "\'x\'"],
            options: ["1", "\'x\'", "0", "\'a\'"],
          ),
          CodeCompletionQuestion(
            questionText: "Listenin eleman sayısını `len` ile bulup, `pop()` metodu ile son elemanı silen kodu tamamlayın.",
            codeTemplate: "sayilar = [5, 10, 15]\nuzunluk = ___(sayilar)\nson_eleman = sayilar.___()",
            correctAnswers: ["len", "pop"],
            options: ["len", "pop", "size", "remove"],
          ),
        ]
      }
    ]
  },

  "py_tuple_set": {
    "sub_lessons": [
      {
        "title": "Demetler (Tuples)",
        "parts": [
          {"text": "Demetler (Tuples), listelere çok benzer ama çok önemli bir farkları vardır: 'değiştirilemezler' (immutable)."},
          {"text": "Normal parantez `()` ile oluşturulurlar."},
          {"text": "Bir demet oluşturulduktan sonra içeriği asla değiştirilemez, eleman eklenemez veya silinemez."},
          {
            "text": "Bu özellik, yanlışlıkla değiştirilmemesi gereken verileri (örneğin, koordinatlar, ayarlar) saklamak için onları çok güvenli yapar.",
            "code": "koordinatlar = (10.0, 20.5) # Demet oluşturma\nprint(koordinatlar[0]) # Elemana erişim listelerle aynı\n\n# Bu kod HATA verir!\n# koordinatlar[0] = 5.0",
            "code_explanation": "Elemanlara indeks ile erişebiliriz, ancak atama operatörü `=` ile bir elemanı değiştirmeye çalıştığımızda Python hata verecektir."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Listeler ve Demetler arasındaki temel fark nedir?",
            options: ["Listeler sayı, demetler metin tutar", "Listeler değiştirilebilir, demetler değiştirilemez", "Demetler daha yavaştır"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Tek elemanlı bir demet oluştururken elemandan sonra virgül koymak zorunludur. Bu kurala uygun kodu tamamla.",
            codeTemplate: "tek_elemanli_demet = (\"yalnız\"___)",
            correctAnswers: [","],
            options: [";", ":", ","],
          ),
          CodeCompletionQuestion(
            questionText: "Üç renkten oluşan bir demet (tuple) oluştur ve parantezleri tamamla.",
            codeTemplate: "renk_demeti = ___\"kırmızı\", \"yeşil\", \"mavi\"___",
            correctAnswers: ["(", ")"],
            options: ["[", "]", "{", "}", "(", ")"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir demetin elemanlarını ayrı değişkenlere atayan 'unpacking' işlemini tamamlayın.",
            codeTemplate: "koordinat = (10, 20)\n___, ___ = koordinat",
            correctAnswers: ["x", "y"],
            options: ["x", "y", "koordinat[0]", "koordinat[1]"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir demet içindeki belirli bir elemanın kaç kere tekrar ettiğini `.count()` metodu ile bulun.",
            codeTemplate: "notlar = (100, 85, 90, 85, 85)\ntekrar_sayisi = notlar.___(___)",
            correctAnswers: ["count", "85"],
            options: ["count", "find", "85", "90"],
          ),
        ]
      },
      {
        "title": "Kümeler (Sets)",
        "parts": [
          {"text": "Kümeler (Sets), matematikteki kümeler gibidir: sırasızdırlar ve her elemandan sadece bir tane barındırırlar."},
          {"text": "En önemli kullanım amacı, bir listedeki tekrar eden elemanları (duplicates) yok etmektir."},
          {"text": "`set()` fonksiyonu ile veya süslü parantez `{}` ile oluşturulurlar (ama boş küme için `{}` kullanamayız, o boş sözlük oluşturur, `set()` kullanmalıyız)."},
          {
            "text": "Tekrar eden sayıları olan bir listeden benzersiz sayıları nasıl elde ettiğimize bakalım.",
            "code": "sayilar = [1, 2, 2, 3, 4, 4, 4, 5]\nbenzersiz_sayilar = set(sayilar)\nprint(benzersiz_sayilar) # Sonuç: {1, 2, 3, 4, 5}",
            "code_explanation": "`set()` fonksiyonuna listeyi verdiğimizde, otomatik olarak tekrar eden tüm elemanları atar ve bize sadece benzersiz elemanları içeren bir küme döndürür."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Kümelerin en belirgin ve kullanışlı özelliği nedir?",
            options: ["Elemanları sıralı tutması", "Her elemanı benzersiz (tek) olması", "Anahtar-değer çiftleri içermesi"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "`harfler` listesindeki tekrar edenleri temizlemek için kodu tamamla.",
            codeTemplate: "harfler = ['a', 'b', 'a', 'c']\nbenzersiz_harfler = ___ (harfler)",
            correctAnswers: ["set"],
            options: ["list", "tuple", "set"],
          ),
          CodeCompletionQuestion(
            questionText: "Boş bir küme oluşturun ve ona 'elma' ve 'armut' elemanlarını ekleyin.",
            codeTemplate: "meyveler = ___ ()\nmeyveler.add(___)\nmeyveler.add(___)",
            correctAnswers: ["set", "\"elma\"", "\"armut\""],
            options: ["set", "{}", "\"elma\"", "\"armut\""],
          ),
          CodeCompletionQuestion(
            questionText: "İki kümenin birleşimini (union) `|` operatörünü kullanarak bulun.",
            codeTemplate: "kume1 = {1, 2, 3}\nkume2 = {3, 4, 5}\nbirlesim = kume1 ___ ___",
            correctAnswers: ["|", "kume2"],
            options: ["|", "&", "kume2", "kume1"],
          ),
          CodeCompletionQuestion(
            questionText: "İki kümenin kesişimini (intersection) `.intersection()` metodunu kullanarak bulun.",
            codeTemplate: "kume_a = {\"elma\", \"armut\"}\nkume_b = {\"armut\", \"kiraz\"}\nkesisim = kume_a.intersection(___)",
            correctAnswers: ["kume_b"],
            options: ["kume_a", "kume_b", "elma"],
          ),
        ]
      }
    ]
  },

  "py_dictionary": {
    "sub_lessons": [
      {
        "title": "Sözlükler (Dictionary)",
        "parts": [
          {"text": "Sözlükler (Dictionaries), verileri 'anahtar-değer' (key-value) çiftleri olarak saklar."},
          {"text": "Listeler ve demetler gibi sıralı değildirler (eski Python versiyonlarında). Verilere indeksle değil, özel olarak tanımladığınız 'anahtar' kelimelerle erişirsiniz."},
          {"text": "Süslü parantez `{}` ile oluşturulurlar. Her çift `anahtar: değer` şeklinde yazılır."},
          {
            "text": "Bir kişi hakkındaki bilgileri saklamak için mükemmel bir yapıdır.",
            "code": "kisi = {\n  \"isim\": \"Ahmet\",\n  \"yas\": 30,\n  \"meslek\": \"Mühendis\"\n} # Sözlük oluşturma\n\nprint(kisi[\"meslek\"]) # 'meslek' anahtarının değerine erişim\n\nkisi[\"yas\"] = 31 # Bir değeri güncelleme\nkisi[\"sehir\"] = \"İstanbul\" # Yeni bir anahtar-değer ekleme\nprint(kisi)",
            "code_explanation": "Değerlere köşeli parantez içinde indeks yerine anahtar adını yazarak erişiriz. Aynı yöntemle mevcut değerleri güncelleyebilir veya yeni çiftler ekleyebiliriz."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir sözlükteki bir değere erişmek için ne kullanılır?",
            options: ["İndeks numarası", "Değerin kendisi", "O değere ait anahtar (key)"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "`araba` sözlüğündeki 'model' anahtarının değerini getiren kodu tamamla.",
            codeTemplate: "araba = {\"marka\": \"Ford\", \"model\": \"Mustang\"}\nprint(araba[___])",
            correctAnswers: ["\"model\""],
            options: ["\"marka\"", "\"model\"", "0"],
          ),
          CodeCompletionQuestion(
            questionText: "`ogrenci` sözlüğüne 'okul' anahtarı ile 'ODTÜ' değerini ekleyen ve 'isim' anahtarının değerini 'Elif' olarak güncelleyen kodu tamamla.",
            codeTemplate: "ogrenci = {\"isim\": \"Ayşe\"}\nogrenci[___] = \"ODTÜ\"\nogrenci[___] = \"Elif\"",
            correctAnswers: ["\"okul\"", "\"isim\""],
            options: ["\"okul\"", "\"isim\"", "ogrenci", "değer"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir anahtarın sözlükte olup olmadığını bilmediğimizde hata almamak için `.get()` metodunu kullanın.",
            codeTemplate: "ayarlar = {\"renk\": \"mavi\"}\nfont = ayarlar.___(\"font\", \"Varsayılan\")",
            correctAnswers: ["get"],
            options: ["get", "find", "key"],
          ),
          CodeCompletionQuestion(
            questionText: "`kisi` sözlüğünden 'meslek' anahtarını ve değerini `del` ifadesiyle silin.",
            codeTemplate: "kisi = {\"isim\": \"Can\", \"meslek\": \"Avukat\"}\n___ kisi[___]",
            correctAnswers: ["del", "\"meslek\""],
            options: ["del", "remove", "\"meslek\"", "\"isim\""],
          ),
        ]
      }
    ]
  },

  "py_dictionary_methods": {
    "sub_lessons": [
      {
        "title": "Sözlük Metotları ve Döngüler",
        "parts": [
          {"text": "Sözlükler üzerinde döngü kurmak biraz farklıdır. En yaygın yöntem `.items()` metodunu kullanmaktır."},
          {"text": "`.keys()`: Sadece anahtarları verir."},
          {"text": "`.values()`: Sadece değerleri verir."},
          {"text": "`.items()`: Hem anahtarları hem de değerleri (anahtar, değer) çiftleri halinde verir. Döngüler için en kullanışlısıdır."},
          {
            "text": "Bir sözlüğün tüm içeriğini `.items()` ile yazdıralım.",
            "code": "kullanici_bilgileri = {\n  \"k_adi\": \"coder\",\n  \"seviye\": 5,\n  \"aktif\": True\n}\n\nfor anahtar, deger in kullanici_bilgileri.items():\n  print(f\"{anahtar}: {deger}\")",
            "code_explanation": "`.items()` metodu sayesinde `for` döngüsünde hem `anahtar` hem de `deger` değişkenlerini aynı anda kullanabildik."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir sözlüğün hem anahtarları hem de değerleri üzerinde döngü kurmak için en uygun metot hangisidir?",
            options: [".keys()", ".values()", ".items()"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Sadece ürün fiyatlarını (değerlerini) ekrana yazdıran kodu tamamla.",
            codeTemplate: "urunler = {\"elma\": 5, \"armut\": 7}\nfor fiyat in urunler.___():\n  print(fiyat)",
            correctAnswers: ["values"],
            options: ["keys", "values", "items"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir kişinin bilgilerini anahtar ve değer olarak yazdıran kodu tamamlayın.",
            codeTemplate: "kisi = {\"ad\": \"Zeynep\", \"yas\": 40}\nfor ___, ___ in kisi.___():\n  print(f\"{anahtar} -> {deger}\")",
            correctAnswers: ["anahtar", "deger", "items"],
            options: ["anahtar", "deger", "items", "keys"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir sözlük üzerinde doğrudan `for` ile dönerseniz, sadece anahtarları gezersiniz. Bu davranışı kullanarak anahtarları yazdırın.",
            codeTemplate: "stok = {\"kalem\": 10, \"defter\": 5}\nfor urun in ___:\n  print(urun)",
            correctAnswers: ["stok"],
            options: ["stok", "stok.keys()", "stok.items()"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir anahtarın sözlükte olup olmadığını `in` anahtar kelimesi ile kontrol edin.",
            codeTemplate: "bilgiler = {\"id\": 101, \"aktif\": True}\nif ___ in bilgiler:\n  print(\"ID bilgisi mevcut.\")",
            correctAnswers: ["\"id\""],
            options: ["\"id\"", "101", "True"],
          ),
        ]
      }
    ]
  },

  "py_list_comprehension": {
    "sub_lessons": [
      {
        "title": "List Comprehension",
        "parts": [
          {"text": "List Comprehension, mevcut bir listeye dayanarak tek bir satırda yeni bir liste oluşturmanın şık ve etkili bir yoludur."},
          {"text": "Uzun `for` döngülerini kısaltır ve kodu daha okunaklı hale getirir."},
          {"text": "Temel yapısı şöyledir: `yeni_liste = [ifade for eleman in eski_liste if koşul]`."},
          {"text": "Koşul kısmı isteğe bağlıdır."},
          {
            "text": "Bir listedeki sayıların karelerini alan bir örnek yapalım.",
            "code": "sayilar = [1, 2, 3, 4, 5]\n\n# Normal for döngüsü ile:\nkareler_dongu = []\nfor sayi in sayilar:\n  kareler_dongu.append(sayi ** 2)\n\n# List comprehension ile:\nkareler_comp = [sayi ** 2 for sayi in sayilar]\n\nprint(kareler_comp) # [1, 4, 9, 16, 25]",
            "code_explanation": "Gördüğünüz gibi, 3 satırlık `for` döngüsü ile yapılan işi, list comprehension ile tek satırda ve daha anlaşılır bir şekilde yapabildik."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "List Comprehension'ın temel amacı nedir?",
            options: ["Listeleri yavaşça oluşturmak", "Karmaşık matematik yapmak", "Mevcut bir listeden yeni bir liste oluşturmayı kısaltmak"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "`range(5)` kullanarak `[0, 1, 2, 3, 4]` listesini comprehension ile oluşturan kodu tamamla.",
            codeTemplate: "yeni_liste = [i for i in ___]",
            correctAnswers: ["range(5)"],
            options: ["range(5)", "[0,1,2,3,4]", "list(5)"],
          ),
          CodeCompletionQuestion(
            questionText: "`sayilar` listesindeki sadece çift sayıların 2 katını alan list comprehension'ı tamamlayın.",
            codeTemplate: "sayilar = [1, 2, 3, 4, 5, 6]\nciftler_kat = [___ * 2 for sayi in sayilar if sayi % 2 == ___]",
            correctAnswers: ["sayi", "0"],
            options: ["sayi", "0", "1", "2"],
          ),
          CodeCompletionQuestion(
            questionText: "\"merhaba\" kelimesinin her harfini büyük harfe çevirerek yeni bir liste oluşturan comprehension'ı tamamlayın.",
            codeTemplate: "buyuk_harfler = [harf.upper() for harf in ___]",
            correctAnswers: ["\"merhaba\""],
            options: ["\"merhaba\"", "harf", "upper"],
          ),
          CodeCompletionQuestion(
            questionText: "Sayılar ve karelerinden oluşan bir sözlüğü 'dictionary comprehension' ile oluşturan kodu tamamlayın.",
            codeTemplate: "sayilar = [1, 2, 3]\nkare_sozluk = {sayi: sayi**2 for sayi in ___}",
            correctAnswers: ["sayilar"],
            options: ["sayilar", "kare_sozluk", "1,2,3"],
          ),
        ]
      }
    ]
  },
  // =======================================================================
  // BÖLÜM 7: FONKSİYONLAR
  // =======================================================================

  "py_function_definition": {
    "sub_lessons": [
      {
        "title": "Fonksiyon Tanımlama ve Çağırma",
        "parts": [
          {"text": "Programlamada bir kural vardır: 'Kendini Tekrar Etme' (Don't Repeat Yourself - DRY)."},
          {"text": "Fonksiyonlar, belirli bir işi yapmak üzere tasarlanmış, tekrar tekrar çağırıp kullanabileceğimiz isimlendirilmiş kod bloklarıdır."},
          {"text": "Bir fonksiyonu `def` anahtar kelimesi ile tanımlarız, ona bir isim veririz ve sonuna parantez `()` ve iki nokta üst üste `:` koyarız."},
          {"text": "Tanımladığımız bir fonksiyonu çalıştırmak için ise adını yazıp sonuna parantez koymamız yeterlidir. Buna 'çağırma' (calling) denir."},
          {
            "text": "Ekrana bir selamlama mesajı yazan basit bir fonksiyon yapalım.",
            "code":
            "# Fonksiyonu burada tanımlıyoruz\ndef selam_ver():\n  print(\"Merhaba, hoş geldiniz!\")\n\n# Fonksiyonu burada çağırıyoruz\nselam_ver()\n# Çıktı: Merhaba, hoş geldiniz!",
            "code_explanation":
            "`def selam_ver():` ile fonksiyonumuzu tanımladık. `selam_ver()` yazdığımız her yerde, o fonksiyonun içindeki kodlar baştan sona çalıştırılır."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Python'da bir fonksiyonu tanımlamak için hangi anahtar kelime kullanılır?",
            options: ["function", "def", "fun"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "`mesaj_yaz` adında bir fonksiyon tanımlayan kodu tamamla.",
            codeTemplate: "___ mesaj_yaz():\n  print(\"Bu bir mesajdır.\")",
            correctAnswers: ["def"],
            options: ["def", "call", "run"],
          ),
          CodeCompletionQuestion(
            questionText: "Aşağıda tanımlanmış olan `vedalas` fonksiyonunu tanımlayın ve sonra çağırın.",
            codeTemplate: "___ vedalas():\n  print(\"Görüşmek üzere!\")\n\n___",
            correctAnswers: ["def", "vedalas()"],
            options: ["def", "run", "vedalas()", "call"],
          ),
          CodeCompletionQuestion(
            questionText: "Henüz içeriğini yazmayacağınız bir fonksiyonu `pass` ifadesiyle hata vermeyecek şekilde tanımlayın.",
            codeTemplate: "def planlanan_fonksiyon():\n  ___",
            correctAnswers: ["pass"],
            options: ["pass", "continue", "break"],
          ),
          CodeCompletionQuestion(
            questionText: "`cizgi_ciz` fonksiyonunu iki farklı `print` arasında çağırarak bir ayraç oluşturun.",
            codeTemplate: "def cizgi_ciz():\n  print(\"-----\")\n\nprint(\"Başlık\")\n___()\nprint(\"İçerik\")",
            correctAnswers: ["cizgi_ciz"],
            options: ["cizgi_ciz", "cizgi_ciz()", "def cizgi_ciz"],
          ),
        ]
      }
    ]
  },

  "py_parameters_return": {
    "sub_lessons": [
      {
        "title": "Parametreler ve Argümanlar",
        "parts": [
          {"text": "Fonksiyonları daha da güçlü yapmak için onlara dışarıdan bilgi gönderebiliriz."},
          {"text": "Fonksiyonu tanımlarken parantezlerin içine yazdığımız değişkenlere 'parametre' denir. Bunlar fonksiyonun beklediği verilerdir."},
          {"text": "Fonksiyonu çağırırken parantezlerin içine yazdığımız gerçek değerlere ise 'argüman' denir."},
          {
            "text": "Sadece 'Merhaba' demek yerine, kişiye özel olarak ismiyle selam veren bir fonksiyon yazalım.",
            "code":
            "# 'isim' burada bir parametredir\ndef selamla(isim):\n  print(f\"Merhaba, {isim}!\")\n\n# 'Ali' ve 'Ayşe' burada argümandır\nselamla(\"Ali\")\nselamla(\"Ayşe\")",
            "code_explanation":
            "`selamla` fonksiyonu artık bir `isim` parametresi bekliyor. Fonksiyonu `selamla(\"Ali\")` şeklinde çağırdığımızda, fonksiyonun içindeki `isim` değişkeni \"Ali\" değerini alır."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir fonksiyonu çağırırken gönderdiğimiz gerçek değere ne ad verilir?",
            options: ["Parametre", "Argüman", "Değişken"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir `us_al` fonksiyonu tanımla. Bu fonksiyon 'taban' ve 'us' adında iki parametre almalı.",
            codeTemplate: "def us_al(___, ___):\n  print(taban ** us)",
            correctAnswers: ["taban", "us"],
            options: ["taban", "us", "x", "y"],
          ),
          CodeCompletionQuestion(
            questionText: "İki sayıyı toplayan `topla` fonksiyonunu tanımlayıp, 5 ve 3 argümanlarını göndererek çağır.",
            codeTemplate: "def topla(sayi1, ___):\n  print(sayi1 + sayi2)\n\ntopla(___, 3)",
            correctAnswers: ["sayi2", "5"],
            options: ["sayi1", "sayi2", "5", "3"],
          ),
          CodeCompletionQuestion(
            questionText: "`guc` parametresi için varsayılan bir değer (`1`) atayarak fonksiyonu tamamlayın.",
            codeTemplate: "def selamla(isim, guc=___):\n  print(f\"Merhaba {isim}! Güç: {guc}\")",
            correctAnswers: ["1"],
            options: ["1", "0", "\"yok\""],
          ),
          CodeCompletionQuestion(
            questionText: "Fonksiyonu çağırırken argümanları isimleriyle (`keyword arguments`) gönderin.",
            codeTemplate: "def bilgi_yazdir(ad, soyad):\n  print(f\"{ad} {soyad}\")\n\nbilgi_yazdir(soyad=___, ad=___)",
            correctAnswers: ["\"Yılmaz\"", "\"Ali\""],
            options: ["\"Yılmaz\"", "\"Ali\"", "ad", "soyad"],
          ),
        ]
      },
      {
        "title": "Değer Döndürme: 'return'",
        "parts": [
          {"text": "Fonksiyonlar sadece iş yapmakla kalmaz, aynı zamanda bir sonuç veya değer de üretebilirler."},
          {"text": "Bir fonksiyondan bir değeri dışarıya, çağrıldığı yere geri göndermek için `return` ifadesini kullanırız."},
          {"text": "`return`, fonksiyonun çalışmasını o anda bitirir ve belirtilen değeri geri döndürür."},
          {"text": "Bu geri dönen değeri bir değişkene atayabilir veya başka bir yerde kullanabiliriz."},
          {
            "text": "İki sayıyı toplayıp sonucu ekrana yazdırmak yerine, sonucu geri döndüren bir fonksiyon yazalım.",
            "code":
            "def topla(a, b):\n  return a + b\n\nsonuc = topla(8, 5)\nprint(f\"İşlemin sonucu: {sonuc}\") # Sonuç: 13",
            "code_explanation":
            "`topla` fonksiyonu `a + b` işleminin sonucunu `return` ile geri döndürüyor. Bu dönen 13 değerini `sonuc` değişkenine atayıp daha sonra kullanabildik."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir fonksiyondan bir değer döndürmek için hangi ifade kullanılır?",
            options: ["print", "return", "send"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Verilen sayının karesini geri döndüren fonksiyonu tamamla.",
            codeTemplate: "def kare_al(sayi):\n  ___ sayi * sayi",
            correctAnswers: ["return"],
            options: ["print", "return", "output"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir sayının çift olup olmadığını kontrol edip `True` veya `False` döndüren fonksiyonu tamamla.",
            codeTemplate: "def cift_mi(sayi):\n  ___ sayi % 2 == ___",
            correctAnswers: ["return", "0"],
            options: ["return", "print", "0", "1"],
          ),
          CodeCompletionQuestion(
            questionText: "`return` komutu fonksiyonu anında bitirir. Bu koda göre `sonuc` değişkeninin değeri ne olur?",
            codeTemplate: "def test_return(x):\n  if x < 0:\n    return \"Negatif\"\n  return \"Pozitif\"\n\nsonuc = test_return(___)",
            correctAnswers: ["-5"],
            options: ["-5", "5", "0"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir fonksiyondan birden fazla değer döndürdüğünüzde, bu değerler bir demet (tuple) olarak paketlenir. Kodu tamamlayın.",
            codeTemplate: "def islem(a, b):\n  return a+b, a*b\n\ntoplam, carpim = islem(3, ___)",
            correctAnswers: ["4"],
            options: ["3", "4", "7"],
          ),
        ]
      }
    ]
  },

  "py_args_kwargs": {
    "sub_lessons": [
      {
        "title": "Esnek Argümanlar: *args",
        "parts": [
          {"text": "Bazen bir fonksiyona kaç tane argüman gönderileceğini önceden bilemeyiz."},
          {"text": "`*args` (yıldız args), fonksiyona gönderilen tüm konumsal argümanları bir 'demet' (tuple) içinde toplar."},
          {"text": "'args' ismi bir gelenektir, isterseniz `*sayilar` gibi başka bir isim de kullanabilirsiniz."},
          {
            "text": "Gönderilen tüm sayıları toplayan bir fonksiyon yazalım.",
            "code": "def hepsini_topla(*args):\n  toplam = 0\n  for sayi in args:\n    toplam += sayi\n  return toplam\n\nprint(hepsini_topla(1, 2, 3))       # Çıktı: 6\nprint(hepsini_topla(10, 20, 30, 40)) # Çıktı: 100",
            "code_explanation": "`*args`, ilk çağrıda (1, 2, 3) demetini, ikinci çağrıda ise (10, 20, 30, 40) demetini oluşturdu ve döngü bu demetler üzerinde çalıştı."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`*args` kullanarak fonksiyona gönderilen argümanlar ne tür bir veri yapısında toplanır?",
            options: ["Liste (List)", "Sözlük (Dictionary)", "Demet (Tuple)"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "İstenilen sayıda ismi alıp her birine selam veren fonksiyonu tamamla.",
            codeTemplate: "def herkese_selam(___):\n  for isim in isimler:\n    print(f\"Merhaba {isim}\")",
            correctAnswers: ["*isimler"],
            options: ["isimler", "*isimler", "**isimler"],
          ),
          CodeCompletionQuestion(
            questionText: "Gönderilen tüm sayıları çarpan fonksiyonu tamamlayın.",
            codeTemplate: "def hepsini_carp(*___):\n  sonuc = 1\n  for sayi in ___:\n    sonuc *= sayi\n  return sonuc",
            correctAnswers: ["sayilar", "sayilar"],
            options: ["sayilar", "*sayilar", "args", "kwargs"],
          ),
          CodeCompletionQuestion(
            questionText: "Normal bir parametreyi `*args` ile birlikte kullanın. `*args` her zaman sonda olmalıdır.",
            codeTemplate: "def rapor_olustur(baslik, *notlar):\n  print(baslik)\n  for not_ in ___:\n    print(f\"- {not_}\")",
            correctAnswers: ["notlar"],
            options: ["notlar", "baslik", "*notlar"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir listeyi `*` operatörüyle 'açarak' (unpack) `*args` kabul eden bir fonksiyona gönderin.",
            codeTemplate: "def topla(*sayilar):\n  return sum(sayilar)\n\nrakamlar = [10, 20, 30]\nsonuc = topla(___rakamlar)",
            correctAnswers: ["*"],
            options: ["*", "&", "#"],
          ),
        ]
      },
      {
        "title": "Anahtar Kelimeli Argümanlar: **kwargs",
        "parts": [
          {"text": "İsimlendirilmiş olarak ve sayısı belirsiz argüman göndermek istediğimizde `**kwargs` (çift yıldız kwargs) kullanırız."},
          {"text": "`**kwargs`, bu anahtar kelimeli argümanları bir 'sözlük' (dictionary) içinde toplar."},
          {"text": "'kwargs' ismi de bir gelenektir, isterseniz `**bilgiler` gibi başka bir isim de kullanabilirsiniz."},
          {
            "text": "Bir kullanıcı hakkında gönderilen bilgileri ekrana yazdıran bir fonksiyon yapalım.",
            "code": "def kullanici_bilgisi(**kwargs):\n  for anahtar, deger in kwargs.items():\n    print(f\"{anahtar}: {deger}\")\n\nkullanici_bilgisi(isim=\"Ali\", sehir=\"Ankara\", yas=30)",
            "code_explanation": "`**kwargs`, gönderilen `isim='Ali'`, `sehir='Ankara'` ve `yas=30` argümanlarını `{'isim': 'Ali', 'sehir': 'Ankara', 'yas': 30}` şeklinde bir sözlüğe dönüştürdü."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`**kwargs` kullanarak fonksiyona gönderilen argümanlar ne tür bir veri yapısında toplanır?",
            options: ["Liste (List)", "Sözlük (Dictionary)", "Demet (Tuple)"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "İstenilen sayıda ayar bilgisini alıp ekrana yazdıran fonksiyonu tamamla.",
            codeTemplate: "def ayarlari_goster(___):\n  print(ayarlar)",
            correctAnswers: ["**ayarlar"],
            options: ["ayarlar", "*ayarlar", "**ayarlar"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir ürünün özelliklerini `**kwargs` ile alıp yazdıran kodu tamamlayın.",
            codeTemplate: "def urun_detayi(**___):\n  for ozellik, ___ in urun.items():\n    print(f\"{ozellik}: {deger}\")",
            correctAnswers: ["urun", "deger"],
            options: ["urun", "deger", "items", "kwargs"],
          ),
          CodeCompletionQuestion(
            questionText: "Normal, `*args` ve `**kwargs` parametrelerini doğru sırada (`konum, *args, **kwargs`) tanımlayın.",
            codeTemplate: "def hersey(konum, *args, **___):\n  print(konum, args, kwargs)",
            correctAnswers: ["kwargs"],
            options: ["kwargs", "args", "konum"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir sözlüğü `**` operatörüyle 'açarak' (unpack) `**kwargs` kabul eden bir fonksiyona gönderin.",
            codeTemplate: "def ayar_yap(**ayarlar):\n  print(ayarlar)\n\nyapilandirma = {\"renk\": \"kırmızı\", \"mod\": \"gece\"}\nayar_yap(___yapilandirma)",
            correctAnswers: ["**"],
            options: ["*", "**", "&"],
          ),
        ]
      }
    ]
  },

  "py_scope": {
    "sub_lessons": [
      {
        "title": "Değişken Kapsamı: Global & Local",
        "parts": [
          {"text": "Bir değişkenin programın neresinde geçerli olduğunu veya nereden erişilebildiğini belirleyen kurallara 'kapsam' (scope) denir."},
          {"text": "Local (Yerel) Kapsam: Bir fonksiyon içinde oluşturulan değişkenler sadece o fonksiyonun içinde geçerlidir. Dışarıdan erişilemezler."},
          {"text": "Global (Küresel) Kapsam: Tüm fonksiyonların dışında, en üst seviyede tanımlanan değişkenlerdir. Programın her yerinden erişilebilirler (ancak değiştirilmeleri özel bir durumdur)."},
          {
            "text": "Bir fonksiyonun içinden global bir değişkeni değiştirmek için `global` anahtar kelimesini kullanmalıyız.",
            "code": "seviye = 1 # Global değişken\n\ndef seviye_atla():\n  global seviye # 'seviye' değişkeninin global olan olduğunu belirt\n  seviye += 1\n  \nprint(f\"Başlangıç Seviyesi: {seviye}\")\nseviye_atla()\nprint(f\"Yeni Seviye: {seviye}\")",
            "code_explanation": "`global seviye` satırı olmasaydı, `seviye_atla` fonksiyonu `seviye` adında yeni bir yerel değişken oluşturmaya çalışır ve hata verirdi. Bu anahtar kelime sayesinde globaldeki `seviye` değişkenini güncelleyebildik."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir fonksiyon içinde tanımlanan ve sadece o fonksiyonda geçerli olan değişkene ne ad verilir?",
            options: ["Global Değişken", "Local Değişken", "Evrensel Değişken"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir fonksiyon içinden global bir değişkenin değerini değiştirmek için hangi anahtar kelime kullanılır?",
            codeTemplate: "sayac = 0\ndef artir():\n  ___ sayac\n  sayac += 1",
            correctAnswers: ["global"],
            options: ["global", "local", "public"],
          ),
          CodeCompletionQuestion(
            questionText: "Aşağıdaki kodda `kullanici_adi` global, `mesaj` ise local değişkendir. Kodu tamamlayın.",
            codeTemplate: "kullanici_adi = \"Admin\"\ndef selamla():\n  ___ = f\"Hoşgeldin, {kullanici_adi}\" \n  print(mesaj)",
            correctAnswers: ["mesaj"],
            options: ["mesaj", "kullanici_adi", "global_mesaj"],
          ),
          CodeCompletionQuestion(
            questionText: "Global ve local değişkenler aynı isme sahip olduğunda, fonksiyonun her zaman local olanı kullandığını gösteren kodu tamamlayın.",
            codeTemplate: "x = \"Global\"\ndef fonksiyon():\n  x = \"Local\"\n  print(___)\nfonksiyon()",
            correctAnswers: ["x"],
            options: ["x", "global x", "\"Local\""],
          ),
          CodeCompletionQuestion(
            questionText: "İç içe fonksiyonlarda, bir dış fonksiyondaki değişkenin iç fonksiyondan okunabildiğini gösteren kodu tamamlayın.",
            codeTemplate: "def dis_fonksiyon():\n  deger = 100\n  def ic_fonksiyon():\n    print(___)\n  ic_fonksiyon()",
            correctAnswers: ["deger"],
            options: ["deger", "dis_deger", "global deger"],
          ),
        ]
      }
    ]
  },

  "py_lambda": {
    "sub_lessons": [
      {
        "title": "Lambda: Tek Satırlık Anonim Fonksiyonlar",
        "parts": [
          {"text": "Lambda, isimsiz (anonim), tek bir ifadeden oluşan küçük fonksiyonlar oluşturmak için kullanılan bir anahtar kelimedir."},
          {"text": "Genellikle, kısa bir süre için ihtiyaç duyulan ve tam bir fonksiyonu `def` ile tanımlamanın gereksiz olduğu durumlarda kullanılır."},
          {"text": "Sözdizimi şöyledir: `lambda parametreler: ifade`."},
          {"text": "En yaygın kullanım alanları, `map()`, `filter()` ve `sorted()` gibi başka bir fonksiyonun argümanı olarak kullanılmaktır."},
          {
            "text": "Bir listedeki her sayının karesini alan bir `map` örneği görelim.",
            "code": "sayilar = [1, 2, 3, 4]\n# def ile yapmak yerine, map içinde lambda kullandık\nkareler = list(map(lambda x: x**2, sayilar))\nprint(kareler) # Çıktı: [1, 4, 9, 16]",
            "code_explanation": "`map` fonksiyonu, `sayilar` listesindeki her bir elemanı (`x`) alıp, ona `lambda x: x**2` fonksiyonunu uyguladı ve sonuçlardan yeni bir liste oluşturdu."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Lambda fonksiyonları için aşağıdakilerden hangisi doğrudur?",
            options: ["Her zaman bir isme sahip olmalıdırlar", "Birden çok ifadeden oluşabilirler", "Genellikle tek satırlık, isimsiz fonksiyonlardır"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Verilen bir sayıya 10 ekleyen bir lambda fonksiyonu yazın.",
            codeTemplate: "toplayici = ___ x: x + 10",
            correctAnswers: ["lambda"],
            options: ["def", "func", "lambda"],
          ),
          CodeCompletionQuestion(
            questionText: "`filter` ve `lambda` kullanarak bir listedeki sadece çift sayıları alan kodu tamamlayın.",
            codeTemplate: "sayilar = [1, 2, 3, 4, 5, 6]\ncift_sayilar = list(filter(lambda x: x % 2 == ___, ___))",
            correctAnswers: ["0", "sayilar"],
            options: ["0", "1", "sayilar", "x"],
          ),
          CodeCompletionQuestion(
            questionText: "İki argüman alıp (x ve y), onların çarpımını döndüren bir lambda fonksiyonu oluşturun.",
            codeTemplate: "carpma = lambda ___, ___: x * y\nprint(carpma(5, 4)) # 20",
            correctAnswers: ["x", "y"],
            options: ["x", "y", "a", "b"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir listeyi, elemanların uzunluğuna göre sıralamak için `sorted` ve `lambda` kullanın.",
            codeTemplate: "kelimeler = [\"elma\", \"muz\", \"kiraz\"]\nsirali = sorted(kelimeler, key=___ x: len(x))",
            correctAnswers: ["lambda"],
            options: ["def", "lambda", "func"],
          ),
        ]
      }
    ]
  },

  "py_docstrings": {
    "sub_lessons": [
      {
        "title": "Docstrings: Fonksiyonları Belgelemek",
        "parts": [
          {"text": "Docstring (Documentation String - Belgelendirme Dizgisi), bir modül, fonksiyon, sınıf veya metodun ne işe yaradığını açıklayan metinlerdir."},
          {"text": "Kodun amacını hem kendimize hem de başkalarına anlatmanın standart yoludur."},
          {"text": "Bir fonksiyonun veya sınıfın tanımının hemen altına, üçlü tırnak (`\"\"\"...\"\"\"` veya `'''...'''`) içinde yazılırlar."},
          {"text": "Bu belgelere, kodun içinden `fonksiyon_adi.__doc__` şeklinde veya `help(fonksiyon_adi)` komutuyla erişilebilir."},
          {
            "text": "Parametreleri ve geri dönüş değerini açıklayan bir docstring örneği.",
            "code": "def topla(a, b):\n  \"\"\"İki sayıyı toplar ve sonucu döndürür.\n\n  Args:\n    a (int): Toplanacak ilk sayı.\n    b (int): Toplanacak ikinci sayı.\n\n  Returns:\n    int: İki sayının toplamı.\n  \"\"\"\n  return a + b\n\nprint(topla.__doc__)",
            "code_explanation": "Fonksiyonun hemen altına yazdığımız bu açıklama metni, fonksiyonun nasıl kullanılacağını anlatır. `__doc__` özelliği ile bu metne doğrudan erişebildik."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir fonksiyonun docstring'i nereye yazılmalıdır?",
            options: ["Fonksiyon tanımından önce", "Fonksiyon tanımının hemen içine, ilk satır olarak", "Fonksiyon çağrıldıktan sonra"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir docstring oluşturmak için kullanılan üçlü tırnakları tamamla.",
            codeTemplate: "def fonksiyon():\n  ___Bu bir docstring'dir.___ ",
            correctAnswers: ["\"\"\"", "\"\"\""],
            options: ["\"\"\"", "'", "/*", "*/"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir fonksiyonun docstring'ine `help()` fonksiyonunu kullanarak erişen kodu tamamlayın.",
            codeTemplate: "def bilgi():\n  \"\"\"Bu fonksiyon bilgi verir.\"\"\"\n\n___(bilgi)",
            correctAnswers: ["help"],
            options: ["print", "doc", "help"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir fonksiyonun docstring'ine `__doc__` özel niteliğini kullanarak erişen kodu tamamlayın.",
            codeTemplate: "def kare_al(x):\n  \"\"\"Bir sayının karesini alır.\"\"\"\n  return x*x\n\nprint(kare_al.___)",
            correctAnswers: ["__doc__"],
            options: ["__doc__", "docstring", ".doc"],
          ),
          CodeCompletionQuestion(
            questionText: "Çok satırlı bir docstring'in `Args:` bölümünü tamamlayarak parametreyi açıklayın.",
            codeTemplate: "def selamla(isim):\n  \"\"\"Kişiye özel selamlama yapar.\n\n  ___:\n    isim (str): Selamlanacak kişinin adı.\n  \"\"\"",
            correctAnswers: ["Args"],
            options: ["Args", "Params", "Inputs"],
          ),
        ]
      }
    ]
  },

  // Diğer dersler (py_scope, py_lambda, py_docstrings) bu şablona göre eklenebilir.
  // Hata Yönetimi bölümü de aynı şekilde oluşturulacaktır.
  // Örnek olarak Hata Yönetimi'nin ilk dersini ekliyorum:

  // =======================================================================
  // BÖLÜM 8: HATA YÖNETİMİ
  // =======================================================================

  "py_try_except": {
    "sub_lessons": [
      {
        "title": "try...except ile Hataları Yakalama",
        "parts": [
          {"text": "Programlar çalışırken bazen beklenmedik hatalar oluşabilir. Örneğin kullanıcı sayı yerine metin girebilir veya bir dosyayı bulamayabiliriz."},
          {"text": "Bu hatalar (Exceptions), normalde programın çökmesine neden olur."},
          {"text": "Programın çökmesini engellemek ve hataları düzgün bir şekilde yönetmek için `try...except` bloğunu kullanırız."},
          {"text": "Hata çıkarma potansiyeli olan kodu `try` bloğunun içine yazarız."},
          {"text": "Eğer `try` bloğunda bir hata oluşursa, program çökmek yerine `except` bloğunun içindeki kodu çalıştırır."},
          {
            "text": "Kullanıcıdan sayı alırken oluşabilecek bir hatayı yönetelim.",
            "code":
            "try:\n  sayi = int(input(\"Lütfen bir sayı girin: \"))\n  print(f\"Girdiğiniz sayının karesi: {sayi**2}\")\nexcept ValueError:\n  print(\"Hatalı giriş! Lütfen sadece sayısal bir değer girin.\")\n\nprint(\"Program çalışmaya devam ediyor.\")",
            "code_explanation":
            "Eğer kullanıcı 'abc' gibi bir metin girerse, `int()` fonksiyonu `ValueError` hatası verir. `try...except` sayesinde program çökmez, `except` bloğu çalışır ve kullanıcıya bir uyarı mesajı gösterilir."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Programın çökmesine neden olabilecek potansiyel hatalı kod hangi blok içine yazılır?",
            options: ["except", "finally", "try"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Var olmayan bir sözlük anahtarına erişmeye çalışırken oluşacak `KeyError` hatasını yakala.",
            codeTemplate: "sozluk = {\"ad\": \"Test\"}\ntry:\n  print(sozluk[\"yas\"])\nexcept ___:\n  print(\"Anahtar bulunamadı!\")",
            correctAnswers: ["KeyError"],
            options: ["ValueError", "IndexError", "KeyError"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir sayıyı sıfıra bölme hatasını yakalamak için bir `try...except` bloğu oluştur.",
            codeTemplate: "___:\n  sonuc = 10 / 0\n___ ZeroDivisionError:\n  print(\"Bir sayı sıfıra bölünemez!\")",
            correctAnswers: ["try", "except"],
            options: ["try", "except", "if", "else"],
          ),
          CodeCompletionQuestion(
            questionText: "Hata mesajının kendisini yakalamak için `except HataTuru as e:` yapısını kullanın.",
            codeTemplate: "try:\n  x = 1/0\nexcept ZeroDivisionError as ___:\n  print(f\"Bir hata oluştu: {e}\")",
            correctAnswers: ["e"],
            options: ["e", "hata", "error"],
          ),
          CodeCompletionQuestion(
            questionText: "Farklı hata türleri için birden fazla `except` bloğu yazın.",
            codeTemplate: "try:\n  # kod\nexcept ValueError:\n  print(\"Değer Hatası!\")\nexcept ___:\n  print(\"Sıfıra Bölme Hatası!\")",
            correctAnswers: ["ZeroDivisionError"],
            options: ["ZeroDivisionError", "KeyError", "Exception"],
          ),
        ]
      }
    ]
  },
  "py_finally_else": {
    "sub_lessons": [
      {
        "title": "Hata Yönetimi: 'finally' ve 'else' Blokları",
        "parts": [
          {"text": "`try...except` yapısını daha da geliştirebiliriz. `else` ve `finally` blokları bize daha fazla kontrol imkanı sunar."},
          {"text": "`else` Bloğu: Bu blok, `try` bloğunda hiçbir hata oluşmazsa çalışır. Kodun başarılı bir şekilde tamamlandığı durumlarda yapılacak işler için idealdir."},
          {"text": "`finally` Bloğu: Bu blok, bir hata oluşsa da oluşmasa da, `try` bloğundan çıkılırken her durumda çalıştırılır. Genellikle dosya kapatma veya kaynakları serbest bırakma gibi 'temizlik' işlemleri için kullanılır."},
          {
            "text": "Bu dört bloğun birlikte nasıl çalıştığını görelim.",
            "code": "try:\n  sayi = int(input(\"Bir sayı girin: \"))\nexcept ValueError:\n  print(\"Sadece sayı girmelisiniz!\")\nelse:\n  print(\"Giriş başarılı, hata oluşmadı.\")\nfinally:\n  print(\"Bu blok her zaman çalışır.\")",
            "code_explanation": "Sayı girerseniz try -> else -> finally çalışır. Metin girerseniz try'da hata olur, except -> finally çalışır. Gördüğünüz gibi, `finally` her iki senaryoda da çalıştı."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir hata oluşsa da oluşmasa da, her durumda çalıştırılması garanti edilen kod bloğu hangisidir?",
            options: ["else", "except", "finally"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "`try` bloğunda hata oluşmadığında çalışacak olan kod bloğunu tamamla.",
            codeTemplate: "try:\n  print(\"Başarılı\")\nexcept:\n  print(\"Hata\")\n___:\n  print(\"Hata oluşmadı.\")",
            correctAnswers: ["else"],
            options: ["else", "finally", "except"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir dosyayı açtıktan sonra, hata olsa da olmasa da kapatılmasını garanti altına alan `finally` bloğunu tamamlayın.",
            codeTemplate: "try:\n  dosya = open(\"test.txt\")\n___:\n  dosya.close()",
            correctAnswers: ["finally"],
            options: ["except", "else", "finally"],
          ),
          CodeCompletionQuestion(
            questionText: "Tam bir `try-except-else-finally` yapısında eksik olan anahtar kelimeleri tamamlayın.",
            codeTemplate: "___:\n  # Kod\n___ ValueError:\n  # Hata yönetimi\nelse:\n  # Başarı durumu\n___:\n  # Temizlik",
            correctAnswers: ["try", "except"],
            options: ["try", "except", "if", "for"],
          ),
          CodeCompletionQuestion(
            questionText: "Hata oluşmazsa `else`, her durumda ise `finally` çalışır. Bu durumu özetleyen kodu tamamlayın.",
            codeTemplate: "if (hata_yok):\n  calisir = \"___\"\nalways_calisir = \"___\"",
            correctAnswers: ["else", "finally"],
            options: ["else", "finally", "try", "except"],
          ),
        ]
      }
    ]
  },

  "py_common_errors": {
    "sub_lessons": [
      {
        "title": "Yaygın Hata Türleri ve Anlamları",
        "parts": [
          {"text": "Python'da hata mesajları (Exceptions) aslında dostumuzdur. Bize neyin yanlış gittiğini söylerler. En yaygın olanları tanıyalım:"},
          {"text": "`SyntaxError`: Kodun yazımında Python kurallarına uymayan bir hata var demektir (örn: unutulan iki nokta üst üste)."},
          {"text": "`NameError`: Tanımlanmamış bir değişken veya fonksiyon kullanılmaya çalışıldığında ortaya çıkar."},
          {"text": "`TypeError`: Bir operasyonu, o operasyon için uygun olmayan bir veri tipine uygulamaya çalıştığınızda oluşur (örn: `\"5\" + 3`)."},
          {"text": "`ValueError`: Fonksiyona gönderilen argümanın tipi doğru olsa bile değeri uygun olmadığında oluşur (örn: `int(\"abc\")`)."},
          {"text": "`IndexError`: Bir listenin veya demetin var olmayan bir indeksine erişmeye çalıştığınızda meydana gelir."},
          {"text": "`KeyError`: Bir sözlükte var olmayan bir anahtara erişmeye çalıştığınızda oluşur."},
          {
            "text": "Farklı hataları yakalamak için birden fazla `except` bloğu kullanabiliriz.",
            "code": "sozluk = {\"ad\": \"Test\"}\ntry:\n  # print(sozluk[\"yas\"]) # KeyError verir\n  print(int(\"metin\"))   # ValueError verir\nexcept KeyError:\n  print(\"Aranan anahtar sözlükte yok.\")\nexcept ValueError:\n  print(\"Değer dönüştürme işlemi hatalı.\")",
            "code_explanation": "Program, oluşacak hatanın türüne uygun olan `except` bloğunu çalıştırarak sorunu hedefe yönelik bir şekilde yönetir."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`sayilar = [1, 2]; print(sayilar[2])` kodu çalıştırıldığında hangi hata alınır?",
            options: ["KeyError", "IndexError", "ValueError"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir metin (string) ile bir sayıyı toplamaya çalışmak `___` hatası verir.",
            codeTemplate: "# 'selam' + 5 kodu ___ hatası verir.",
            correctAnswers: ["TypeError"],
            options: ["TypeError", "ValueError", "SyntaxError"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir sözlükte olmayan bir anahtara erişmeye çalışırken oluşacak hatayı yakalayan kodu tamamlayın.",
            codeTemplate: "sozluk = {}\ntry:\n  print(sozluk[\"yok\"])\nexcept ___:\n  print(\"Anahtar bulunamadı.\")",
            correctAnswers: ["KeyError"],
            options: ["NameError", "KeyError", "IndexError"],
          ),
          CodeCompletionQuestion(
            questionText: "Tanımlanmamış `x` değişkenini yazdırmaya çalışan kodun üreteceği hatayı ve bu hatayı yakalayan `except` bloğunu tamamlayın.",
            codeTemplate: "try:\n  print(x)\nexcept ___:\n  print(\"Değişken tanımlı değil!\")",
            correctAnswers: ["NameError"],
            options: ["ValueError", "TypeError", "NameError"],
          ),
          CodeCompletionQuestion(
            questionText: "`int()` fonksiyonu ile harflerden oluşan bir metni sayıya çevirmeye çalışınca oluşan hatayı yakalayın.",
            codeTemplate: "try:\n  sayi = int(\"abc\")\nexcept ___:\n  print(\"Geçersiz değer!\")",
            correctAnswers: ["ValueError"],
            options: ["IndexError", "ValueError", "TypeError"],
          ),
        ]
      }
    ]
  },
  // =======================================================================
  // BÖLÜM 9: DOSYA İŞLEMLERİ
  // =======================================================================

  "py_file_ops": {
    "sub_lessons": [
      {
        "title": "Dosya Açma, Yazma ('w') ve Kapatma",
        "parts": [
          {"text": "Programlarımızla bilgisayarımızdaki dosyalara veri yazabilir veya onlardan veri okuyabiliriz."},
          {"text": "Bir dosyayla işlem yapmak için önce `open()` fonksiyonu ile onu açmamız gerekir."},
          {"text": "`open('dosya_adi', 'mod')` şeklinde kullanılır. `'w'` (write) modu, dosyaya yazmak için kullanılır. Eğer dosya yoksa oluşturur, varsa içeriğini tamamen siler ve baştan yazar."},
          {"text": "İşimiz bittiğinde, kaynakları serbest bırakmak için dosyayı `close()` ile kapatmamız ÇOK ÖNEMLİDİR."},
          {
            "text": "Bir dosyaya 'Merhaba' yazalım.",
            "code": "dosya = open(\"notlar.txt\", \"w\") # Dosyayı yazma modunda aç\ndosya.write(\"Merhaba Dünya\")      # İçine yaz\ndosya.close()                     # Dosyayı kapat",
            "code_explanation": "Bu kod, 'notlar.txt' adında bir dosya oluşturur (veya eskisini siler) ve içine 'Merhaba Dünya' metnini yazar, sonra da dosyayı kapatır."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir dosyayı yazma modunda ('w') açmak ne yapar?",
            options: ["Dosyanın sonuna ekler", "Dosya varsa hata verir", "Dosyanın içeriğini siler ve baştan yazar"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Bir dosyayı `write()` metoduyla yazdıktan sonra, `with` kullanmıyorsak mutlaka hangi metodu çağırmalıyız?",
            codeTemplate: "dosya.write(\"test\")\ndosya.___()",
            correctAnswers: ["close"],
            options: ["close", "end", "stop"],
          ),
          CodeCompletionQuestion(
            questionText: "`mesaj.txt` dosyasını yazma modunda açıp içine \"ilk satır\" yazan ve sonra kapatan kodu tamamlayın.",
            codeTemplate: "dosya = open(\"mesaj.txt\", ___)\ndosya.write(___)\ndosya.close()",
            correctAnswers: ["\"w\"", "\"ilk satır\""],
            options: ["\"r\"", "\"w\"", "\"ilk satır\"", "\"mesaj\""],
          ),
          CodeCompletionQuestion(
            questionText: "`'w'` modu var olan dosyanın içeriğini siler. `test.txt` dosyasının son içeriğinin 'son' olması için kodu tamamlayın.",
            codeTemplate: "dosya = open(\"test.txt\", \"w\")\ndosya.write(\"ilk\")\ndosya.close()\ndosya = open(\"test.txt\", ___)\ndosya.write(___)\ndosya.close()",
            correctAnswers: ["\"w\"", "\"son\""],
            options: ["\"w\"", "\"a\"", "\"ilk\"", "\"son\""],
          ),
          CodeCompletionQuestion(
            questionText: "Bir dosyaya birden fazla satır yazmak için satır sonu karakterini (`\\n`) kullanın.",
            codeTemplate: "dosya = open(\"liste.txt\", \"w\")\ndosya.write(\"Satır 1___Satır 2\")\ndosya.close()",
            correctAnswers: ["\\n"],
            options: ["\\n", "\\t", " "],
          ),
        ]
      },
      {
        "title": "Dosya Okuma ('r') ve Ekleme ('a')",
        "parts": [
          {"text": "Bir dosyadan veri okumak için `'r'` (read) modunu kullanırız. Bu varsayılan moddur, belirtilmese bile Python okuma modunda açar."},
          {"text": "`.read()` metodu, dosyanın tüm içeriğini tek bir metin olarak okur."},
          {"text": "Mevcut bir dosyanın içeriğini silmeden sonuna yeni veri eklemek için ise `'a'` (append) modunu kullanırız."},
          {
            "text": "Dosyaya ekleme yapıp sonra tüm içeriğini okuyalım.",
            "code": "dosya_a = open(\"notlar.txt\", \"a\")\ndosya_a.write(\"\\nİkinci satır\")\ndosya_a.close()\n\ndosya_r = open(\"notlar.txt\", \"r\")\nicerik = dosya_r.read()\nprint(icerik)\ndosya_r.close()",
            "code_explanation": "Önce 'a' moduyla dosyanın sonuna yeni bir satır ekledik, sonra 'r' moduyla tekrar açıp tüm içeriğini okuduk."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir dosyanın içeriğini silmeden sonuna veri eklemek için hangi mod kullanılır?",
            options: ["r", "w", "a"],
            correctAnswerIndex: 2,
          ),
          CodeCompletionQuestion(
            questionText: "Bir dosyanın tüm içeriğini okuyup `data` değişkenine atayan kodu tamamla.",
            codeTemplate: "dosya = open(\"bilgi.txt\", \"r\")\ndata = dosya.___()\ndosya.close()",
            correctAnswers: ["read"],
            options: ["read", "write", "get"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir log dosyasını ekleme modunda açıp, sonra da okuma modunda açan kodları tamamlayın.",
            codeTemplate: "yazici = open(\"log.txt\", ___)\nokuyucu = open(\"log.txt\", ___)",
            correctAnswers: ["\"a\"", "\"r\""],
            options: ["\"w\"", "\"r\"", "\"a\"", "\"x\""],
          ),
          CodeCompletionQuestion(
            questionText: "Dosyanın tüm satırlarını bir liste olarak okumak için `.readlines()` metodunu kullanın.",
            codeTemplate: "dosya = open(\"siir.txt\", \"r\")\nsatirlar = dosya.___()\ndosya.close()",
            correctAnswers: ["readlines"],
            options: ["read", "readlines", "readline"],
          ),
          CodeCompletionQuestion(
            questionText: "Dosyadan sadece tek bir satır okumak için `.readline()` metodunu kullanın.",
            codeTemplate: "dosya = open(\"hikaye.txt\", \"r\")\nilk_satir = dosya.___()\ndosya.close()",
            correctAnswers: ["readline"],
            options: ["read", "readlines", "readline"],
          ),
        ]
      }
    ]
  },

  "py_with_statement": {
    "sub_lessons": [
      {
        "title": "'with' Deyimi ile Güvenli Dosya İşlemleri",
        "parts": [
          {"text": "Her seferinde `dosya.close()` yazmayı unutmak yaygın bir hatadır ve sorunlara yol açabilir."},
          {"text": "Python'da dosyalarla çalışmanın modern ve en güvenli yolu `with` deyimini kullanmaktır."},
          {"text": "`with` bloğu bittiğinde, içinde bir hata oluşsa bile, Python dosyanın otomatik olarak ve güvenli bir şekilde kapatılacağını garanti eder."},
          {
            "text": "`with` deyiminin sihrini görelim.",
            "code": "with open(\"guvenli_not.txt\", \"w\") as dosya:\n  dosya.write(\"Bu çok daha iyi.\")\n\n# close() çağırmamıza gerek yok, dosya bu satırda zaten kapalı!",
            "code_explanation": "`with open(...) as dosya:` yapısını kullandık. Bloktan çıkıldığı an `dosya` otomatik olarak kapatıldı."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`with open(...)` kullanmanın en büyük avantajı nedir?",
            options: ["Daha hızlı çalışması", "Dosyayı otomatik ve güvenli bir şekilde kapatması", "Daha fazla veri yazması"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "`with` deyimini kullanarak bir dosyayı `f` takma adıyla açan kodu tamamla.",
            codeTemplate: "___ open(\"data.txt\") ___ f:\n  print(f.read())",
            correctAnswers: ["with", "as"],
            options: ["with", "as", "for", "in"],
          ),
          CodeCompletionQuestion(
            questionText: "`with` deyimi ile `siir.txt` dosyasını yazma modunda açıp içine \"Merhaba\" yazan kodu tamamlayın.",
            codeTemplate: "___ open(\"siir.txt\", ___) as siir_dosyasi:\n  siir_dosyasi.write(___)",
            correctAnswers: ["with", "\"w\"", "\"Merhaba\""],
            options: ["with", "as", "\"w\"", "\"r\"", "\"Merhaba\""],
          ),
          CodeCompletionQuestion(
            questionText: "`with` deyimini kullanarak bir dosyayı okuma modunda açıp içeriğini `icerik` değişkenine atayın.",
            codeTemplate: "with open(\"ayarlar.cfg\", \"r\") as dosya:\n  icerik = ___.___()",
            correctAnswers: ["dosya", "read"],
            options: ["dosya", "read", "icerik", "open"],
          ),
          CodeCompletionQuestion(
            questionText: "`with` deyimi ile bir dosyayı ekleme (`'a'`) modunda açıp yeni bir satır ekleyin.",
            codeTemplate: "with open(\"log.txt\", ___) as log_dosyasi:\n  log_dosyasi.write(___)",
            correctAnswers: ["\"a\"", "\"Yeni log\\n\""],
            options: ["\"a\"", "\"w\"", "\"Yeni log\\n\"", "\"log.txt\""],
          ),
        ]
      }
    ]
  },

  "py_json_files": {
    "sub_lessons": [
      {
        "title": "JSON Dosyaları ile Çalışmak",
        "parts": [
          {"text": "JSON (JavaScript Object Notation), farklı sistemler arasında veri alışverişi için kullanılan evrensel bir metin formatıdır."},
          {"text": "Yapısı, Python sözlüklerine (dictionary) çok benzer. Bu da Python ile kullanımını çok kolaylaştırır."},
          {"text": "Python'un `json` modülü, Python sözlüklerini JSON formatına ve tam tersini yapmamızı sağlar."},
          {"text": "`json.dump(veri, dosya)`: Sözlüğü dosyaya JSON olarak yazar."},
          {"text": "`json.load(dosya)`: JSON dosyasını okuyup sözlüğe çevirir."},
          {
            "text": "Bir sözlüğü JSON dosyasına kaydedip geri okuyalım.",
            "code": "import json\n\nveri = {\"isim\": \"Can\", \"puan\": 100}\n\n# Yazma\nwith open(\"oyuncu.json\", \"w\") as f:\n  json.dump(veri, f)\n\n# Okuma\nwith open(\"oyuncu.json\", \"r\") as f:\n  okunan_veri = json.load(f)\n  print(okunan_veri[\"isim\"]) # Çıktı: Can",
            "code_explanation": "`json` modülünü import ettik. `dump` ile sözlüğü dosyaya yazdık, `load` ile dosyadan okuyup tekrar sözlük haline getirdik."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "JSON veri formatı en çok hangi Python veri tipine benzer?",
            options: ["Liste (List)", "Sözlük (Dictionary)", "Demet (Tuple)"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Bir Python sözlüğünü bir dosyaya JSON olarak yazmak için hangi `json` fonksiyonu kullanılır?",
            codeTemplate: "json.___ (python_sozluk, dosya_nesnesi)",
            correctAnswers: ["dump"],
            options: ["dump", "load", "write"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir JSON dosyasını okuyup Python sözlüğüne çeviren kodu tamamlayın.",
            codeTemplate: "import ___\nwith open(\"data.json\") as f:\n  veri = json.___(___)",
            correctAnswers: ["json", "load", "f"],
            options: ["json", "load", "dump", "f"],
          ),
          CodeCompletionQuestion(
            questionText: "JSON dosyasını daha okunaklı hale getirmek için `json.dump` fonksiyonunun `indent` parametresini kullanın.",
            codeTemplate: "veri = {\"id\": 1}\nwith open(\"veri.json\", \"w\") as f:\n  json.dump(veri, f, indent=___)",
            correctAnswers: ["4"],
            options: ["4", "2", "True"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir JSON string'ini Python sözlüğüne çevirmek için `json.loads` fonksiyonunu tamamlayın. (`load` dosyadan, `loads` string'den okur).",
            codeTemplate: "import json\njson_string = \'{\"isim\": \"Ela\"}\'\nveri = json.___(___)",
            correctAnswers: ["loads", "json_string"],
            options: ["load", "loads", "json_string", "veri"],
          ),
        ]
      }
    ]
  },

// =======================================================================
// BÖLÜM 10: MODÜLLER VE PAKETLER
// =======================================================================

  "py_modules_import": {
    "sub_lessons": [
      {
        "title": "Modüller, 'import' ve 'from...import'",
        "parts": [
          {"text": "Modüller, içinde fonksiyonlar, değişkenler ve sınıflar barındıran Python dosyalarıdır (`.py`). Kodumuzu organize etmemizi ve başkalarının yazdığı kodları kullanmamızı sağlarlar."},
          {"text": "`import modul_adi`: Bir modülün tamamını kullanıma sokar. İçindeki bir şeyi kullanmak için `modul_adi.fonksiyon()` yazarız."},
          {"text": "`from modul_adi import fonksiyon_adi`: Modülden sadece belirli bir şeyi alır. Artık onu doğrudan `fonksiyon_adi()` olarak kullanabiliriz."},
          {"text": "`import modul_adi as takma_ad`: Modüle daha kısa bir takma ad veririz."},
          {
            "text": "Yaygın kullanılan `math` modülünden örnekler görelim.",
            "code": "import math\nprint(math.sqrt(16)) # Karekök alır -> 4.0\n\nfrom math import pi\nprint(pi) # Sadece pi sayısını alır -> 3.14159...\n\nimport random as rnd\nprint(rnd.randint(1, 10)) # 1-10 arası rastgele sayı",
            "code_explanation": "Üç farklı import yöntemini de gördük: modülün tamamını, modülden bir parçayı ve modülü takma adıyla."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "`from random import randint` yazdıktan sonra fonksiyonu nasıl çağırırsınız?",
            options: ["random.randint(1,5)", "randint(1,5)", "random(1,5)"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "`datetime` modülünü `dt` takma adıyla import eden kodu tamamla.",
            codeTemplate: "import datetime ___ ___",
            correctAnswers: ["as", "dt"],
            options: ["as", "dt", "from", "alias"],
          ),
          CodeCompletionQuestion(
            questionText: "`math` modülünden sadece `sqrt` ve `pow` fonksiyonlarını import eden kodu tamamlayın.",
            codeTemplate: "___ math ___ sqrt, ___",
            correctAnswers: ["from", "import", "pow"],
            options: ["from", "import", "pow", "as"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir modüldeki her şeyi mevcut isimalanına aktarmak için `*` kullanın. (Genellikle tavsiye edilmez!)",
            codeTemplate: "from math import ___\nprint(sqrt(25))",
            correctAnswers: ["*"],
            options: ["*", "all", "sqrt"],
          ),
          CodeCompletionQuestion(
            questionText: "`os` modülünü import edip içindeki `getcwd` (mevcut çalışma dizinini al) fonksiyonunu çağırın.",
            codeTemplate: "import ___\nmevcut_dizin = os.___()",
            correctAnswers: ["os", "getcwd"],
            options: ["os", "getcwd", "path", "system"],
          ),
        ]
      }
    ]
  },

  "py_standard_library": {
    "sub_lessons": [
      {
        "title": "Python Standart Kütüphanesi",
        "parts": [
          {"text": "Python'u kurduğunuzda, yanında birçok kullanışlı modül de gelir. Bunların hepsine 'Python Standart Kütüphanesi' denir."},
          {"text": "Ekstra bir kurulum yapmadan bu modülleri `import` edip kullanabilirsiniz."},
          {"text": "`math`: Matematiksel işlemler için (karekök, üs alma, pi sayısı vb.)."},
          {"text": "`random`: Rastgele sayılar üretmek, listelerden rastgele eleman seçmek için."},
          {"text": "`datetime`: Tarih ve saat işlemleri yapmak için."},
          {"text": "`os`: İşletim sistemiyle ilgili işlemler (dosya silme, klasör oluşturma vb.) için."},
          {
            "text": "Birkaç standart modülün kullanımını görelim.",
            "code": "import random\nimport datetime\n\n# Bir listeden rastgele birini seçme\nkazanan = random.choice([\"Ali\", \"Veli\", \"Ayşe\"])\nprint(f\"Kazanan: {kazanan}\")\n\n# Şimdiki zamanı alma\nsimdi = datetime.datetime.now()\nprint(f\"Tarih: {simdi.year}-{simdi.month}-{simdi.day}\")",
            "code_explanation": "Hiçbir kurulum yapmadan `random` ve `datetime` modüllerini kullanarak pratik işlemler yaptık."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Bir listeden rastgele bir eleman seçmek için hangi modül ve fonksiyon kullanılır?",
            options: ["math.choice", "random.choice", "datetime.choice"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "1 ile 6 arasında rastgele bir zar sayısı üreten kodu tamamla.",
            codeTemplate: "import random\nzar = random.randint(___, ___)",
            correctAnswers: ["1", "6"],
            options: ["1", "6", "0", "7"],
          ),
          CodeCompletionQuestion(
            questionText: "`math` modülündeki pi sayısını ve `random` modülünden rastgele bir sayı üreten kodu tamamlayın.",
            codeTemplate: "import ___\nimport ___\n\nprint(math.pi)\nprint(random.randint(1, 100))",
            correctAnswers: ["math", "random"],
            options: ["math", "random", "os", "sys"],
          ),
          CodeCompletionQuestion(
            questionText: "`datetime` modülünü kullanarak şimdiki zamanı alın ve sadece saat bilgisini yazdırın.",
            codeTemplate: "import datetime\nsimdi = datetime.datetime.now()\nprint(simdi.___)",
            correctAnswers: ["hour"],
            options: ["hour", "minute", "day"],
          ),
          CodeCompletionQuestion(
            questionText: "`random` modülünün `shuffle` fonksiyonunu kullanarak bir listeyi yerinde karıştırın.",
            codeTemplate: "import random\nkartlar = [1, 2, 3, 4]\nrandom.___(___)",
            correctAnswers: ["shuffle", "kartlar"],
            options: ["shuffle", "choice", "kartlar", "random"],
          ),
        ]
      }
    ]
  },

  "py_pip": {
    "sub_lessons": [
      {
        "title": "pip ile Paket Yönetimi",
        "parts": [
          {"text": "Standart kütüphane dışında, topluluk tarafından geliştirilmiş milyonlarca paket (modül koleksiyonu) vardır."},
          {"text": "Bu paketleri kurmak, güncellemek ve yönetmek için `pip` adlı komut satırı aracını kullanırız. `pip`, Python ile birlikte gelir."},
          {"text": "`pip install paket_adi`: Yeni bir paket kurar. (Örn: `pip install requests`)"},
          {"text": "`pip uninstall paket_adi`: Kurulu bir paketi siler."},
          {"text": "`pip list`: Kurulu tüm paketleri listeler."},
          {
            "text": "Bu komutlar, bu uygulamanın terminalinde değil, kendi bilgisayarınızın terminalinde (Komut İstemi, PowerShell, Terminal) çalıştırılır.",
            "code": "# Terminalde çalıştırılır:\n\n# 'requests' paketini kurmak için:\n# pip install requests\n\n# Kurulu paketleri görmek için:\n# pip list",
            "code_explanation": "`pip`, Python ekosisteminin gücünü kullanmanızı sağlayan anahtardır."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Web istekleri yapmak için kullanılan `requests` paketini kurmak için hangi komut kullanılır?",
            options: ["pip get requests", "pip install requests", "python install requests"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Kurulu olan `numpy` paketini bilgisayardan kaldıran `pip` komutunu tamamla.",
            codeTemplate: "pip ___ numpy",
            correctAnswers: ["uninstall"],
            options: ["uninstall", "remove", "delete"],
          ),
          CodeCompletionQuestion(
            questionText: "`pandas` paketini kuran ve ardından tüm kurulu paketleri listeleyen komutları tamamlayın.",
            codeTemplate: "pip ___ pandas\npip ___",
            correctAnswers: ["install", "list"],
            options: ["install", "get", "list", "show"],
          ),
          CodeCompletionQuestion(
            questionText: "Bir paketin belirli bir versiyonunu kurmak için `==` operatörünü kullanan komutu tamamlayın.",
            codeTemplate: "# pip install requests___2.25.0",
            correctAnswers: ["=="],
            options: ["==", "=", ">="],
          ),
          CodeCompletionQuestion(
            questionText: "Kurulu bir paket hakkında detaylı bilgi (versiyon, konum vb.) almak için `show` komutunu tamamlayın.",
            codeTemplate: "# pip ___ requests",
            correctAnswers: ["show"],
            options: ["show", "info", "details"],
          ),
        ]
      }
    ]
  },

  "py_virtual_env": {
    "sub_lessons": [
      {
        "title": "Sanal Ortamlar (Virtual Environments)",
        "parts": [
          {"text": "Her projenin farklı paketlere veya paketlerin farklı versiyonlarına ihtiyacı olabilir. Proje A, Paket X'in 1.0 versiyonunu kullanırken, Proje B 2.0 versiyonunu isteyebilir."},
          {"text": "Bu çakışmaları önlemek için 'Sanal Ortamlar' kullanırız."},
          {"text": "Sanal ortam, her proje için ayrı, izole bir Python kurulumu ve paket alanı oluşturur."},
          {"text": "Böylece bir projeye kurduğunuz paketler diğerlerini etkilemez."},
          {
            "text": "Yeni bir proje için sanal ortam oluşturmak ve aktif etmek genellikle şu komutlarla yapılır (Kendi terminalinizde):",
            "code": "# 'myenv' adında bir sanal ortam klasörü oluşturur\n# python -m venv myenv\n\n# Windows'ta aktif etmek için:\n# myenv\\Scripts\\activate\n\n# MacOS/Linux'ta aktif etmek için:\n# source myenv/bin/activate",
            "code_explanation": "Sanal ortamları kullanmak, Python'da profesyonel çalışmanın temel bir adımıdır."
          }
        ],
        "quiz": [
          MultipleChoiceQuestion(
            questionText: "Sanal ortamların temel amacı nedir?",
            options: ["Python'u hızlandırmak", "Projelerin bağımlılıklarını izole etmek", "Daha güzel kod yazmak"],
            correctAnswerIndex: 1,
          ),
          CodeCompletionQuestion(
            questionText: "Python'un yerleşik olarak sanal ortam oluşturmak için kullandığı modülün adı nedir?",
            codeTemplate: "python -m ___ myenv",
            correctAnswers: ["venv"],
            options: ["venv", "virtualenv", "env"],
          ),
          CodeCompletionQuestion(
            questionText: "Sanal ortamlar, farklı projelerin farklı paket ___ sahip olmasından kaynaklanan ___ önler.",
            codeTemplate: "Sanal ortamlar, farklı projelerin farklı paket ___ sahip olmasından kaynaklanan ___ önler.",
            correctAnswers: ["versiyonlarına", "çakışmaları"],
            options: ["isimlerine", "versiyonlarına", "hataları", "çakışmaları"],
          ),
          CodeCompletionQuestion(
            questionText: "Windows'ta `env` adında bir sanal ortamı aktif etmek için kullanılan betiğin yolunu tamamlayın.",
            codeTemplate: "# env\\___\\activate",
            correctAnswers: ["Scripts"],
            options: ["Scripts", "bin", "Lib"],
          ),
          CodeCompletionQuestion(
            questionText: "Aktif sanal ortamdaki tüm paketleri bir `requirements.txt` dosyasına yazdırmak için kullanılan komutu tamamlayın.",
            codeTemplate: "# pip freeze > ___",
            correctAnswers: ["requirements.txt"],
            options: ["requirements.txt", "packages.txt", "env.txt"],
          ),
        ]
      }
    ]
  },



};