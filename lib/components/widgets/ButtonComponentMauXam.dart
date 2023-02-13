import 'package:flutter/material.dart';

class ButtonComponentMauXam extends StatelessWidget {
  final Function() onPressed;
  // final Function() onLongPressed;
  // final Function(bool?) onHover;
  // final Function(bool?) onFocusChange;
  // final String? Function(String?)? validator;
  final Widget? child;
  final Color? color;
  @override
  // ignore: overridden_fields
  final Key? key;
  final ButtonStyle? style;
  final FocusNode? focusNode;
  final MaterialStatesController? statesController;


  
  // ignore: use_key_in_widget_constructors
  const  ButtonComponentMauXam({
    required this.onPressed,    
    // required this.onLongPressed, 
    // required this.onHover, 
    // required this.onFocusChange,
    // this.validator,
    this.color,     
    this.child, 
    this.key, 
    this.style, 
    this.focusNode,   
    this.statesController, 
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      // onLongPress: onLongPressed,
      // onHover: onHover,
      // onFocusChange: onFocusChange, child: null,
      key: key,
      // style: style,
      focusNode: focusNode,
      statesController: statesController,
      child: child,
      style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 92, 93, 99),
                      minimumSize: const Size.fromHeight(50),
                        ),
      );
  }
}