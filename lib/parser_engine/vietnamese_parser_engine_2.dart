
part of parser_engine;

/// The parser engine for unsigned Vietnamese language using hash map to replace.
/// @deprecated Use `VietnameseParserEngine2` instead.
/// Because `VietnameseParserEngine2` is faster than `VietnameseParserEngine`.
class VietnameseParserEngine2 implements ParserEngine {

  final Map<String, String> _signToUnsignMap = Map();

  VietnameseParserEngine2() {
    final sign = 'àáạảãâầấậẩẫăằắặẳẵÀÁẠẢÃÂẦẤẬẨẪĂẰẮẶẲẴèéẹẻẽêềếệểễÈÉẸẺẼÊỀẾỆỂỄòóọỏõôồốộổỗơờớợởỡÒÓỌỎÕÔỒỐỘỔỖƠỜỚỢỞỠùúụủũưừứựửữÙÚỤỦŨƯỪỨỰỬỮìíịỉĩÌÍỊỈĨđĐỳýỵỷỹỲÝỴỶỸ';
    final unsign = 'aaaaaaaaaaaaaaaaaAAAAAAAAAAAAAAAAAeeeeeeeeeeeEEEEEEEEEEEoooooooooooooooooOOOOOOOOOOOOOOOOOuuuuuuuuuuuUUUUUUUUUUUiiiiiIIIIIdDyyyyyYYYYY';

    for (var i = 0; i < sign.length; i++) {
      _signToUnsignMap[sign[i]] = unsign[i];
    }
  }

  @override
  String unsigned(final String text) {
    final buffer = StringBuffer();
    for (var i = 0; i < text.length; i++) {
      final char = text[i];
      buffer.write(_signToUnsignMap[char] ?? char);
    }
    return buffer.toString();
  }
}
