// tool/generate_strings.dart (GÜNCELLENMİŞ VE TAMAMLANMIŞ HALİ)

import 'dart:io';
import 'dart:convert';

void main() {
  print('>>> Manuel çeviri üretici başlatıldı...');

  const enPath = 'lib/l10n/app_en.arb';
  const trPath = 'lib/l10n/app_tr.arb';
  const outputPath = 'lib/l10n/strings.dart';

  final enMap = json.decode(File(enPath).readAsStringSync()) as Map<String, dynamic>;
  final trMap = json.decode(File(trPath).readAsStringSync()) as Map<String, dynamic>;

  final buffer = StringBuffer();

  buffer.writeln('// BU DOSYA OTOMATİK OLARAK ÜRETİLMİŞTİR. ELLE DEĞİŞTİRMEYİN.');
  buffer.writeln("import 'package:flutter/foundation.dart';"); // YENİ IMPORT
  buffer.writeln("import 'package:flutter/widgets.dart';");
  buffer.writeln('');

  // 1. Arayüz (Abstract Class) - Bu kısım aynı
  buffer.writeln('abstract class L10n {');
  for (final key in enMap.keys) {
    if (key.startsWith('@')) continue;
    // YENİ: Parametreli metinler için basit bir temel hazırlığı (gerçek implementasyon olmadan)
    final meta = enMap['@$key'];
    if (meta != null && meta['placeholders'] != null) {
      final placeholders = meta['placeholders'] as Map<String, dynamic>;
      final params = placeholders.keys.map((p) => 'Object $p').join(', ');
      buffer.writeln('  String $key($params);');
    } else {
      buffer.writeln('  String get $key;');
    }
  }
  buffer.writeln('');
  buffer.writeln('  static L10n of(BuildContext context) {');
  buffer.writeln('    return Localizations.of<L10n>(context, L10n) ?? _L10nEn();');
  buffer.writeln('  }');

  // YENİ: Delegate'i kolayca erişmek için bir getter ekliyoruz.
  buffer.writeln('  static const LocalizationsDelegate<L10n> delegate = _L10nDelegate();');

  buffer.writeln('}');
  buffer.writeln('');

  // 2. İngilizce Sınıfı - Bu kısım aynı
  buffer.writeln('class _L10nEn implements L10n {');
  buffer.writeln('  const _L10nEn();'); // YENİ: Const constructor
  for (var entry in enMap.entries) {
    if (entry.key.startsWith('@')) continue;
    final value = entry.value.replaceAll("'", "\\'").replaceAll('\$', '\\\$');
    buffer.writeln("  @override");
    // YENİ: Parametreli metin kontrolü
    final meta = enMap['@${entry.key}'];
    if (meta != null && meta['placeholders'] != null) {
      final placeholders = meta['placeholders'] as Map<String, dynamic>;
      final params = placeholders.keys.map((p) => 'Object $p').join(', ');
      var tempValue = value;
      for (final p in placeholders.keys) {
        tempValue = tempValue.replaceAll('{$p}', '\${$p}');
      }
      buffer.writeln("  String ${entry.key}($params) => '$tempValue';");
    } else {
      buffer.writeln("  String get ${entry.key} => '$value';");
    }
  }
  buffer.writeln('}');
  buffer.writeln('');

  // 3. Türkçe Sınıfı - Bu kısım aynı
  buffer.writeln('class _L10nTr implements L10n {');
  buffer.writeln('  const _L10nTr();'); // YENİ: Const constructor
  for (var entry in trMap.entries) {
    if (entry.key.startsWith('@')) continue;
    final value = entry.value.replaceAll("'", "\\'").replaceAll('\$', '\\\$');
    buffer.writeln("  @override");
    // YENİ: Parametreli metin kontrolü
    final meta = trMap['@${entry.key}'];
    if (meta != null && meta['placeholders'] != null) {
      final placeholders = meta['placeholders'] as Map<String, dynamic>;
      final params = placeholders.keys.map((p) => 'Object $p').join(', ');
      var tempValue = value;
      for (final p in placeholders.keys) {
        tempValue = tempValue.replaceAll('{$p}', '\${$p}');
      }
      buffer.writeln("  String ${entry.key}($params) => '$tempValue';");
    } else {
      buffer.writeln("  String get ${entry.key} => '$value';");
    }
  }
  buffer.writeln('}');
  buffer.writeln('');

  // 4. YENİ EKLENEN BÖLÜM: Delegate Sınıfı
  buffer.writeln('class _L10nDelegate extends LocalizationsDelegate<L10n> {');
  buffer.writeln('  const _L10nDelegate();');
  buffer.writeln('');
  buffer.writeln('  @override');
  buffer.writeln('  bool isSupported(Locale locale) => [\'en\', \'tr\'].contains(locale.languageCode);');
  buffer.writeln('');
  buffer.writeln('  @override');
  buffer.writeln('  Future<L10n> load(Locale locale) {');
  buffer.writeln('    switch (locale.languageCode) {');
  buffer.writeln('      case \'en\':');
  buffer.writeln('        return SynchronousFuture(const _L10nEn());');
  buffer.writeln('      case \'tr\':');
  buffer.writeln('        return SynchronousFuture(const _L10nTr());');
  buffer.writeln('      default:');
  buffer.writeln('        return SynchronousFuture(const _L10nTr()); // Varsayılan dil');
  buffer.writeln('    }');
  buffer.writeln('  }');
  buffer.writeln('');
  buffer.writeln('  @override');
  buffer.writeln('  bool shouldReload(_L10nDelegate old) => false;');
  buffer.writeln('}');


  File(outputPath).writeAsStringSync(buffer.toString());

  print('>>> BAŞARILI: "$outputPath" dosyası oluşturuldu/güncellendi.');
}