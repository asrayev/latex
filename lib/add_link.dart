
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/get_data_cubit.dart';

class NewPostDialog extends StatefulWidget {
  const NewPostDialog({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _NewPostDialogState createState() => _NewPostDialogState();
}

class _NewPostDialogState extends State<NewPostDialog> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xff1C2632),
      //title: Text('Create new post',style: GoogleFonts.actor(color: Colors.white),),
      content: TextField(
        maxLength: 300,
        maxLines: 4,
        controller: context.watch<GetDataCubit>().newTextController,
        autofocus: true,
        cursorColor: Colors.white,
        onChanged: (a){

        },
        decoration: InputDecoration(

          border: InputBorder.none,
          hintText: "new post",
          hintStyle: TextStyle(color: Colors.white54, fontSize: 16),
          helperStyle: TextStyle(color: Colors.white, fontSize: 12),
        ),
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,color: Colors.white),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            context.read<GetDataCubit>().getData(index: index);
            Navigator.of(context).pop();
          },
          child: const Text('Create'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
