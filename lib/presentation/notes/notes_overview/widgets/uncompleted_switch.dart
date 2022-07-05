import 'package:fire_notes/application/notes/list_watcher/note_list_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

//Using third party libary 'HookWidget'
class UncompletedSwitch extends HookWidget {
  const UncompletedSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toggleState = useState(false);
    final bloc = context.read<NoteListWatcherBloc>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: InkResponse(
        onTap: () {
          toggleState.value = !toggleState.value;
          bloc.add(
            toggleState.value
                ? const NoteListWatcherEvent.watchIncompletedStarted()
                : const NoteListWatcherEvent.watchAllStarted(),
          );
        },
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 100),
          transitionBuilder: (child, animation) => ScaleTransition(
            scale: animation,
            child: child,
          ),
          child: toggleState.value
              ? const Icon(
                  Icons.indeterminate_check_box_rounded,
                  key: Key('check_box'),
                )
              : const Icon(
                  Icons.check_box_outline_blank_rounded,
                  key: Key('blank'),
                ),
        ),
      ),
    );
  }
}
