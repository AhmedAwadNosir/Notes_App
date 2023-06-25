import 'package:flutter/material.dart';
import '../../../Models/note_model.dart';
import '../views/edit_note_view.dart';
import 'card_item.dart';

class CardItmesListView extends StatelessWidget {
  CardItmesListView({super.key, required this.notes});
  List<NoteModel> notes;

  @override
  Widget build(BuildContext context) {
    if (notes.isNotEmpty) {
      return ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: GestureDetector(
                onTap: () {
                  final currentNote = notes[index];
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                     return EditView(
                        note: currentNote,
                      );
                    },
                  ));
                },
                child: CardItem(note: notes[index])),
          );
        },
      );
    } else {
      return const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.playlist_add,
            size: 100,
            color: Colors.white,
          ),
          Text(
            "Add Some Notes",
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
            ),
          )
        ],
      );
    }
  }
}
