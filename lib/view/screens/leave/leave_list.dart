import 'package:flutter/material.dart';
class LeaveList extends StatefulWidget {
  const LeaveList({Key? key}) : super(key: key);

  @override
  _LeaveListState createState() => _LeaveListState();
}

class _LeaveListState extends State<LeaveList> {
  String selectedLeaveType = 'All';

  final List<String> leaveTypes = [
    'All',
    'Paid Leave',
    'Unpaid Leave',
    'Sick Leave',
    'Casual Leave',
    'Short Leave',
    'Maternity Leave',
    'Paternity Leave',
    'Outdoor Leave',
    'Comp Off',
    'Leave Without Pay'
  ];

  Future<List<String>> fetchLeaveTypeList(String leaveType) async {
    // Fetch the list of items for the given leave type from the backend
    // Replace this with your actual backend API call
    await Future.delayed(Duration(milliseconds: 2)); // Simulating a delay
    return [
      'Item 1',
    ];
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.03, vertical: screenWidth * 0.02),
            child: Text(
              "Leave Types",
              style: TextStyle(fontSize: screenWidth * 0.04),
            ),
          ),
          SizedBox(height: screenWidth * 0.02),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
            child: SizedBox(
              height: screenWidth * 0.12,
              child: DropdownButtonFormField<String>(
                value: selectedLeaveType,
                items: leaveTypes.map((String leaveType) {
                  return DropdownMenuItem<String>(
                    value: leaveType,
                    child: Text(leaveType),
                  );
                }).toList(),
                onChanged: (String? newLeaveType) {
                  setState(() {
                    selectedLeaveType = newLeaveType ?? '';
                  });
                },
              ),
            ),
          ),
          SizedBox(height: screenWidth * 0.02),
          Expanded(
            child: FutureBuilder<List<String>>(
              future: fetchLeaveTypeList(selectedLeaveType),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Center(
                    child: Text('No Leave Available.'),
                  );
                } else {
                  List<String> items = snapshot.data!;
                  return ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(items[index]),
                        // Add other widget properties or actions as needed
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
