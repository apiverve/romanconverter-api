using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.RomanNumeralConverter
{
    /// <summary>
    /// Query options for the Roman Numeral Converter API
    /// </summary>
    public class RomanNumeralConverterQueryOptions
    {
        /// <summary>
        /// The number to convert to Roman numerals (1-3999)
        /// Example: 2024
        /// </summary>
        [JsonProperty("number")]
        public string Number { get; set; }

        /// <summary>
        /// The Roman numeral to convert to a number
        /// Example: MMXXIV
        /// </summary>
        [JsonProperty("roman")]
        public string Roman { get; set; }
    }
}
