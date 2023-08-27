String formatTimestamp(String timestamp) {
  final DateTime postTime = DateTime.parse(timestamp);
  final DateTime now = DateTime.now();

  final Duration difference = now.difference(postTime);

  if (difference.inDays > 0) {
    return 'Posted ${difference.inDays} ${difference.inDays == 1 ? "day" : "days"} ago';
  } else if (difference.inHours > 0) {
    return 'Posted ${difference.inHours} ${difference.inHours == 1 ? "hour" : "hours"} ago';
  } else if (difference.inMinutes > 0) {
    return 'Posted ${difference.inMinutes} ${difference.inMinutes == 1 ? "minute" : "minutes"} ago';
  } else {
    return 'Posted just now';
  }
}