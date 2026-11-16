/// Response models for the Roman Numeral Converter API.

/// API Response wrapper.
class RomanconverterResponse {
  final String status;
  final dynamic error;
  final RomanconverterData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  RomanconverterResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory RomanconverterResponse.fromJson(Map<String, dynamic> json) => RomanconverterResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? RomanconverterData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Roman Numeral Converter API.

class RomanconverterData {
  num? number;
  String? roman;
  RomanconverterDataBreakdown? breakdown;

  RomanconverterData({
    this.number,
    this.roman,
    this.breakdown,
  });

  factory RomanconverterData.fromJson(Map<String, dynamic> json) => RomanconverterData(
      number: json['number'],
      roman: json['roman'],
      breakdown: json['breakdown'] != null ? RomanconverterDataBreakdown.fromJson(json['breakdown']) : null,
    );
}

class RomanconverterDataBreakdown {
  num? M;
  num? X;
  num? IV;

  RomanconverterDataBreakdown({
    this.M,
    this.X,
    this.IV,
  });

  factory RomanconverterDataBreakdown.fromJson(Map<String, dynamic> json) => RomanconverterDataBreakdown(
      M: json['M'],
      X: json['X'],
      IV: json['IV'],
    );
}

class RomanconverterRequest {
  int number;

  RomanconverterRequest({
    required this.number,
  });

  Map<String, dynamic> toJson() => {
      'number': number,
    };
}
