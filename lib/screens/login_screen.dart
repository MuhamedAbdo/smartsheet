import 'package:flutter/material.dart';
import 'package:smartsheet/drawers/app_drawer.dart';
import 'package:smartsheet/screens/signup_screen.dart';
import 'package:smartsheet/widgets/custom_button.dart';
import 'package:smartsheet/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('دخول')),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/logo.png'),
            ),
            const SizedBox(height: 20),
            const CustomTextField(
              hint: 'البريد الإلكتروني',
              obscureText: false,
            ),
            const SizedBox(height: 16), // ← زيادة المسافة
            const CustomTextField(hint: 'كلمة المرور', obscureText: true),
            const SizedBox(height: 24),
            CustomButton(
              text: 'تسجيل الدخول',
              icon: Icons.person, // ← لوجو جديد
              onPressed: () {},
            ),
            const SizedBox(height: 12),
            CustomButton(
              text: 'الدخول باستخدام جوجل',
              icon: Icons.login, // ← لوجو جديد
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignupScreen()),
                );
              },
              child: const Text('ليس لديك حساب؟ سجل الآن'),
            ),
          ],
        ),
      ),
    );
  }
}
