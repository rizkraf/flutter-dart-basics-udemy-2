import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.summary, {super.key});

  final Map<String, Object> summary;
  final Color blueColor = const Color.fromARGB(255, 150, 181, 248);
  final Color pinkColor = const Color.fromARGB(255, 253, 153, 228);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: summary['user_answer'] == summary['correct_answer']
                ? blueColor
                : pinkColor,
            shape: BoxShape.circle,
          ),
          child: Text(
            ((summary['question_index'] as int) + 1).toString(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 2),
                child: Text(
                  (summary['question'] as String),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                (summary['user_answer'] as String),
                style: TextStyle(
                  color: pinkColor,
                ),
              ),
              Text(
                (summary['correct_answer'] as String),
                style: TextStyle(
                  color: blueColor,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
