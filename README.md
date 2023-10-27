# tiengviet

Convert vietnamese sign to unsign easily like eat 🥞🥞🥞.

![Build Status](https://img.shields.io/travis/com/tvc12/tiengviet?style=flat-square)
![Contribute](https://img.shields.io/github/contributors/tvc12/tiengviet.svg?style=flat-square)
![GitHub](https://img.shields.io/github/license/tvc12/tiengviet.svg?style=flat-square)
[![Hits-of-Code](https://hitsofcode.com/github/tvc12/tiengviet)](https://hitsofcode.com/view/github/tvc12/tiengviet?style=flat-square)
![Pub Version](https://img.shields.io/pub/v/tiengviet?style=flat-square)

🇻🇳 Công cụ chuyển đổi Tiếng Việt có dấu sang không dấu dễ hơn là ăn bánh 🥞🥞🥞🥞.

### Getting Started

#### Install

```yml
dependencies:
  tiengviet: ^1.0.0
```

You can install packages from the command line:

```bash
pub get
-- or --
flutter pub get
```

#### Usage

```dart
import 'package:tiengviet/tiengviet.dart';

print(TiengViet.parse('Xin chào việt nam')); // Xin chao viet nam
```

### Performance

-------------------------------

|       Words       | VietnameseParserEngine (µs) | VietnameseParserEngine2 (µs) | 
|:-----------------:|:---------------------------:|:----------------------------:|
| 172 (~814 chars)  |           18,751            |            2,362             |
| 1k (~6860 chars)  |           25,421            |            10,538            |
| 2k (~9269 chars)  |           91,743            |            19,600            |
| 4.5k (~21k chars) |           137,592           |            30,577            |

### You might also like

- [vietnamese](https://github.com/harrytran103/vietnamese) - ✂️🇻🇳 A helpful tool for removing Vietnamese accents.
- [tiengviet-rust](https://github.com/tvc12/tiengviet-rust) - 🦀 Vietnamese parser engine written by Rust

### Contributors

| [![Vi Chi Thien](https://github.com/tvc12.png?size=100)](https://github.com/tvc12) |
|:----------------------------------------------------------------------------------:|
|                      [Vi Chi Thien](https://github.com/tvc12)                      |

### License

[BSD 3-Clause @tvc12](./LICENSE)
