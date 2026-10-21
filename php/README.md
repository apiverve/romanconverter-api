# Roman Numeral Converter API - PHP Package

Roman Numeral Converter is a bidirectional tool for converting between Arabic numbers (1-3999) and Roman numerals. It provides detailed breakdowns of the conversion process.

## Installation

Install via Composer:

```bash
composer require apiverve/romanconverter
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Romanconverter\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['number' => 2024]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Romanconverter\Client;
use APIVerve\Romanconverter\Exceptions\APIException;
use APIVerve\Romanconverter\Exceptions\ValidationException;

try {
    $response = $client->execute(['number' => 2024]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/romanconverter?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/romanconverter?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/romanconverter?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
