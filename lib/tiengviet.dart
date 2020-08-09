library tiengviet;

part 'tiengviet_core.dart';

///[text] vietnamese language
///
///[return] vietnamese language unsign
@Deprecated('Use `TiengViet.parse` instead. Will remove in tiengviet: 1.0.0')
String tiengviet(String text) => TiengVietCore.unsign(text);

abstract class TiengViet {
  ///[text] vietnamese language
  ///
  ///[return] vietnamese language unsign
  static String parse(String text) {
    return TiengVietCore.unsign(text);
  }
}
