import 'package:flutter/material.dart';
import '../../../Models/note_model.dart';
import '../views/edit_note_view.dart';
import 'card_item.dart';

class CardItmesListView extends StatelessWidget {
  CardItmesListView({super.key});
  List<NoteModel> cards = [
    NoteModel(
        title: "Learn Flutter",
        description: "learn flutter with tharwat samy  ",
        date: "05-31-2022",
        color: Colors.blueGrey.value),
    NoteModel(
      title: "Learn Flutter",
      description: "learn flutter with tharwat samy",
      date: "05-31-2022",
      color: Colors.yellow.value,
    ),
    NoteModel(
        title: "Learn Flutter",
        description: "learn flutter with tharwat samy",
        date: "05-31-2022",
        color: Colors.red.value),
    NoteModel(
        title: "Learn Flutter",
        description: "learn flutter with tharwat samy",
        date: "05-31-2022",
        color: Colors.blue.value),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cards.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, EditView.id);
              },
              child: CardItem(note: cards[index])),
        );
      },
    );
  }
}
