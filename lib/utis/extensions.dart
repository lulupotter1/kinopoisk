extension StringExtension on String {
  String cap() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
