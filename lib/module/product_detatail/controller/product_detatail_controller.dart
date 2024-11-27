
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/product_detatail_view.dart';

class ProductDetatailController extends State<ProductDetatailView> {
  static late ProductDetatailController instance;
  late ProductDetatailView view;

  @override
  void initState() {
    super.initState();
    instance = this;
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  void onReady() {
    
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
    