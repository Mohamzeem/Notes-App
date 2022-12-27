part of '../home_screen.dart';

class CWAddNoteBottomSheet extends StatelessWidget {
  const CWAddNoteBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: SizedBox(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
              debugPrint('Success');
            }
            if (state is AddNoteFailure) {
              debugPrint('Add Failed ${state.errMessage}');
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: const AddNoteForm(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
