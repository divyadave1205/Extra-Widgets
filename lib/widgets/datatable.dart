import 'package:flutter/material.dart';

class DataTables extends StatefulWidget {
  const DataTables({Key? key}) : super(key: key);

  @override
  _DataTablesState createState() => _DataTablesState();
}

class _DataTablesState extends State<DataTables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DataTable(
          dividerThickness: 4,
          columns: [
            DataColumn(
              label: Text(
                "Name",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                "Age",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                "Designation",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
          rows: [
            DataRow(
              cells: [
                DataCell(
                  Text("Mohit"),
                ),
                DataCell(
                  Text("23"),
                ),
                DataCell(
                  Text("Associate Software Developer"),
                ),
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  Text("Akshay"),
                ),
                DataCell(
                  Text("25"),
                ),
                DataCell(
                  Text("Software Developer"),
                ),
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  Text("Deepak"),
                ),
                DataCell(
                  Text("29"),
                ),
                DataCell(
                  Text("Team Lead"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
