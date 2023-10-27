library parser_engine;

import 'dart:ffi';

part './vietnamese_parser_engine.dart';
part './vietnamese_parser_engine_2.dart';

abstract class ParserEngine {
  String unsigned(final String text);
}
