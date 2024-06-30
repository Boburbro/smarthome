import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/device.dart';

class SmartDeviceBox extends StatelessWidget {
  const SmartDeviceBox({
    required this.smatrDevice,
    required this.switcher,
    required this.index,
    super.key,
  });

  final SmartDevice smatrDevice;
  final Function switcher;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: smatrDevice.enabled ? Colors.grey[900] : Colors.grey[200],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              smatrDevice.img,
              height: 65,
              color: !smatrDevice.enabled ? Colors.grey[900] : Colors.grey[200],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      smatrDevice.name,
                      style: TextStyle(
                        color: !smatrDevice.enabled
                            ? Colors.grey[900]
                            : Colors.grey[200],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: pi / 2,
                  child: CupertinoSwitch(
                    value: smatrDevice.enabled,
                    onChanged: (value) {
                      switcher(value, index);
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
