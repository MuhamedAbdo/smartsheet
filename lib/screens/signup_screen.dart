import 'package:flutter/material.dart';
import 'package:smartsheet/widgets/custom_button.dart';
import 'package:smartsheet/widgets/custom_text_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('إنشاء حساب')),
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
            const CustomTextField(hint: 'الاسم', obscureText: false),
            const SizedBox(height: 16),
            const CustomTextField(
              hint: 'البريد الإلكتروني',
              obscureText: false,
            ),
            const SizedBox(height: 16),
            const CustomTextField(hint: 'كلمة المرور', obscureText: true),
            const SizedBox(height: 24),
            CustomButton(
              text: 'إنشاء حساب',
              icon: Icons.person_add,
              onPressed: () {},
            ),
            const SizedBox(height: 12),
            CustomButton(
              text: 'التسجيل باستخدام جوجل',
              icon: Icons.login,
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // ← رجوع للشاشة السابقة
              },
              child: const Text('لديك حساب بالفعل؟ سجل دخولك'),
            ),
          ],
        ),
      ),
    );
  }
}
