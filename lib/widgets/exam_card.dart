import 'package:flutter/material.dart';
import '../models/exam.dart';

class ExamCard extends StatelessWidget {
  final Exam exam;
  final VoidCallback onTap;

  const ExamCard({
    super.key,
    required this.exam,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: exam.isPast
              ? LinearGradient(
                  colors: [Colors.grey[300]!, Colors.grey[400]!],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : LinearGradient(
                  colors: [Colors.purple[50]!, Colors.white],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  exam.subject,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: exam.isPast ? Colors.grey[700] : Colors.deepPurple[900],
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 16,
                      color: exam.isPast ? Colors.grey : Colors.deepPurple,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      exam.formattedDate,
                      style: TextStyle(
                        fontSize: 14,
                        color: exam.isPast ? Colors.grey[600] : Colors.black87,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Icon(
                      Icons.access_time,
                      size: 16,
                      color: exam.isPast ? Colors.grey : Colors.deepPurple,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      exam.formattedTime,
                      style: TextStyle(
                        fontSize: 14,
                        color: exam.isPast ? Colors.grey[600] : Colors.black87,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.room,
                      size: 16,
                      color: exam.isPast ? Colors.grey : Colors.deepPurple,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        exam.rooms.join(", "),
                        style: TextStyle(
                          fontSize: 14,
                          color: exam.isPast ? Colors.grey[600] : Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Icon(
                      Icons.timer,
                      size: 16,
                      color: exam.isPast ? Colors.grey : Colors.deepPurple,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      exam.timeRemaining,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: exam.isPast ? Colors.grey[600] : Colors.deepPurple[700],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}