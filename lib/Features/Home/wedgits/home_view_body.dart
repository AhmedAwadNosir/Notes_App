import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_git/Cubits/featch_notes_cubit/featch_notes_cubit.dart';

import '../../wedgits/app_header.dart';
import 'card_item_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const AppHeader(
            title: "Notes",
            icon: Icons.search,
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(child: BlocBuilder<FeatchNotesCubit, FeatchNotesState>(
            builder: (context, state) {
              if (state is FeatchNotesSecess) {
                return CardItmesListView(
                  notes: state.notes,
                );
              } else if (state is FeatchNotesFailur) {
                return Center(
                  child: Text(state.errorMessage),
                );
              } else {
                return const Center(child:  CircularProgressIndicator());
              }
            },
          )),
        ],
      ),
    ));
  }
}
