import 'package:flutter/material.dart';

import '../../../../domain/notes/note.dart';

class ErrorCard extends StatelessWidget {
  final Note note;
  const ErrorCard({required this.note, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).errorColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Invalid note, please contact support',
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyLarge!
                  .copyWith(fontSize: 18.0),
            ),
            Text('Info for nerds:',
                style: Theme.of(context).primaryTextTheme.bodyLarge!),
            const SizedBox(height: 3.0),
            Text(
              note.failureOption
                  .fold(() => '', (failure) => failure.toString()),
              style: Theme.of(context).primaryTextTheme.bodyLarge!,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
