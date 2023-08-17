import 'package:flutter/material.dart';

class AppNavigator {
  push(BuildContext context, Widget page) {
    Navigator.of(context).push(
      SlideFromRightPageRoute(widget: page),
    );
  }
}

class SlideFromRightPageRoute<T> extends PageRouteBuilder<T> {
  final Widget widget;

  SlideFromRightPageRoute({required this.widget})
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget;
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.ease;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);

            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        );
}

class TextFieldForm extends StatelessWidget {
  final validator;
  final controller;
  final hintText;
  const TextFieldForm(
      {super.key, this.controller, this.hintText, this.validator});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.black,
        primaryColorDark: Colors.black,
      ),
      child: Material(
        borderRadius: const BorderRadius.all(Radius.circular(18)),
        elevation: 5,
        shadowColor: Color(0XFF000000),
        child: TextFormField(
          textInputAction: TextInputAction.next,
          validator: validator,
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(18)),
            ),

            // border: UnderlineInputBorder(
            //     borderRadius: BorderRadius.all(Radius.circular(50)),
            //     borderSide: BorderSide())
          ),
          controller: controller,
        ),
      ),
    );
  }
}

Widget button(text, onPressed) {
  return SizedBox(
    height: 55,
    width: double.infinity,
    child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue.shade300)),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        )),
  );
}

snackbar(text, context) {
  var snackBar = SnackBar(
    backgroundColor: Colors.green.shade300,
    content: SizedBox(
      height: MediaQuery.of(context).size.height * 0.04,
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
