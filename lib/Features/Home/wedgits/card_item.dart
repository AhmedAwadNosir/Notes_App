import 'package:flutter/material.dart';
import 'package:notes_app_git/Models/note_model.dart';

class CardItem extends StatelessWidget {
 const CardItem({super.key, required this.note});
 final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(note.color),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        note.title,
                        style: const TextStyle(fontSize: 30),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        note.description,
                        softWrap: true,
                        style: const TextStyle(
                            color: Colors.black54, fontSize: 20),
                      )
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 25,
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                note.date,
                style: const TextStyle(color: Colors.black54, fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
