import 'package:flutter/material.dart';

class Dataf {
  bool obscure = true;
  var icon = Icons.visibility;
}

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      onChanged: (value) {},
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'email',
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.orange,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class MyTextField2 extends StatefulWidget {
  const MyTextField2({super.key});

  @override
  State<MyTextField2> createState() => _MyTextField2State();
}

class _MyTextField2State extends State<MyTextField2> {
  Dataf data = Dataf();

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      onChanged: (value) {},
      keyboardType: TextInputType.visiblePassword,
      obscureText: data.obscure,
      decoration: InputDecoration(
        hintText: 'password',
        suffixIcon: IconButton(
          icon: Icon(data.icon),
          onPressed: () {
            if (data.obscure) {
              setState(() {
                data.obscure = false;
                data.icon = Icons.visibility_off;
              });
            } else {
              setState(() {
                data.obscure = true;
                data.icon = Icons.visibility;
              });
            }
          },
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.orange,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
