import 'package:flutter/material.dart';

class AddressHomeWidget extends StatefulWidget {
  const AddressHomeWidget({
    super.key,
  });

  @override
  State<AddressHomeWidget> createState() => _AddressHomeWidgetState();
}

class _AddressHomeWidgetState extends State<AddressHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Evergreen Terrace, 742',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Icon(Icons.keyboard_arrow_down_rounded)
      ],
    );
  }
}
