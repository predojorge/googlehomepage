import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  TodoListPage({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/image.png',
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                  labelText: 'E-mail',
                  hintText: 'exemplo@exemplo.com',
                  border: OutlineInputBorder()),
              onChanged: onChanged,
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                  labelText: 'Password', border: OutlineInputBorder()),
              obscureText: true,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: login,
              child: const Text('Entrar'),
            )
          ],
        ),
      )),
    );
  }

  void login() {
    String text = emailController.text;
    print(text);
    emailController.clear();

    String password = passwordController.text;
    print(password);
    passwordController.clear();
  }

  void onChanged(String text) {
    print(text);
  }
}
