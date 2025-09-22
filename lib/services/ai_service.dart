// lib/services/ai_service.dart

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class AIService {
  // API anahtarını .env dosyasından al
  final String? _apiKey = dotenv.env['GEMINI_API_KEY'];

  Future<String> getChatResponse(String userMessage) async {
    if (_apiKey == null || _apiKey!.isEmpty) {
      return "Hata: API anahtarı bulunamadı. Lütfen .env dosyasını kontrol edin.";
    }

    // Modeli başlat
    final model = GenerativeModel(model: 'gemini-pro', apiKey: _apiKey!);

    const roleInstruction =
        "Sen, 'Kod Öğren' adlı bir mobil uygulamada kullanıcılara yardımcı olan bir AI asistanısın. "
        "Amacın, programlama öğrenen kullanıcılara destek olmaktır. "
        "CEVAPLARINI HER ZAMAN KISA, ÖZ VE ANLAŞILIR TUT. "
        "Mobil bir uygulama ekranına sığacak şekilde, en fazla 2-3 kısa paragraf kullan. "
        "Şimdi kullanıcının şu sorusunu cevapla: ";

    final fullPrompt = roleInstruction + userMessage;

    try {
      final content = [Content.text(fullPrompt)];
      final response = await model.generateContent(content);
      return response.text ?? "Yapay zekadan bir yanıt alınamadı.";
    } catch (e) {
      print("Gemini API Hatası (Chat): $e");
      return "Üzgünüm, yapay zeka servisine bağlanırken bir hata oluştu. Lütfen tekrar deneyin.";
    }
  }

  Future<Map<String, String>> analyzeCode(String code, String language) async {
    if (_apiKey == null || _apiKey!.isEmpty) {
      return {'output': '// Hata', 'analysis': 'API anahtarı bulunamadı.'};
    }

    final model = GenerativeModel(model: 'gemini-pro', apiKey: _apiKey!);

    final prompt =
        "Aşağıdaki $language kodunu bir programlama eğitmeni gibi analiz et. "
        "Analizini iki bölüme ayır: 'ÇIKTI' ve 'ANALİZ'.\n"
        "1. 'ÇIKTI' bölümünde, kodun çıktısını birebir yaz.\n"
        "2. 'ANALİZ' bölümünde, kodun ne yaptığını, olası hataları veya daha iyi nasıl yazılabileceğini açıkla. "
        "ANALİZİNİ KISA VE ANLAŞILIR PARAGRAFLAR HALİNDE, ÖZET ŞEKLİNDE YAP. "
        "MOBİL EKRAN İÇİN UYGUN OLMASINA DİKKAT ET.\n\n"
        "Sonucu şu formatta ver: ---ÇIKTI---[buraya çıktı gelecek]---ANALİZ---[buraya analiz gelecek]\n\n"
        "İşte kod:\n```$language\n$code\n```";

    try {
      final content = [Content.text(prompt)];
      final response = await model.generateContent(content);
      final responseText = response.text ?? "";

      final outputPart = responseText.split('---ÇIKTI---')[1]?.split('---ANALİZ---')[0]?.trim();
      final analysisPart = responseText.split('---ANALİZ---')[1]?.trim();

      if (outputPart == null || analysisPart == null) {
        return {
          'output': '// Analiz formatı ayrıştırılamadı.',
          'analysis': responseText,
        };
      }

      return {
        'output': outputPart,
        'analysis': analysisPart,
      };
    } catch (e) {
      print("Gemini API Hatası (Analyze): $e");
      return {
        'output': '// Hata',
        'analysis': 'Yapay zeka analiz servisine bağlanılamadı: $e',
      };
    }
  }
}