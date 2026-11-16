# Roman Numeral Converter API - Dart/Flutter Client

Roman Numeral Converter is a bidirectional tool for converting between Arabic numbers (1-3999) and Roman numerals. It provides detailed breakdowns of the conversion process.

[![pub package](https://img.shields.io/pub/v/apiverve_romanconverter.svg)](https://pub.dev/packages/apiverve_romanconverter)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Roman Numeral Converter API](https://apiverve.com/marketplace/romanconverter?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_romanconverter: ^1.2.6
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_romanconverter/apiverve_romanconverter.dart';

void main() async {
  final client = RomanconverterClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'number': 2024
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "number": 2024,
    "roman": "MMXXIV",
    "breakdown": {
      "M": 2,
      "X": 2,
      "IV": 1
    }
  }
}
```

## API Reference

- **API Home:** [Roman Numeral Converter API](https://apiverve.com/marketplace/romanconverter?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/romanconverter](https://docs.apiverve.com/ref/romanconverter?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
