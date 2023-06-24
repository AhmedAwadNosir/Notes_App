import 'package:flutter/material.dart';
import '../../../Models/note_model.dart';
import '../views/edit_note_view.dart';
import 'card_item.dart';

class CardItmesListView extends StatelessWidget {
   CardItmesListView({super.key, required this.notes});
   List<NoteModel> notes;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notes.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, EditView.id);
              },
              child: CardItem(note: notes[index])),
        );
      },
    );
  }
}
