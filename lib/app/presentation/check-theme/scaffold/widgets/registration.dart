import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_miscellanous/app/common/ez/ez_checkbox.dart';
import 'package:getx_miscellanous/app/common/ez/theme/ez_theme.dart';
import 'package:getx_miscellanous/app/common/ez/theme/ez_theme_controller.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    final ezThemeController = Get.find<EzThemeController>();
    final colorScheme = ezThemeController.theme.colorScheme;
    final textTheme = ezThemeController.theme.textTheme;
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Create Account',
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'StardosStencil',
              color: Theme.of(context).colorScheme.primary
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Sign up to get started',
          ),
          const SizedBox(height: 32),

          // Email field
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              prefixIcon: Icon(
                Icons.email_outlined,
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Password field
          TextField(
            controller: _passwordController,
            obscureText: _obscurePassword,
            decoration: InputDecoration(
              labelText: 'Password',
              prefixIcon: Icon(
                Icons.lock_outline,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _obscurePassword ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                ),
                onPressed: () => setState(() {
                  _obscurePassword = !_obscurePassword;
                }),
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Confirm password
          TextField(
            controller: _confirmPasswordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Confirm Password',
              prefixIcon: Icon(
                Icons.lock_person_outlined,
              ),
            ),
          ),
          const SizedBox(height: 32),

          // Sign Up button
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              // style: ElevatedButton.styleFrom(
              //   backgroundColor: colorScheme.primary,
              //   foregroundColor: colorScheme.onPrimary,
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(16),
              //   ),
              // ),
              onPressed: () {},
              child: const Text(
                'Sign Up',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),

          const SizedBox(height: 24),
          Text(
            'or continue with',
            //  style: TextStyle(color: colorScheme.onSurfaceVariant),
          ),

          const SizedBox(height: 16),

          // OAuth buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _oauthButton(
                colorScheme.secondary,
                Icons.g_mobiledata,
                'Google',
              ),
              const SizedBox(width: 16),
              _oauthButton(
                colorScheme.tertiary,
                Icons.apple,
                'Apple',
              ),
            ],
          ),

          const SizedBox(height: 32),
          TextButton(
            onPressed: () {},
            child: Text(
              'Already have an account? Log in',
              //   style: TextStyle(color: colorScheme.primary),
            ),
          ),
          const SizedBox(height: 52),
          Slider(value: 0.4, onChanged: (val) {}),
          const SizedBox(height: 52),
          EzCheckbox(value: true, onChanged: (val) {}),
          const SizedBox(height: 22),
          EzCheckbox(value: false, onChanged: (val) {}),
          const SizedBox(height: 52),
          Switch(value: true, onChanged: (val) {}),
          const SizedBox(height: 22),
          Switch(value: false, onChanged: null)
        ],
      ),
    );
  }

  Widget _oauthButton(Color color, IconData icon, String label) {
    return OutlinedButton.icon(
      //   style: ElevatedButton.styleFrom(
      //     backgroundColor: color,
      //     foregroundColor: Get.theme.colorScheme.onSecondary,
      //     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      //  ),
      onPressed: () {},
      icon: Icon(icon, size: 24),
      label: Text(label),
    );
  }
}
