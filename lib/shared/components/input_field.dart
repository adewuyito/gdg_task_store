import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  const InputField({
    super.key,
    this.hint,
    this.isSecure = false,
    this.inptType = TextInputType.text,
    required TextEditingController controller,
    required this.label,
    String? Function(String?)? validator,
  })  : _inputController = controller,
        _validator = validator;

  final String label;
  final String? hint;
  final bool isSecure;
  final TextInputType inptType;
  final TextEditingController _inputController;
  final String? Function(String?)? _validator;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool _inputVisible = true;

  @override
  Widget build(BuildContext context) {
    return widget.isSecure ? secured() : unSecured();
  }

  Widget secured() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label),
        const SizedBox(height: 4),
        TextFormField(
          controller: widget._inputController,
          obscureText: _inputVisible,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(
                _inputVisible
                    ? Icons.visibility_off_rounded
                    : Icons.visibility_rounded,
              ),
              onPressed: () {
                setState(
                  () {
                    _inputVisible = !_inputVisible;
                  },
                );
              },
            ),
            filled: true,
          ),
          keyboardType: TextInputType.visiblePassword,
          validator: widget._validator,
        )
      ],
    );
  }

  Widget unSecured() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label),
        const SizedBox(height: 4),
        TextFormField(
          controller: widget._inputController,
          keyboardType: widget.inptType,
          decoration: InputDecoration(
            hintText: widget.hint,
          ),
        ),
      ],
    );
  }
}
