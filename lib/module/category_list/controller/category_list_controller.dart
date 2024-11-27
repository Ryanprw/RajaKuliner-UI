import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/category_list_view.dart';

class CategoryListController extends State<CategoryListView> {
  static late CategoryListController instance;
  late CategoryListView view;

  @override
  void initState() {
    super.initState();
    instance = this;
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  void onReady() {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map<String, dynamic>> categories = [
    {
      'category_name': 'Pizza',
      'photo':
          'https://images.unsplash.com/photo-1528137871618-79d2761e3fd5?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'item_count': 100,
    },
    {
      'category_name': 'Burger',
      'photo':
          'https://images.unsplash.com/photo-1512152272829-e3139592d56f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGJ1cmdlcnxlbnwwfHwwfHx8MA%3D%3D',
      'item_count': 121,
    },
    {
      'category_name': 'Drink',
      'photo':
          'https://images.unsplash.com/photo-1504310578167-435ac09e69f3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZHJpbmt8ZW58MHx8MHx8fDA%3D',
      'item_count': 545,
    },
    {
      'category_name': 'Fried Rice',
      'photo':
          'https://plus.unsplash.com/premium_photo-1694141252774-c937d97641da?q=80&w=1976&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'item_count': 876,
    },
    {
      'category_name': 'Milk',
      'photo':
          'https://plus.unsplash.com/premium_photo-1695166768796-1224e2013b1e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDl8fG1pbGt8ZW58MHx8MHx8fDA%3D',
      'item_count': 232,
    },
    {
      'category_name': 'Chicken',
      'photo':
          'https://plus.unsplash.com/premium_photo-1683657860906-d49d1bb37aab?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'item_count': 343,
    },
    {
      'category_name': 'Juice',
      'photo':
          'https://images.unsplash.com/photo-1601924287811-e34de5d17476?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'item_count': 655,
    },
    {
      'category_name': 'Tea',
      'photo':
          'https://plus.unsplash.com/premium_photo-1674406481284-43eba097a291?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'item_count': 453,
    },
    {
      'category_name': 'Coffee',
      'photo':
          'https://plus.unsplash.com/premium_photo-1674327105074-46dd8319164b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjF8fENvZmZlZXxlbnwwfHwwfHx8MA%3D%3D',
      'item_count': 343,
    },
    {
      'category_name': 'Smoothie',
      'photo':
          'https://plus.unsplash.com/premium_photo-1663853293868-9729d25fdf86?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'item_count': 232,
    },
  ];
}
