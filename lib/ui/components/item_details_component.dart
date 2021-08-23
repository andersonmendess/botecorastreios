import 'package:botecorastreios/models/item_model.dart';
import 'package:botecorastreios/ui/components/bottomsheet_wrapper.dart';
import 'package:botecorastreios/utils/datetime_utils.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

Widget buildItemDetailsComponent(BuildContext context, ItemModel item) {
  return BottomSheetWrapper(title: item.title, subtitle: item.code, children: [
    Container(
      margin: const EdgeInsets.all(6),
      padding: const EdgeInsets.all(10).copyWith(top: 5, bottom: 5),
      decoration: BoxDecoration(
          color: Color(0xFF242526).withAlpha(200),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          ...item.info
              .map(
                (e) => ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 0,
                  ),
                  visualDensity: VisualDensity.compact,
                  title: Text(
                    e.status,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: e.to.isEmpty
                      ? null
                      : Text(
                          e.to,
                          style: TextStyle(fontSize: 12),
                        ),
                  trailing: Text(
                    timeago.format(parseDateTime(e.date, e.time),
                        locale: 'pt_br'),
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              )
              .toList()
        ],
      ),
    ),
  ]);
}
