import 'package:flutter/material.dart';
import 'package:harry_potter/feature/topics/data/model/character/character.dart';
import 'package:harry_potter/feature/topics/view/widget/character_detailed_view.dart';

class CharacterCard extends StatelessWidget {
  final CharacterModel character;
  const CharacterCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        leading: Hero(
          tag: character.id!,
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(character.image!),
                fit: BoxFit.cover,
                // onError: (context, error, stackTrace) => Icon(Icons.person),
              ),
            ),
          ),
        ),
        title: Text(
          character.name!,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.green[800],
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'House: ${character.house}',
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            Text(
              'Species: ${character.species}',
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            Text(
              'Born: ${character.dateOfBirth}',
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            Row(
              children: [
                Icon(Icons.check_circle,
                    size: 16,
                    color: character.alive! ? Colors.green : Colors.red),
                const SizedBox(width: 4),
                Text(
                  character.alive! ? 'Alive' : 'Deceased',
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
              ],
            ),
          ],
        ),
        trailing: Icon(Icons.chevron_right, size: 32, color: Colors.green[800]),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    CharacterDetailedView(character: character),
              ));
        },
      ),
    );
  }
}
