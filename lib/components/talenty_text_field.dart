import 'package:flutter/material.dart';
import 'package:talenty_common/fundamentals/colors.dart';
import 'package:talenty_common/components/icons.dart';
import 'package:talenty_common/fundamentals/text_styles.dart';

enum TalentyTextFieldType {
  small(48.0),
  large(72.0);

  final double height;

  bool get isLarge => this == TalentyTextFieldType.large;

  const TalentyTextFieldType(this.height);
}

class TalentyTextFormField extends StatefulWidget {
  final bool enabled;
  final TalentyTextFieldType type;
  final String? placeholder;
  final String? label;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final bool readOnly;
  final String? Function(String?)? validator;
  final bool obscureText;
  final String? icon;
  final VoidCallback? onIconTap;
  final Function(String)? onChanged;

  const TalentyTextFormField({
    this.controller,
    this.focusNode,
    this.keyboardType,
    this.readOnly = false,
    this.obscureText = false,
    this.placeholder,
    this.type = TalentyTextFieldType.small,
    this.enabled = true,
    this.validator,
    this.label,
    this.icon,
    this.onIconTap,
    this.onChanged,
    super.key,
  }) : assert(
          (type == TalentyTextFieldType.large && placeholder != null) ||
              type == TalentyTextFieldType.small,
          'If the TextField is large, a placeholder is needed',
        );

  @override
  State<TalentyTextFormField> createState() => _TalentyTextFormFieldState();
}

class _TalentyTextFormFieldState extends State<TalentyTextFormField> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;

  bool _focus = false;
  String? _validatorError;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _focus = _focusNode.hasFocus;
      });
    });
  }

  // Getters
  Color get _backgroundColor => !widget.enabled
      ? TalentyColors.carbon200
      : _validatorError != null
          ? TalentyColors.error100
          : TalentyColors.white;
  Color get _placeholderTextColor => TalentyColors.carbon600;
  Color get _borderColor {
    // Disabled border color
    if (!widget.enabled) {
      return TalentyColors.carbon400;
    }

    // Error border color
    if (_validatorError != null) {
      return TalentyColors.error800;
    }

    // Normal border colors
    Color darkBoderColor = TalentyColors.carbon800;
    Color softBorderColor = TalentyColors.carbon200;
    if (_focus) {
      return darkBoderColor;
    }
    return softBorderColor;
  }

  Widget _buildTextField() {
    return TextFormField(
      onSaved: (value) {
        if (widget.validator != null) {
          setState(() {
            _validatorError = widget.validator?.call(value);
          });
        }
      },
      validator: (value) {
        if (widget.validator != null) {
          setState(() {
            _validatorError = widget.validator?.call(value);
          });
        }
        return null;
      },
      onChanged: widget.onChanged,
      obscureText: widget.obscureText,
      keyboardType: widget.keyboardType,
      enabled: widget.enabled && !widget.readOnly,
      style: TalentyTextStyles().bodyLargeNormal(),
      cursorColor: TalentyColors.carbon800,
      focusNode: _focusNode,
      controller: _controller,
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: _placeholderTextColor,
          fontWeight: FontWeight.normal,
        ),
        hintText: widget.type.isLarge ? null : widget.placeholder,
        isDense: true,
        border: InputBorder.none,
        suffixIconConstraints: const BoxConstraints(
            minHeight: 16, minWidth: 16, maxHeight: 16, maxWidth: 16),
        suffixIcon: InkWell(
          onTap: widget.onIconTap,
          child: TalentyIcon(
            icon: widget.icon ?? '',
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              widget.label!,
              style: TalentyTextStyles().bodySmallNormal(),
            ),
          ),
        AnimatedContainer(
          duration: const Duration(
            milliseconds: 200,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: _borderColor,
              width: _focus ? 2.0 : 1.0,
            ),
            color: _backgroundColor,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          height: widget.type.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.type.isLarge)
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    widget.placeholder ?? '',
                    style: TextStyle(
                      color: _placeholderTextColor,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              _buildTextField(),
            ],
          ),
        ),
        if (_validatorError != null)
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              _validatorError!,
              style: TalentyTextStyles().captionLargeBold().copyWith(
                    color: TalentyColors.error800,
                  ),
            ),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: !widget.enabled || widget.readOnly
          ? SystemMouseCursors.basic
          : SystemMouseCursors.text,
      child: GestureDetector(
        onTap: !widget.enabled || widget.readOnly
            ? null
            : () => _focusNode.requestFocus(),
        child: _buildContent(),
      ),
    );
  }
}
