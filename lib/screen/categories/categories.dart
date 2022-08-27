
import 'package:dropdownbutton/api/models/movie_data.dart';
import 'package:dropdownbutton/base_screen.dart';
import 'package:dropdownbutton/pages/home/home_bloc.dart';
import 'package:flutter/material.dart';
import '../../routes.dart';
import 'component/categori_header.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    routerMovie() {
      Navigator.of(context).pushNamed(categories);
    }
    final bloc = HomeBloc();
    return BaseScreen(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            CategoriHeader(),
            SizedBox(height: 10,),
            Column(
              children: [
                FutureBuilder<List<MovieData>>(
                    future: bloc.getMovieData(),
                    builder: (context, snapshot){
                      return Padding(
                        padding: EdgeInsets.all(10),
                        child: GridView.builder(
                            itemCount: snapshot.data?.length ?? 0,
                            shrinkWrap: true,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 0.75,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10
                            ),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () => routerMovie(),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    image: DecorationImage(
                                        image: NetworkImage(snapshot.data?[index]. img ?? ''),
                                      fit: BoxFit.cover,
                                    )
                                  ),
                                ),
                              );
                            }
                        ),
                      );
                    }
                )
              ],
            )
          ],
        )
    );
  }
}
