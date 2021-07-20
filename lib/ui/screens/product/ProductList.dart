import 'package:export_nepal/ui/screens/dashboard/home/components/ProductCardSmall.dart';
import 'package:export_nepal/ui/screens/product/ProductProvider.dart';
import 'package:export_nepal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProductProvider>(
      create: (context) => ProductProvider(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: SafeArea(child: Consumer<ProductProvider>(
              builder: (context, provider, child) {
                return Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(height: 10),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pop(true);
                            },
                            child: Icon(
                              Icons.chevron_left,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                          Expanded(
                            flex: 7,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Category Name",
                                style: kTextStyleMediumPrimary,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              
                            },
                            child: SvgPicture.asset(
                              "assets/images/iconly_light_outline_filter_2.svg",
                              height: 20,
                            ),
                          ),
                          SizedBox(width: 20,),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pop(true);
                            },
                            child: SvgPicture.asset(
                              "assets/images/iconly_light_outline_search.svg",
                              height: 25,
                            ),
                          ),
                          SizedBox(width: 10,),                          
                        ],
                      ),
                      SizedBox(height: 20,),
                      Expanded(
                          child: GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 0.6,
                            ),
                            itemCount: 30,
                            itemBuilder: (BuildContext context, int index) {
                              return ProductCardSmall();
                            },
                          ),
                        ),
                    ],
                  ),
                );
              },
            )),
          );
        },
      ),
    );
  }
}
