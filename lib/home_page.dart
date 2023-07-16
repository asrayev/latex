import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'add_link.dart';
import 'cubit/get_data_cubit.dart';
import 'package:flutter_tex/flutter_tex.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
 int index = 0;
class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // getStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:       BlocBuilder<GetDataCubit, GetDataState>(builder: (context, state) {
        if (state is GettingDataInProgress) {
          return Center(child: const CircularProgressIndicator());
        }
        else if (state is GettingDataInSuccess) {
          return SingleChildScrollView(
            child: Column(
              children: [
                TextField(

                ),
                SizedBox(height: 100,),

             TeXView(
               child: TeXViewDocument(
                 state.chats.questionContent,
               ),
             ),

                Container(
                  child: Text(state.chats.questionContent),
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      const Spacer(),
                      TextButton(onPressed: ((){
                        index = index - 1;
                        context.read<GetDataCubit>().getData(index: index);

                      }), child: const Icon(Icons.arrow_back_ios)),
                      TextButton(onPressed: ((){
                        index = index + 1;
                            context.read<GetDataCubit>().getData(index: index);
                      }), child: const Icon(Icons.arrow_forward_ios_outlined)),
                        const Spacer(),
                    ],),
                  ),
                )
              ],


            ),
          );
        } else {
          return const Center(child: Text("ERROR"),);
        }
      }),
      floatingActionButton: FloatingActionButton(onPressed: ((){
        showDialog(
          context: context,
          builder: (context) {
            return NewPostDialog();
          },
        ).then((newPostText) {
          // Do something with the new post text
        });
        //Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddChatPage()));
      }), ),

    );
  }

  Padding OneItemWidget(String first, String second) {
    return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 15,),
                      Text(first),
                      Spacer(),
                      Text(second),
                      SizedBox(width: 15,),
                    ],
                  ),
                ),
              );
  }
}
