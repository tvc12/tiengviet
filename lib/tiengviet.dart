library tiengviet;

import 'package:tiengviet/parser_engine/parser_engine.dart';

part 'tiengviet_core.dart';

///[text] vietnamese language
///
///[return] vietnamese language unsign
@Deprecated('Use `TiengViet.parse` instead. Will remove in tiengviet: 1.0.0')
String tiengviet(String text) => TiengVietCore.unsigned(text);

abstract class TiengViet {
  /// Parser engine for parse text to unsigned
  ///
  /// [default] parser engine user [VietnameseParserEngine])
  static ParserEngine _parserEngine = VietnameseParserEngine2();
  /// Method set engine for parser
  ///
  static void setParseEngine(ParserEngine parserEngine) {
    _parserEngine = parserEngine;
  }

  ///[text] vietnamese language
  ///
  ///[return] vietnamese language unsigned
  static String parse(String text) {
    return _parserEngine.unsigned(text);
  }
}
