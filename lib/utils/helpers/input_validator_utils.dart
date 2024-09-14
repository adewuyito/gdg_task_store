class InputValidatorUtils {
  const InputValidatorUtils._();
  static bool _isEmailAddressValid(String email) {
    final regex = RegExp(
      r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$',
    );
    return regex.hasMatch(email);
  }

  static bool isInputValid(String? value) {
    return value != null && value.trim().isNotEmpty;
  }

  static String? validEmailAddress(String? email) {
    if (email == null || email.trim().isEmpty) {
      return 'Email is required';
    }

    if (_isEmailAddressValid(email.trim())) {
      return null;
    }
    return 'Invalid email address';
  }

  static String? nonEmptyField(String label, String? value) {
    return isInputValid(value) ? null : '$label is required';
  }

  static bool confirmPassword(String password1, String password2) {
    if (password1 == password2) {
      return true;
    }

    return false;
  }


  // Function to validate the password 
  static bool validatePassword(String password) { 
    // Reset error message 
    String _errorMessage = ''; 
  
    // Password length greater than 6 
    if (password.length <6) { 
      _errorMessage += 'Password must be longer than 6 characters.\n'; 
    } 
  
    // Contains at least one uppercase letter 
    if (!password.contains(RegExp(r'[A-Z]'))) { 
      _errorMessage += '• Uppercase letter is missing.\n'; 
    } 
  
    // Contains at least one lowercase letter 
    if (!password.contains(RegExp(r'[a-z]'))) { 
      _errorMessage += '• Lowercase letter is missing.\n'; 
    } 
  
    // Contains at least one digit 
    if (!password.contains(RegExp(r'[0-9]'))) { 
      _errorMessage += '• Digit is missing.\n'; 
    } 
  
    // Contains at least one special character 
    if (!password.contains(RegExp(r'[!@#%^&*(),.?":{}|<>]'))) { 
      _errorMessage += '• Special character is missing.\n'; 
    } 
  
    // If there are no error messages, the password is valid 
    return _errorMessage.isEmpty; 
  } 
} 

