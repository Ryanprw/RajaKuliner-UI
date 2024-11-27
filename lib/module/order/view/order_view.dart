
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/order_controller.dart';

class OrderView extends StatefulWidget {
  const OrderView({super.key});

  Widget build(context, OrderController controller) {
  controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order"),
          actions: const [],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<OrderView> createState() => OrderController();
}
    