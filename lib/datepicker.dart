// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class Datepicker extends StatefulWidget {
  const Datepicker({super.key});

  @override
  State<Datepicker> createState() => _DatepickerState();
}

class _DatepickerState extends State<Datepicker> {
  String _selectedDate = '';
  String _selectedDateRange = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Datepicker"),
          backgroundColor: Color.fromARGB(255, 176, 223, 194),
        ),
        body: Center(
          child: Column(
            children: [
              Text("Selected date single date"),
              SizedBox(
                height: 200,
                width: 300,
                child: SfDateRangePicker(
                  onSelectionChanged: (args) {
                    setState(() => _selectedDate =
                        DateFormat('d MMMM y ').format(args.value));
                  },
                ),
              ),
              Text('Selected date: $_selectedDate'),
              Divider(),
              Text("Selected date range"),
              SizedBox(
                height: 200,
                width: 300,
                child: SfDateRangePicker(
                    selectionMode: DateRangePickerSelectionMode.range,
                    onSelectionChanged: (args) {
                      setState(() {
                        _selectedDateRange =
                            '${DateFormat('d MMMM y').format(args.value.startDate)} - ${DateFormat('d MMMM y').format(args.value.endDate)}';
                      });
                    }),
              ),
              Text('Selected date range: $_selectedDateRange'),
            ],
          ),
        ));
  }
}
