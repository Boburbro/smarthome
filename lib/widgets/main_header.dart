import 'package:flutter/material.dart';
import '../models/device.dart';
import 'smart_device_box.dart';

class MainHeader extends StatefulWidget {
  const MainHeader({super.key});

  @override
  State<MainHeader> createState() => _MainHeaderState();
}

class _MainHeaderState extends State<MainHeader> {
  List mySmartDevices = [
    SmartDevice(
      name: 'Smart Light',
      img: 'assets/lamp.png',
      enabled: true,
    ),
    SmartDevice(
      name: 'Smart AC',
      img: 'assets/air-conditioner.png',
      enabled: false,
    ),
    SmartDevice(
      name: 'Smart TV',
      img: 'assets/tv.png',
      enabled: false,
    ),
    SmartDevice(
      name: 'Smart Fan',
      img: 'assets/fan.png',
      enabled: false,
    ),
  ];

  switcher(bool value, int index) {
    setState(() {
      mySmartDevices[index].enabled = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: mySmartDevices.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => SmartDeviceBox(
          smatrDevice: mySmartDevices[index],
          switcher: switcher,
          index: index,
        ),
      ),
    );
  }
}
