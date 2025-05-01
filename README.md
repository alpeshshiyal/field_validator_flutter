# FieldValidatorFlutter

A centralized, reusable, and easy-to-use **field validation utility class** for Flutter apps.

`FieldValidatorFlutter` provides a collection of static validation functions to validate common form fields like email, phone number, password, username, name, URL, tax percentage, quantity, OTP, postal code, and more.

---

## ✨ Features

✅ Centralized validation logic  
✅ Covers most common form fields  
✅ Ready-to-use static functions  
✅ Customizable parameters (length limits, field names, etc.)  
✅ Works with Flutter `TextFormField` validators

---

##   📦 Installation

Add the latest version to your `pubspec.yaml`:

```yaml
dependencies:
  field_validator_flutter: ^1.0.0

```

### **Use in a Form**

```dart
TextFormField(
  decoration: InputDecoration(labelText: 'Email'),
  validator: (value) => FieldValidatorFlutter.email(value),
),

```

### Supported Validators & Custom Parameters

| Validator Function       | Purpose                                        | Customizable Parameters                     |
|-------------------------|------------------------------------------------|--------------------------------------------|
| `firstName()`            | Validate first name                            | `lengthLimit` (min length)                 |
| `lastName()`             | Validate last name                             | `lengthLimit` (min length)                 |
| `username()`             | Validate username (alphanumeric, underscores, dots) | —                                     |
| `email()`                | Validate email format                          | —                                          |
| `phone()`                | Validate phone number (7-15 digits, optional +) | —                                          |
| `mobile()`               | Validate mobile number (custom length)         | `length` (exact length)                    |
| `password()`             | Validate strong password (uppercase, lowercase, number, special char, min 8 chars) | — |
| `confirmPassword()`      | Validate password confirmation                 | Pass `password` string for match check     |
| `url()`                  | Validate website URL                           | —                                          |
| `tax()`                  | Validate tax percentage (0 - 100)              | —                                          |
| `quantity()`             | Validate quantity (positive integer)           | —                                          |
| `postalCode()`           | Validate postal code (4-10 digits)             | —                                          |
| `otp()`                  | Validate OTP (custom length, numeric)          | `length` (default 6 digits)                |
| `message()`              | Validate message (required, min length)        | `lengthLimit`                              |
| `address()`              | Validate address (required, min length)        | `lengthLimit`                              |
| `required()`             | Validate required field                        | `fieldName`                                |
| `numeric()`              | Validate numeric input                         | `fieldName`                                |
| `positiveNumber()`       | Validate positive number                       | `fieldName`                                |
| `length()`               | Validate string length (min/max)               | `min`, `max`, `fieldName`                  |


## 🧩 Customization

Many validator functions allow optional parameters like lengthLimit, fieldName, length to customize error messages and validation rules.

```
FieldValidatorFlutter.mobile(value, length: 8); // mobile number with 8 digits
```
## Authors

- [@alpeshshiyal](https://github.com/alpeshshiyal)


## License

[MIT](https://choosealicense.com/licenses/mit/)

Use freely in your commercial or personal Flutter projects.

## 🤝 Contributions

Feel free to fork, improve, or add more validators!
Pull requests are welcome.