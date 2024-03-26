double calculatePasswordStrength(String password) {
  // Length of the password
  final int length = password.length;

  // Check for presence of uppercase letters
  final bool hasUpperCase = password.contains(RegExp('[A-Z]'));

  // Check for presence of lowercase letters
  final bool hasLowerCase = password.contains(RegExp('[a-z]'));

  // Check for presence of digits
  final bool hasDigits = password.contains(RegExp('[0-9]'));

  // Check for presence of special characters
  final bool hasSpecialCharacters =
      password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

  // Strength factors
  int strengthFactors = 0;

  // Increment strength factors based on presence of criteria
  if (length >= 8) {
    strengthFactors += 1;
  }
  if (hasUpperCase) {
    strengthFactors += 1;
  }
  if (hasLowerCase) {
    strengthFactors += 1;
  }
  if (hasDigits) {
    strengthFactors += 1;
  }
  if (hasSpecialCharacters) {
    strengthFactors += 1;
  }

  // Calculate strength as a ratio of fulfilled criteria to total criteria
  final double strength = strengthFactors / 5.0;

  return strength;
}
