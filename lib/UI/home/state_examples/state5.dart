import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobile_app1/state_management/state5.dart';

class State5UI extends StatelessWidget {
  State5UI({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthProvider5>();

    return Scaffold(
      appBar: AppBar(title: const Text("State 5: Login Flow")),
      body: Center(
        child: auth.isLoggedIn
            ? _buildDashboard(context)
            : _buildLoginForm(context, auth),
      ),
    );
  }

  Widget _buildLoginForm(BuildContext context, AuthProvider5 auth) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.lock, size: 80, color: Colors.blue),
          const SizedBox(height: 20),
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 15),
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          if (auth.errorMessage != null)
            Text(auth.errorMessage!, style: const TextStyle(color: Colors.red)),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: auth.isLoading
                  ? null
                  : () {
                      context.read<AuthProvider5>().login(
                        _emailController.text,
                        _passwordController.text,
                      );
                    },
              child: auth.isLoading
                  ? const CircularProgressIndicator(color: Colors.white)
                  : const Text("Login"),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDashboard(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.check_circle, size: 100, color: Colors.green),
        const SizedBox(height: 20),
        const Text("Ku soo dhawaaw App-ka!", style: TextStyle(fontSize: 22)),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () => context.read<AuthProvider5>().logout(),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          child: const Text("Logout", style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
