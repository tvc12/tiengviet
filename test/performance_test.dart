import 'dart:math';

import 'package:test/test.dart';
import 'package:tiengviet/parser_engine/parser_engine.dart';

final random = Random.secure();

void main() {
  test('Performance test 10', () {
    runPerformanceTest(10);
  });
  test('Performance test 100', () {
    runPerformanceTest(100);
  });

  test('Performance test 1000', () {
    runPerformanceTest(1000);
  });

  test('Performance test 10000', () {
    runPerformanceTest(100000);
  });
}

void runPerformanceTest(int wordSize) {
  var text = generateVietnameseParagraph(wordSize);

  final ParserEngine v1 = VietnameseParserEngine();
  print('Text length ${text.length} characters');
  var v1Time = runWithTimer(() => v1.unsigned(text));
  print('VietnameseParserEngine: $v1Time microseconds');

  final ParserEngine v2 = VietnameseParserEngine2();
  var v2Time = runWithTimer(() => v2.unsigned(text));
  print('VietnameseParserEngine2: $v2Time microseconds');

  print('VietnameseParserEngine2 is faster than VietnameseParserEngine: ${(v1Time / v2Time).toStringAsFixed(2)} times');
  assert(v2Time < v1Time);
}

String generateVietnameseParagraph(int wordSize) {
  var buffer = StringBuffer();
  for (var i = 0; i < wordSize; i++) {
    final word = generateVietnameseWord(5);
    buffer
      ..write(word)
    ..write(' ');
  }

  return buffer.toString();
}

String generateVietnameseWord(int length) {
  final consonants = [
    'b',
    'c',
    'd',
    'đ',
    'g',
    'h',
    'k',
    'l',
    'm',
    'n',
    'p',
    'q',
    'r',
    's',
    't',
    'v',
    'x',
    'y',
  ];

  final vowels = [
    'a',
    'ă',
    'â',
    'e',
    'ê',
    'i',
    'o',
    'ô',
    'ơ',
    'u',
    'ư',
    'y',
  ];

  final textBuffer = StringBuffer();
  for (var i = 0; i < length; i++) {
    final bool isVowel = i % 2 == 0;

    String character = isVowel ? vowels[random.nextInt(vowels.length)] : consonants[random.nextInt(consonants.length)];

    textBuffer.write(character);
  }

  return textBuffer.toString();
}

/// Run function with timer and return time in microseconds
int runWithTimer(Function func) {
  final start = DateTime.now();
  func();
  final end = DateTime.now();
  return end.microsecondsSinceEpoch - start.microsecondsSinceEpoch;
}
