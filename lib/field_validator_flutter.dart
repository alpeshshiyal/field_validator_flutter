
class FieldValidatorFlutter {
  
  static  String? nameValidator(String value) {
    var pattern = r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]';
    RegExp regex = RegExp(pattern);

    if (!regex.hasMatch(value) || value.isEmpty) {
      return 'Name  cant\'t  be  Empty.';
    } else if (value.length < 2) {
      return 'Name Must be 2 character Long.';
    }
    return null;
  }

  static String? mobile(String value,{int length=10}) {
    if (value.isEmpty) {
      return 'Mobile number cannot be  empty.';
    } else if (value.length < length) {
      return 'Number must be $length digits long.';
    } else if (value.length > length) {
      return 'Number must be $length digits long.';
    }
    return null;
  }

  static String? username(String value) {
    var pattern = r"^[a-zA-Z0-9._]*$";
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value) || value.isEmpty) {
      return 'Enter a valid Username';
    }
    return null;
  }


  static String? tax(String? value) {
    String? message;
    if ((value?.isNotEmpty??false)) {
      if(double.parse(value!)>100.0){
        return 'Enter valid tax percentage';
      }
    }
    return message;
  }

  static String? quantity(String? value) {
    if (value == null || value.isEmpty) {
      return 'Quantity is required';
    }
    final quantity = int.tryParse(value);
    if (quantity == null || quantity <= 0) {
      return 'Please enter a valid positive number';
    }
    return null;
  }

  static String? required(String? value, {String fieldName = 'This field'}) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName is required';
    }
    return null;
  }

  static String? email(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }
    final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!regex.hasMatch(value.trim())) {
      return 'Enter a valid email address';
    }
    return null;
  }

  static String? phone(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Phone number is required';
    }
    final regex = RegExp(r'^\+?[0-9]{7,15}$');
    if (!regex.hasMatch(value.trim())) {
      return 'Enter a valid phone number';
    }
    return null;
  }

  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Password must have at least one uppercase letter';
    }
    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return 'Password must have at least one lowercase letter';
    }
    if (!RegExp(r'\d').hasMatch(value)) {
      return 'Password must have at least one digit';
    }
    if (!RegExp(r'[!@#\$&*~]').hasMatch(value)) {
      return 'Password must have at least one special character (!@#\$&*~)';
    }
    return null;
  }

  static String? confirmPassword(String? value, String password) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password';
    }
    if (value != password) {
      return 'Passwords do not match';
    }
    return null;
  }

  static String? url(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'URL is required';
    }
    final regex = RegExp(
        r'^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-zA-Z0-9]+\.[^\s]{2,}$');
    if (!regex.hasMatch(value.trim())) {
      return 'Enter a valid URL';
    }
    return null;
  }

  static String? numeric(String? value, {String fieldName = 'Value'}) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName is required';
    }
    if (double.tryParse(value.trim()) == null) {
      return '$fieldName must be a number';
    }
    return null;
  }

  static String? positiveNumber(String? value, {String fieldName = 'Value'}) {
    final error = numeric(value, fieldName: fieldName);
    if (error != null) return error;
    if (double.parse(value!) <= 0) {
      return '$fieldName must be greater than 0';
    }
    return null;
  }

  static String? length(String? value, {int? min, int? max, String fieldName = 'This field'}) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName is required';
    }
    if (min != null && value.length < min) {
      return '$fieldName must be at least $min characters';
    }
    if (max != null && value.length > max) {
      return '$fieldName must be at most $max characters';
    }
    return null;
  }

  static String? postalCode(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Postal code is required';
    }
    if (!RegExp(r'^[0-9]{4,10}$').hasMatch(value.trim())) {
      return 'Enter a valid postal code';
    }
    return null;
  }

  static String? otp(String? value, {int length = 6}) {
    if (value == null || value.trim().isEmpty) {
      return 'OTP is required';
    }
    if (value.trim().length != length) {
      return 'OTP must be $length digits';
    }
    if (!RegExp(r'^\d+$').hasMatch(value.trim())) {
      return 'OTP must contain only digits';
    }
    return null;
  }
  static String? firstName(String? value,{int lengthLimit=5}) {
    if (value == null || value.isEmpty) {
      return 'First Name  cant\'t  be  Empty.';
    } else if (value.length < lengthLimit) {
      return 'Name Must be $lengthLimit character Long.';
    }

    return null;
  }

  static String? lastName(String? value,{int lengthLimit=5}) {
    if (value == null || value.isEmpty) {
      return 'Last Name  cant\'t  be  Empty.';
    } else if (value.length < lengthLimit) {
      return 'Name Must be $lengthLimit character Long.';
    }
    return null;
  }

  static String? message(String? value,{int lengthLimit=5}) {

    if (value == null || value.isEmpty) {
      return 'Message cant\'t  be  Empty.';
    } else if (value.length < lengthLimit) {
      return 'Message Must be $lengthLimit character Long.';
    }
    return null;
  }

  static String? address(String? value,{int lengthLimit=5}) {
    if (value == null || value.isEmpty) {
      return 'Address can\'t be Empty.';
    } else if ((value.length) < lengthLimit) {
      return 'Address must be $lengthLimit character long.';
    }
    return null;
  }

}
