import 'package:botecorastreios/models/item_model.dart';
import 'package:botecorastreios/ui/components/bottomsheet_wrapper.dart';
import 'package:flutter/material.dart';

Widget buildNewItemComponent(
    BuildContext context,
    ScrollController scrollController,
    double bottomSheetOffset,
    Function(ItemModel) onAdd) {
  final nameTextController = TextEditingController();
  final codeTextController = TextEditingController();

  return BottomSheetWrapper(
    title: "Mais uma dose?",
    children: [
      Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              controller: nameTextController,
              decoration: InputDecoration(
                labelText: "Nome",
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: codeTextController,
              decoration: InputDecoration(
                labelText: "Codigo",
              ),
            ),
          ],
        ),
      ),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          fixedSize: Size(340, 45),
          primary: Color(0XFF6697c1),
        ),
        onPressed: () {
          if (codeTextController.text.isEmpty) return;
          if (nameTextController.text.isEmpty) {
            nameTextController.text = codeTextController.text;
          }

          ItemModel newItem = ItemModel(
              title: nameTextController.text,
              code: codeTextController.text,
              info: []);

          onAdd(newItem);
          Navigator.of(context).pop();
        },
        child: Text("Manda pra dentro!"),
      )
    ],
  );
}
