import 'dart:io';
import 'dart:math';

import 'package:test/test.dart';
import 'package:tiengviet/parser_engine/parser_engine.dart';

final random = Random.secure();

void main() {
  group('performance testing', () {
    // test('Performance test 172 words', () {
    //   runPerformanceTest('test/resources/172_words.txt');
    // });
    //
    // test('Performance test 1k words', () {
    //   runPerformanceTest('test/resources/1k_words.txt');
    // });
    //
    // test('Performance test 2k words', () {
    //   runPerformanceTest('test/resources/2k_words.txt');
    // });

    test('Performance test 4.5k words', () {
      runPerformanceTest('test/resources/4.5k_words.txt');
    });

  });
}

void runPerformanceTest(String path) {
  var text = readText(path);

  final ParserEngine v1 = VietnameseParserEngine();
  print('Text length ${text.length} characters');
  var v1Time = runWithTimer(() => v1.unsigned(text));
  print('VietnameseParserEngine: $v1Time microseconds');

  final ParserEngine v2 = VietnameseParserEngine2();
  var v2Time = runWithTimer(() => v2.unsigned(text));
  print('VietnameseParserEngine2: $v2Time microseconds');

  print('VietnameseParserEngine2 is faster than VietnameseParserEngine: ${(v1Time / v2Time).toStringAsFixed(2)} times');
}

// open file and read data as text
String readText(String path) {
  var file = File(path);
  return file.readAsStringSync();
}

/// Run function with timer and return time in microseconds
int runWithTimer(Function func) {
  final start = DateTime.now();
  func();
  final end = DateTime.now();
  return end.microsecondsSinceEpoch - start.microsecondsSinceEpoch;
}
