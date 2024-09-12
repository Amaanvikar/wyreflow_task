import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignupScreen extends StatefulWidget {
  @override
  SignupScreenState createState() => SignupScreenState();
}

class SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();

  final _paymentStatusController = TextEditingController();
  final _timeEndController = TextEditingController();
  final _fullNameController = TextEditingController();
  final _fatherNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _dateOfBirthController = TextEditingController();
  final _genderController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _whatsappNumberController = TextEditingController();
  final _collegeStateController = TextEditingController();
  final _birthPlaceController = TextEditingController();
  final _collegeNameController = TextEditingController();
  final _branchNameController = TextEditingController();
  final _degreeNameController = TextEditingController();
  final _passingYearController = TextEditingController();
  final _passwordController = TextEditingController();
  final _verifiedController = TextEditingController();
  final _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register Form')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              DropdownButtonFormField<String>(
                value: _paymentStatusController.text.isEmpty
                    ? null
                    : _paymentStatusController.text,
                decoration: const InputDecoration(labelText: 'Payment Status'),
                items: const [
                  DropdownMenuItem(
                      value: 'Not Enroll', child: Text('Not Enroll')),
                  DropdownMenuItem(
                      value: 'Enroll Pending', child: Text('Enroll Pending')),
                  DropdownMenuItem(value: 'Enrolled', child: Text('Enrolled')),
                ],
                onChanged: (value) {
                  setState(() {
                    _paymentStatusController.text = value ?? '';
                  });
                },
              ),

              TextFormField(
                controller: _timeEndController,
                decoration: const InputDecoration(labelText: 'Time End'),
                keyboardType: TextInputType.datetime,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9:]'))
                ],
              ),

              TextFormField(
                controller: _fullNameController,
                decoration: const InputDecoration(labelText: 'Full Name'),
                maxLength: 300,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter full name';
                  }
                  return null;
                },
              ),

              TextFormField(
                controller: _fatherNameController,
                decoration: const InputDecoration(labelText: 'Father Name'),
                maxLength: 300,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter father name';
                  }
                  return null;
                },
              ),

              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                maxLength: 254,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter email';
                  } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),

              TextFormField(
                controller: _dateOfBirthController,
                decoration: const InputDecoration(labelText: 'Date of Birth'),
                keyboardType: TextInputType.datetime,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9/-]'))
                ],
              ),

              // Gender
              DropdownButtonFormField<String>(
                value: _genderController.text.isEmpty
                    ? null
                    : _genderController.text,
                decoration: const InputDecoration(labelText: 'Gender'),
                items: const [
                  DropdownMenuItem(value: 'Male', child: Text('Male')),
                  DropdownMenuItem(value: 'Female', child: Text('Female')),
                  DropdownMenuItem(value: 'Other', child: Text('Other')),
                ],
                onChanged: (value) {
                  setState(() {
                    _genderController.text = value ?? '';
                  });
                },
              ),

              TextFormField(
                controller: _phoneNumberController,
                decoration: const InputDecoration(labelText: 'Phone Number'),
                maxLength: 15,
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter phone number';
                  }
                  return null;
                },
              ),

              TextFormField(
                controller: _whatsappNumberController,
                decoration: const InputDecoration(labelText: 'Whatsapp Number'),
                maxLength: 15,
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter whatsapp number';
                  }
                  return null;
                },
              ),

              TextFormField(
                controller: _collegeStateController,
                decoration: const InputDecoration(labelText: 'College State'),
                maxLength: 100,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter college state';
                  }
                  return null;
                },
              ),

              TextFormField(
                controller: _birthPlaceController,
                decoration: const InputDecoration(labelText: 'Birth Place'),
                maxLength: 100,
              ),

              TextFormField(
                controller: _collegeNameController,
                decoration: const InputDecoration(labelText: 'College Name'),
                maxLength: 300,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter college name';
                  }
                  return null;
                },
              ),

              TextFormField(
                controller: _branchNameController,
                decoration: const InputDecoration(labelText: 'Branch Name'),
                maxLength: 200,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter branch name';
                  }
                  return null;
                },
              ),

              TextFormField(
                controller: _degreeNameController,
                decoration: const InputDecoration(labelText: 'Degree Name'),
                maxLength: 200,
              ),

              TextFormField(
                controller: _passingYearController,
                decoration: const InputDecoration(labelText: 'Passing Year'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter passing year';
                  } else if (int.tryParse(value) == null) {
                    return 'Please enter a valid year';
                  }
                  return null;
                },
              ),

              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                maxLength: 128,
                validator: (value) {
                  if (value == null || value.length < 8) {
                    return 'Password must be at least 8 characters long';
                  }
                  return null;
                },
              ),

              SwitchListTile(
                title: const Text('Verified'),
                value: _verifiedController.text == 'true',
                onChanged: (value) {
                  setState(() {
                    _verifiedController.text = value.toString();
                  });
                },
              ),

              TextFormField(
                controller: _otpController,
                decoration: const InputDecoration(labelText: 'OTP'),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print('Form is valid and ready to be submitted');
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
