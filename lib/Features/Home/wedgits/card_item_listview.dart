import 'package:flutter/material.dart';
import '../../../Models/note_model.dart';
import 'card_item.dart';
class CardItmesListView extends StatelessWidget {
  CardItmesListView({super.key});
  List<NoteModel> cards = [
    NoteModel(
        title: "Learn Flutter",
        description: "learn flutter with tharwat samy  ",
        date: "05-31-2022",
        color: Colors.blueGrey),
    NoteModel(
      title: "Learn Flutter",
      description: "learn flutter with tharwat samy",
      date: "05-31-2022",
      color: Colors.yellow,
    ),
    NoteModel(
        title: "Learn Flutter",
        description: "learn flutter with tharwat samy",
        date: "05-31-2022",
        color: Colors.red),
    NoteModel(
        title: "Learn Flutter",
        description: "learn flutter with tharwat samy",
        date: "05-31-2022",
        color: Colors.blue),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cards.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: CardItem(note: cards[index]),
        );
      },
    );
  }
}
