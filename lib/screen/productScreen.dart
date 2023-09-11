import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kkkk/block/products_bloc.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  void initState() {
    context.read<ProductsBloc>().add(ProductsLoadedEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Product Screen")),
        body:
            BlocBuilder<ProductsBloc, ProductsState>(builder: (context, state) {
          if (state is ProductsLoadingState) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (state is ProductsLoadedState) {
            return ListView.builder(
                itemCount: state.productModel.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Colors.blue)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  state.productModel[index].image.toString(),
                                  scale: 2,
                                  fit: BoxFit.fill,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                        height: 160,
                                        width: 100,
                                        color: Colors.blue);
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                state.productModel[index].title,
                                style: const TextStyle(
                                    fontSize: 15, color: Colors.blueAccent),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          state.productModel[index].description.toString(),
                          style:
                              const TextStyle(fontSize: 12, color: Colors.grey),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "Price : ",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black),
                                  textAlign: TextAlign.start,
                                ),
                                Text(
                                  "Rs ${state.productModel[index].price.toString()}",
                                  style: const TextStyle(
                                      fontSize: 13, color: Colors.blueAccent),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                RatingBar.builder(
                                  initialRating:
                                      state.productModel[index].rating.rate,
                                  itemSize: 16.0,
                                  wrapAlignment: WrapAlignment.center,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  itemCount: 5,
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "${state.productModel[index].rating.count} ",
                                  style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                });
          } else if (state is ProductsErrorState) {
            return Center(
              child: Text(state.errorMessage),
            );
          } else {
            return const SizedBox();
          }
        }));
  }
}
