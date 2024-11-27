import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cart_controller.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  Widget build(context, CartController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: const Text("Cart"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              H5(
                title: "Items",
                subtitle: "Clear All",
              ),
              const SizedBox(
                height: 12.0,
              ),
              ListView.builder(
                itemCount: controller.products.length,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  var item = controller.products[index];
                  return Container(
                    height: 96,
                    margin: const EdgeInsets.only(
                      bottom: 12.0,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 96,
                          height: 96.0,
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
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item["product_name"],
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                item["category"],
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${item["price"]}",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "${item["discount_price"]}",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    MdiIcons.plusBox,
                                    size: 24.0,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(right: 8, left: 8),
                                    child: Text(
                                      "${item["qty"]}",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    MdiIcons.minusBox,
                                    size: 24.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.grey[300],
                              child: Icon(
                                Icons.favorite,
                                color: Colors.black,
                                size: 18,
                              ),
                            ),
                            Spacer(),
                            CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.grey[300],
                              child: Icon(
                                Icons.delete,
                                color: Colors.black,
                                size: 18,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CartView> createState() => CartController();
}
