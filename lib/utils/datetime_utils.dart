DateTime parseDateTime(String date, String time) {
  final year = date.split("/").last;
  final month = date.split("/")[1];
  final day = date.split("/").first;

  final hour = time.split(":").first;
  final min = time.split(":").last;

  final dt = DateTime(int.parse(year), int.parse(month), int.parse(day),
      int.parse(hour), int.parse(min));

  return dt;
}
