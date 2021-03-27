import 'package:test/test.dart';
import 'package:tiengviet/tiengviet.dart';

void main() {
  group('String', () {
    test('Test API none vietnamese', () {
      expect(
        TiengViet.parse('Tests can be grouped '),
        equals('Tests can be grouped '),
      );
      expect(
        TiengViet.parse(
          'Each group\'s description is added to the beginning of its test\'s descriptions',
        ),
        equals(
          'Each group\'s description is added to the beginning of its test\'s descriptions',
        ),
      );
    });
    test('Test API vietnamese unsign', () {
      expect(TiengViet.parse('viet nam'), equals('viet nam'));
      expect(TiengViet.parse('Vi Chi Thien'), equals('Vi Chi Thien'));
    });
    test('Test API vietnamese sign', () {
      expect(
        TiengViet.parse(
          'Văn học theo cách nói chung nhất, là bất kỳ tác phẩm nào bằng văn bản',
        ),
        equals(
          'Van hoc theo cach noi chung nhat, la bat ky tac pham nao bang van ban',
        ),
      );
      expect(
        TiengViet.parse(
          'VĂN HỌC THEO CÁCH NÓI CHUNG NHẤT, LÀ BẤT KỲ TÁC PHẨM NÀO BẰNG VĂN BẢN',
        ),
        equals(
          'VAN HOC THEO CACH NOI CHUNG NHAT, LA BAT KY TAC PHAM NAO BANG VAN BAN',
        ),
      );
      expect(
        TiengViet.parse('Bạn đang có ý tưởng về 1 công cụ nào đó'),
        equals(
          'Ban dang co y tuong ve 1 cong cu nao do',
        ),
      );
    });
  });
  group('String and int', () {
    test('Test API none vietnamese', () {
      expect(
        TiengViet.parse('360–400 million (2006);'),
        equals('360–400 million (2006);'),
      );
      expect(
        TiengViet.parse('B2 upper intermediate: An interview'),
        equals('B2 upper intermediate: An interview'),
      );
    });
    test('Test API vietnamese unsign', () {
      expect(TiengViet.parse('Cuoi the ky thu 19 tro di'),
          equals('Cuoi the ky thu 19 tro di'));
      expect(
        TiengViet.parse('Tap 1, Van hoc the ky thu 10 - 15'),
        equals('Tap 1, Van hoc the ky thu 10 - 15'),
      );
    });
    test('Test API vietnamese sign', () {
      expect(
        TiengViet.parse('Sau hơn 10 thế kỷ hình thành và phát triển'),
        equals('Sau hon 10 the ky hinh thanh va phat trien'),
      );
      expect(
        TiengViet.parse('Đây là tiếng mẹ đẻ của khoảng 85% dân cư Việt Nam'),
        equals('Day la tieng me de cua khoang 85% dan cu Viet Nam'),
      );
    });
    test('Test with value is empty', () {
      expect(
        TiengViet.parse(''),
        equals(''),
      );
    });
  });
}
