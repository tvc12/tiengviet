import 'package:vn_unsign/vn_unsign.dart';
import "package:test/test.dart";

void main() {
  group("String", () {
    test("Test API none vietnamese", () {
      expect(vn("Tests can be grouped "), equals("Tests can be grouped "));
      expect(vn("Each group's description is added to the beginning of its test's descriptions"),
          equals("Each group's description is added to the beginning of its test's descriptions"));
    });
    test("Test API vietnamese unsign", () {
      expect(vn("viet nam"), equals("viet nam"));
      expect(vn("Vi Chi Thien"), equals("Vi Chi Thien"));
    });
    test("Test API vietnamese sign", () {
      expect(vn("Văn học theo cách nói chung nhất, là bất kỳ tác phẩm nào bằng văn bản"),
          equals("Van hoc theo cach noi chung nhat, la bat ky tac pham nao bang van ban"));
      expect(vn("Bạn đang có ý tưởng về 1 công cụ nào đó"),
          equals("Ban dang co y tuong ve 1 cong cu nao do"));
    });
  });
  group("String and int", () {
    test("Test API none vietnamese", () {
      expect(vn("360–400 million (2006);"), equals("360–400 million (2006);"));
      expect(
          vn("B2 upper intermediate: An interview"), equals("B2 upper intermediate: An interview"));
    });
    test("Test API vietnamese unsign", () {
      expect(vn("Cuoi the ky thu 19 tro di"), equals("Cuoi the ky thu 19 tro di"));
      expect(vn("Tap 1, Van hoc the ky thu 10 - 15"), equals("Tap 1, Van hoc the ky thu 10 - 15"));
    });
    test("Test API vietnamese sign", () {
      expect(vn("Sau hơn 10 thế kỷ hình thành và phát triển"),
          equals("Sau hon 10 the ky hinh thanh va phat trien"));
      expect(vn("Đây là tiếng mẹ đẻ của khoảng 85% dân cư Việt Nam"),
          equals("Day la tieng me de cua khoang 85% dan cu Viet Nam"));
    });
  });
}
