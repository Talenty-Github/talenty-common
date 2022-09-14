import 'package:flutter/material.dart';
import 'package:talenty_common/fundamentals/colors.dart';
import 'package:talenty_common/fundamentals/text_styles.dart';

class ContextMenuOption {
  final String text;
  final Function()? callback;

  const ContextMenuOption({required this.text, required this.callback});
}

class TalentyContextMenu extends StatelessWidget {
  final List<ContextMenuOption> options;

  const TalentyContextMenu({required this.options, super.key});

  @override
  Widget build(BuildContext context) {
    double dialogHeight = options.length * 38 + 16;

    return Dialog(
      elevation: 7,
      backgroundColor: TalentyColors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      insetPadding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width - 57 - 266,
        right: 57,
        bottom: MediaQuery.of(context).size.height - 72 - dialogHeight,
        top: 72,
      ),
      child: Container(
        width: 266,
        height: dialogHeight,
        padding: const EdgeInsets.symmetric(
          vertical: 8,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: TalentyColors.carbon200,
          ),
          color: TalentyColors.white,
        ),
        child: ListView.separated(
          itemCount: options.length,
          separatorBuilder: (context, index) => const SizedBox(height: 4),
          itemBuilder: (context, index) {
            return Material(
              color: TalentyColors.white,
              child: InkWell(
                onTap: options[index].callback,
                splashColor: TalentyColors.carbon200,
                hoverColor: TalentyColors.carbon50,
                child: Container(
                  padding: const EdgeInsets.only(left: 24, top: 8, bottom: 8),
                  child: Text(
                    options[index].text,
                    style: TalentyTextStyles().bodyLargeBold(),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
