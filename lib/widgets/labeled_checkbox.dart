import 'package:flutter/material.dart';

class LabeledCheckbox extends StatefulWidget {
  const LabeledCheckbox({
    this.label,
    this.value,
    this.onChanged,
  });

  final String label;
  final bool value;
  final Function onChanged;

  @override
  _LabeledCheckboxState createState() => _LabeledCheckboxState();
}

class _LabeledCheckboxState extends State<LabeledCheckbox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onChanged(!widget.value);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(child: Text(widget.label)),
            Checkbox(
              value: widget.value,
              onChanged: (bool newValue) {
                setState(() {
                  widget.onChanged(newValue);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}