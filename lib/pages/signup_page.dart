import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_ui_kit/models/city.dart';

class SignupPage extends StatefulWidget {
  SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

enum Gender { male, female, other }

class _SignupPageState extends State<SignupPage> {
  bool? minorityCheck = false;

  Gender? _defaultGender = Gender.male;

  final cBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.r),
    borderSide: const BorderSide(width: 0, color: Colors.transparent),
  );

  final textfieldFilledColor = const Color(0xffF5F6FA);

  InputDecoration getDecoration(String hText) {
    return InputDecoration(
      border: cBorder,
      enabledBorder: cBorder,
      filled: true,
      fillColor: textfieldFilledColor,
      hintText: hText,
      contentPadding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
    );
  }

  City? cityDropdownMenuItemValue;

  List<DropdownMenuItem<City>>? cityDropdownMenuItemList = [];

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 45.h),
                  Text(
                    'Sign Up to Masterminds',
                    style: TextStyle(
                      color: const Color(0xff000000),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Text(
                        'Already have an account? ',
                        style: TextStyle(
                          color: const Color(0xff969AA8),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Login',
                        style: TextStyle(
                          color: const Color(0xff6F8FFF),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  // ListTile(
                  //   title: Checkbox(
                  //     value: true,
                  //     onChanged: (value) {},
                  //   ),
                  // ),
                  Row(
                    children: [
                      Radio<Gender>(
                        // title: const Text('Male'),
                        value: Gender.male,
                        groupValue: _defaultGender,
                        onChanged: (genderValue) {
                          setState(() {
                            _defaultGender = genderValue;
                          });
                        },
                      ),
                      Text('Male'),
                      Radio<Gender>(
                        // title: const Text('Female'),
                        value: Gender.female,
                        groupValue: _defaultGender,
                        onChanged: (genderValue) {
                          setState(() {
                            _defaultGender = genderValue;
                          });
                        },
                      ),
                      Text('Female'),
                      Radio<Gender>(
                        // title: const Text('Other'),
                        value: Gender.other,
                        groupValue: _defaultGender,
                        onChanged: (genderValue) {
                          setState(() {
                            _defaultGender = genderValue;
                          });
                        },
                      ),
                      Text('Other')
                    ],
                  ),
                  CheckboxListTile(
                    title: const Text('Minority'),
                    value: minorityCheck,
                    onChanged: (minorityCheckValue) {
                      setState(() {
                        minorityCheck = minorityCheckValue;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                  SizedBox(height: 20.h),
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: getDecoration('Enter your Full name'),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextField(
                    decoration: getDecoration('Enter your email or phone'),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  DropdownButtonFormField<City>(
                    value: cityDropdownMenuItemValue,
                    items: cityDropdownMenuItemList,
                    onChanged: (value) {
                      setState(() {
                        cityDropdownMenuItemValue = value;
                        // print('object ${dropdownButtonValue!.id}');
                      });
                    },
                    validator: (value) {
                      if (value == null) {
                        return 'Choose Your City';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xff6DA9E4),
                        padding: EdgeInsets.symmetric(vertical: 18.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      onPressed: () {
                        bool isValid = _formKey.currentState!.validate();
                        if (!isValid) {
                          return;
                        }
                        print('object form is ok');
                      },
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          color: const Color(0xffFFFFFF),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    initData();
    super.initState();
  }

  void initData() {
    //
    cityDropdownMenuItemList = [
      DropdownMenuItem(
        value: City(id: 1, name: 'Islamabad'),
        child: const Text('Islamabad'),
      ),
      DropdownMenuItem(
        value: City(id: 2, name: 'Rawalpindi'),
        child: const Text('Rawalpindi'),
      ),
      DropdownMenuItem(
        value: City(id: 3, name: 'Lahore'),
        child: const Text('Lahore'),
      ),
      DropdownMenuItem(
        value: City(id: 4, name: 'Karachi'),
        child: const Text('Karachi'),
      ),
    ];
    setState(() {});
  }
}
