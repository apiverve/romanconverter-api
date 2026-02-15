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
        /// The number to convert to Roman numerals
        /// </summary>
        [JsonProperty("number")]
        public string Number { get; set; }
    }
}
