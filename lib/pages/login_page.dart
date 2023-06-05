import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}
 
class _LoginPageState extends State<LoginPage> {
  bool? checkValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 45.h),
                Text(
                  'Sign Up to Masterminds',
                  style: TextStyle(
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 10.h),
                Wrap(
                  children: [
                    Text(
                      'Already have an account? ',
                      style: TextStyle(
                        color: const Color(0xff969AA8),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                      ),
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                        color: const Color(0xff6F8FFF),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                Text(
                  'Name',
                  style: TextStyle(
                    color: const Color(0xff969AA8),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                  ),
                ),
                TextField(
                  // obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 0,
                      ),
                    ),
                    hintText: "Type your full name",
                    filled: true,
                    // fillColor: const Color(0xffF5F6FA),
                    fillColor: Colors.grey.shade300,
                    contentPadding: EdgeInsets.all(18.h),
                  ),
                ),
                SizedBox(height: 10.h),

                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('data'),
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('data'),
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('data'),
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('data'),
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('data'),
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('data'),
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('data'),
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('data'),
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('data'),
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xff6DA9E4),
                      padding: EdgeInsets.symmetric(vertical: 18.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        side: const BorderSide(color: Color(0xff6DA9E4)),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
                // Text(
                //   'Email or Phone Number',
                //   style: TextStyle(
                //     color: const Color(0xff969AA8),
                //     fontWeight: FontWeight.w400,
                //     fontSize: 14.sp,
                //   ),
                // ),
                // Text(
                //   'Password',
                //   style: TextStyle(
                //     color: const Color(0xff969AA8),
                //     fontWeight: FontWeight.w400,
                //     fontSize: 14.sp,
                //   ),
                // ),
                // Text(
                //   'Confirm Password',
                //   style: TextStyle(
                //     color: const Color(0xff969AA8),
                //     fontWeight: FontWeight.w400,
                //     fontSize: 14.sp,
                //   ),
                // ),
                TextField(),
                // TextButton(
                //   onPressed: () {},
                //   child: const Text('Sign in'),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
