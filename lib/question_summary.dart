import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(
      {super.key, required this.summary}); //this is constructor

  final List<Map<String, Object>> summary;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...summary.map((data) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade300, shape: BoxShape.circle),
                      alignment: Alignment.center,
                      child: Text(
                        '${(data['question_id'] as int) + 1}', //bind as string
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${data['question']}',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                          Text(
                            '${data['user_answer']}',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 59, 173, 255),
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                          Text(
                            '${data['correct_answer']}',
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
