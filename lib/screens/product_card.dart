import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

List<String> sizes = <String>['XS', 'S', 'M', 'L', 'XL'];
List<String> colors = <String>['Black', 'Green', 'Blue', 'Red', 'White'];
String dropdownValue = sizes.first;
String dropdownValue2 = colors.first;

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Short dress",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ),
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.share,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/fashion_sale.png',
                      height: 300,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      'assets/images/fashion_sale.png',
                      height: 300,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      'assets/images/fashion_sale.png',
                      height: 300,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DropdownButton<String>(
                    value: dropdownValue,
                    borderRadius: BorderRadius.circular(10),
                    onChanged: (String? value) {
                      setState(
                        () {
                          dropdownValue = value!;
                        },
                      );
                    },
                    items: sizes.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  DropdownButton<String>(
                    value: dropdownValue2,
                    borderRadius: BorderRadius.circular(10),
                    onChanged: (String? value) {
                      setState(
                        () {
                          dropdownValue2 = value!;
                        },
                      );
                    },
                    items: colors.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  Container(
                    height: 40,
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: IconButton(
                        icon: Icon(
                          Icons.favorite,
                          size: 20,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "H&M",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "\$19.99",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Short black dress",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",
                style: TextStyle(fontSize: 12),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              child: Container(
                height: 40,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "ADD TO CART",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              onPressed: () {},
            ),
            SizedBox(height: 40),
            Divider(thickness: 1, color: Colors.grey),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "Shipping info",
                style: TextStyle(fontSize: 17),
              ),
            ),
            Divider(thickness: 1, color: Colors.grey),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "Support",
                style: TextStyle(fontSize: 17),
              ),
            ),
            Divider(thickness: 1, color: Colors.grey),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "You can also like this",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/fashion_sale.png',
                        height: 150,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/fashion_sale.png',
                        height: 150,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/fashion_sale.png',
                        height: 150,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/fashion_sale.png',
                        height: 150,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/fashion_sale.png',
                        height: 150,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
