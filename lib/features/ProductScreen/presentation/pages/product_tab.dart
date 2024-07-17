import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:productscreen/config.dart';
//import 'package:productscreen/config.dart';

import 'package:productscreen/features/ProductScreen/presentation/bloc/product_bloc.dart';

import '../widgets/product_item.dart';

class ProductTab extends StatelessWidget {
  const ProductTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      getIt<ProductBloc>()
        ..add(GetProductsEvent()),
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leadingWidth: 83.w,
              leading: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SvgPicture.asset("assets/images/route.svg"),
              ),
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 5.h),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, color: Color(0xff004182)),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color(0xff06004E),
                              ),
                              hintText: "what do you search for?",
                              hintStyle: TextStyle(
                                  color: Color(0x9906004E),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Poppins')),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.shopping_cart,
                          color: Color(0xff004128),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Expanded(
                  child: GridView.builder(
                    itemCount: state.productModel?.products?.length,
                    //itemCount: state.ProductModel?.data?.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: (192 / 250),
                        mainAxisSpacing: 16.h,
                        crossAxisSpacing: 16.w),
                    itemBuilder: (context, index) {
                      return ProductItem(
                          index: index, productModel: state.productModel);
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
