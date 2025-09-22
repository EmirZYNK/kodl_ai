// lib/widgets/code_completion_widget.dart
import 'package:flutter/material.dart';
import 'package:learn_code/models/quiz_models.dart';

class CodeCompletionWidget extends StatefulWidget {
  final CodeCompletionQuestion question;
  final Function(List<String?>) onAnswerChanged;

  const CodeCompletionWidget({
    super.key,
    required this.question,
    required this.onAnswerChanged,
  });

  @override
  State<CodeCompletionWidget> createState() => _CodeCompletionWidgetState();
}

class _CodeCompletionWidgetState extends State<CodeCompletionWidget> {
  late List<String?> _userAnswers;
  int? _activeBlankIndex;

  // DEĞİŞİKLİK: _usedOptions listesi tamamen kaldırıldı. Artık ona ihtiyacımız yok.
  // late List<bool> _usedOptions;

  @override
  void initState() {
    super.initState();
    _initializeState();
  }

  // DEĞİŞİKLİK: Kod tekrarını önlemek ve state'i sıfırlamak için
  // başlatma ve temizleme mantığını tek bir fonksiyonda birleştirdim.
  void _initializeState() {
    _userAnswers = List.filled(widget.question.correctAnswers.length, null);
    _activeBlankIndex = null; // Başlangıçta aktif boşluk olmamalı
    widget.onAnswerChanged(_userAnswers);
  }

  void _clearAnswer(int blankIndex) {
    setState(() {
      // DEĞİŞİKLİK: _usedOptions ile ilgili mantık kaldırıldı.
      // Sadece kullanıcı cevabını temizliyoruz.
      _userAnswers[blankIndex] = null;
      _activeBlankIndex = blankIndex;
      widget.onAnswerChanged(_userAnswers);
    });
  }

  // DEĞİŞİKLİK: Bu fonksiyonun içine güvenlik kontrolü eklendi.
  Widget _buildCodeView() {
    List<String> parts = widget.question.codeTemplate.split('___');
    List<InlineSpan> spans = [];

    for (int i = 0; i < parts.length; i++) {
      spans.add(TextSpan(
        text: parts[i],
        style: const TextStyle(
            fontFamily: 'monospace', fontSize: 16, color: Colors.black),
      ));

      if (i < parts.length - 1) {
        if (i >= _userAnswers.length) {
          spans.add(const WidgetSpan(
            child: Text(
              ' [HATA: EKSİK CEVAP VERİSİ] ',
              style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'monospace'),
            ),
          ));
          break;
        }

        final isFilled = _userAnswers[i] != null;
        spans.add(WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: InkWell(
            onTap: () {
              // DEĞİŞİKLİK: Mantık basitleştirildi.
              // Eğer doluysa temizle, boşsa aktif hale getir.
              if (isFilled) {
                _clearAnswer(i);
              } else {
                setState(() => _activeBlankIndex = i);
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color:
                  _activeBlankIndex == i ? Colors.blueAccent : Colors.grey,
                  width: 2,
                ),
              ),
              child: Text(
                _userAnswers[i] ?? '     ',
                style: const TextStyle(
                  fontFamily: 'monospace',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ),
        ));
      }
    }
    return RichText(text: TextSpan(children: spans));
  }

  Widget _buildOptionsView() {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      alignment: WrapAlignment.center,
      children: List.generate(widget.question.options.length, (index) {
        final option = widget.question.options[index];

        // DEĞİŞİKLİK: Butonun basılabilir olup olmadığını belirleyen mantık basitleştirildi.
        // Artık sadece aktif bir boşluk olup olmadığına bakıyoruz.
        final bool canBePressed = _activeBlankIndex != null;

        return ElevatedButton(
          onPressed: canBePressed
              ? () {
            setState(() {
              // DEĞİŞİKLİK: _usedOptions ile ilgili mantık kaldırıldı.
              _userAnswers[_activeBlankIndex!] = option;

              // Otomatik olarak bir sonraki boşluğa geçmeyi deneyebiliriz.
              // Bu, kullanıcı deneyimini iyileştirir.
              int nextBlank = _activeBlankIndex! + 1;
              if (nextBlank < _userAnswers.length) {
                _activeBlankIndex = nextBlank;
              } else {
                _activeBlankIndex = null; // Tüm boşluklar doldu.
              }

              widget.onAnswerChanged(_userAnswers);
            });
          }
              : null,
          // DEĞİŞİKLİK: Butonun stilini belirleyen `isUsed` mantığı kaldırıldı.
          // Artık tüm butonlar her zaman aynı görünecek.
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            // Eğer basılamıyorsa, Flutter zaten rengi soluklaştıracaktır.
          ),
          child: Text(option),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              widget.question.questionText,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xfff5f5f5),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: _buildCodeView(),
            ),
            const SizedBox(height: 32),
            Text(
              _activeBlankIndex == null
                  ? "Doldurmak için bir boşluğa dokun."
                  : "Şimdi bir seçenek belirle.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
            ),
            const SizedBox(height: 16),
            _buildOptionsView(),

            // DEĞİŞİKLİK: Kullanıcının tüm cevaplarını temizlemesi için bir sıfırlama
            // butonu eklemek iyi bir fikir olabilir.
            TextButton(
              onPressed: () {
                setState(() {
                  _initializeState();
                });
              },
              child: const Text("Tümünü Temizle"),
            )
          ],
        ),
      ),
    );
  }
}