import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:students_attendance_with_mlkit/ui/absent/absent_screen.dart';
import 'package:students_attendance_with_mlkit/ui/attend/attend_screen.dart';
import 'package:students_attendance_with_mlkit/ui/attendance_history/attendance_history_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) {
        if (didPop) {
          return;
        }
        _onWillPop(context);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Text(
                  'Welcome Back to',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.greenAccent,
                  ),
                ),
                Text(
                  'School Attendance',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.greenAccent,
                  ),
                ),
                SizedBox(height: 30),
                Expanded(
                  child: Column(
                    children: [
                      _buildOptionCard(
                        context,
                        icon: Icons.how_to_reg_outlined,
                        title: 'Report Attendance',
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AttendScreen()),
                        ),
                      ),
                      SizedBox(height: 20),
                      _buildOptionCard(
                        context,
                        icon: Icons.event_busy_outlined,
                        title: 'Absent / Permission',
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AbsentScreen()),
                        ),
                      ),
                      SizedBox(height: 20),
                      _buildOptionCard(
                        context,
                        icon: Icons.history_edu_outlined,
                        title: 'Attendance History',
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AttendanceHistoryScreen()),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOptionCard(BuildContext context,
      {required IconData icon,
      required String title,
      required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(50),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.greenAccent, Colors.greenAccent.shade400],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.greenAccent.withOpacity(0.2),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon, size: 60, color: Colors.white),
            SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> _onWillPop(BuildContext context) async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(
              'INFO',
              style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            content: Text(
              'Are you sure you want to exit?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text(
                  'No',
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 14,
                  ),
                ),
              ),
              TextButton(
                onPressed: () => SystemNavigator.pop(),
                child: Text(
                  'Yes',
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        )) ??
        false;
  }
}
