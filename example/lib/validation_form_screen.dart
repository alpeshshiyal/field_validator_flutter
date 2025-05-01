import 'package:field_validator_flutter/field_validator_flutter.dart';
import 'package:flutter/material.dart';

class ValidationFormScreen extends StatefulWidget {
  const ValidationFormScreen({super.key});

  @override
  ValidationFormScreenState createState() => ValidationFormScreenState();
}

class ValidationFormScreenState extends State<ValidationFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Form is valid!')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Form has validation errors.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Validator Demo')),
    body: Padding(
      padding: EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'First Name'),
              validator: (value) =>
                  FieldValidatorFlutter.firstName(value),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Last Name'),
              validator: (value) =>
                  FieldValidatorFlutter.lastName(value),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Username'),
              validator: (value) =>
                  FieldValidatorFlutter.username(value ?? ''),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
              validator: (value) => FieldValidatorFlutter.email(value),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Phone'),
              validator: (value) => FieldValidatorFlutter.phone(value),
              keyboardType: TextInputType.phone,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Mobile (10 digits)'),
              validator: (value) =>
                  FieldValidatorFlutter.mobile(value ?? '', length: 10),
              keyboardType: TextInputType.phone,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              controller: _passwordController,
              obscureText: true,
              validator: (value) =>
                  FieldValidatorFlutter.password(value),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Confirm Password'),
              obscureText: true,
              validator: (value) => FieldValidatorFlutter.confirmPassword(
                  value, _passwordController.text),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Website URL'),
              validator: (value) => FieldValidatorFlutter.url(value),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Tax (%)'),
              validator: (value) => FieldValidatorFlutter.tax(value),
              keyboardType: TextInputType.number,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Quantity'),
              validator: (value) => FieldValidatorFlutter.quantity(value),
              keyboardType: TextInputType.number,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Postal Code'),
              validator: (value) => FieldValidatorFlutter.postalCode(value),
              keyboardType: TextInputType.number,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'OTP'),
              validator: (value) => FieldValidatorFlutter.otp(value),
              keyboardType: TextInputType.number,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Message'),
              validator: (value) => FieldValidatorFlutter.message(value),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Address'),
              validator: (value) => FieldValidatorFlutter.address(value),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitForm,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    ),
  );
}
