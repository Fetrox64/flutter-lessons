import 'package:flutter/material.dart';
import 'package:flutter_lessons/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const name = 'Fernando';
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Logo(),
            Greetings(name),
            CustomButton('Entrar', route: '/counter', padding: 0.3),
            LoginOptions(name),
          ],
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/logo_falabella.png", height: 150);
  }
}

class Greetings extends StatelessWidget {
  final String name;

  const Greetings(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Hola",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(width: 5),
        Text(
          "Fernando",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

class LoginOptions extends StatelessWidget {
  final String name;

  const LoginOptions(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(
      color: Color.fromARGB(255, 52, 151, 55),
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );

    return Column(
      children: [
        const Text("Recupera o crea tu clave internet", style: style),
        const SizedBox(height: 10),
        Text("No soy $name", style: style),
      ],
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(
                    color: const Color.fromARGB(74, 82, 90, 83),
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Image.asset("assets/images/clave.png", height: 35),
              ),
              const Text("Clave",
                  style: TextStyle(
                    fontSize: 12,
                  )),
              const Text("Dinámica", style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
        const Text(
          "¿Necesitas ayuda?",
          style: TextStyle(
            color: Color.fromARGB(255, 52, 151, 55),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          "¿Necesitas ayuda?",
          style: TextStyle(
            color: Color.fromARGB(255, 52, 151, 55),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
