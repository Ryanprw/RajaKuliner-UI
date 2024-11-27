import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/product_detatail_controller.dart';

class ProductDetatailView extends StatefulWidget {
  final item;
  const ProductDetatailView({
    super.key,
    required this.item,
  });

  Widget build(context, ProductDetatailController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("Menu Detail"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              size: 24.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item["product_name"],
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          item["category"],
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "${item["price"]}",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          "${item["discount_price"]}",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                height: 220.0,
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
              ),
              const SizedBox(
                height: 8.0,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: QDropdownField(
                      label: "Categori",
                      validator: Validator.required,
                      items: const [
                        {
                          "label": "Prasmanan",
                          "value": "Prasmanan",
                        },
                        {
                          "label": "Restoran",
                          "value": "Restoran",
                        }
                      ],
                      onChanged: (value, label) {},
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: QDropdownField(
                      label: "Variant",
                      validator: Validator.required,
                      items: const [
                        {
                          "label": "Medium",
                          "value": "Medium",
                        },
                        {
                          "label": "Small",
                          "value": "Small",
                        }
                      ],
                      onChanged: (value, label) {},
                    ),
                  ),
                ],
              ),
              Text(
                "Description",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20.0),
        child: Wrap(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    MdiIcons.plusBox,
                    size: 32.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "0",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(
                    MdiIcons.minusBox,
                    size: 32.0,
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 12,
            ),
            Row(
              children: [
                Expanded(
                  child: QButton(
                    label: "Whislist",
                    onPressed: () {},
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Expanded(
                  child: QButton(
                    label: "Add to Cart",
                    onPressed: () {},
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<ProductDetatailView> createState() => ProductDetatailController();
}
