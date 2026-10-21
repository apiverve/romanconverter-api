# Roman Numeral Converter API - Ruby Gem

Roman Numeral Converter is a bidirectional tool for converting between Arabic numbers (1-3999) and Roman numerals. It provides detailed breakdowns of the conversion process.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_romanconverter'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_romanconverter
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_romanconverter'

# Initialize the client
client = APIVerve::Romanconverter::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ number: 2024 })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ number: 2024 })
  puts response["data"]
rescue APIVerve::Romanconverter::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Romanconverter::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Romanconverter::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/romanconverter?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/romanconverter?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/romanconverter?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
