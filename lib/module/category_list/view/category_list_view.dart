import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/category_list_controller.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({super.key});

  Widget build(context, CategoryListController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Category List"),
        actions: const [],
      ),
      body: ListView.builder(
        itemCount: controller.categories.length,
        physics: const ScrollPhysics(),
        padding: const EdgeInsets.all(20.0),
        itemBuilder: (BuildContext context, int index) {
          var item = controller.categories[index];
          return Container(
            height: 160.0,
            margin: const EdgeInsets.only(
              bottom: 12.0,
            ),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  item["photo"],
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  8.0,
                ),
              ),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item["category_name"],
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "${item["item_count"]} items",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  State<CategoryListView> createState() => CategoryListController();
}
