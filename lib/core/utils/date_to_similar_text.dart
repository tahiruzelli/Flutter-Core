String dateToSimilarText(DateTime date) {
  DateTime now = DateTime.now();
  int differenceInMinute = now.difference(date).inMinutes;
  if (differenceInMinute < 2) {
    return "Just Now";
  } else if (differenceInMinute < 60) { // less then hour
    return "$differenceInMinute minutes ago";
  } else if (differenceInMinute < 1440) { // less then day
    return "${differenceInMinute ~/ 60} hours ago";
  } else if (differenceInMinute < 10080) { // less then week
    return "${differenceInMinute ~/ 1440} days ago";
  } else if (differenceInMinute < 43829) { // less then month
    return "${differenceInMinute ~/ 10080} weeks ago";
  } else if(differenceInMinute < 525948) { // less then year
    return "${differenceInMinute ~/ 43829} months ago";
  } else{
    return "${differenceInMinute ~/ 525948} years ago";
  }
}
