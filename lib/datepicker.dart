// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class Datepicker extends StatefulWidget {
  const Datepicker({super.key});

  @override
  State<Datepicker> createState() => _DatepickerState();
}

class _DatepickerState extends State<Datepicker> {
  String _selectedDateRange = '';

  void _onselected(DateRangePickerSelectionChangedArgs ags) {
    setState(() {
      if (ags.value is PickerDateRange) {
        _selectedDateRange = '${ags.value.startDate} - ${ags.value.endDate}';
      } else if (ags.value is DateTime) {
        _selectedDateRange = ags.value.toString();
      } else if (ags.value is List<DateTime>) {
        _selectedDateRange = ags.value.toString();
      } else {
        _selectedDateRange = '';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Datepicker'),
          backgroundColor: Color.fromARGB(255, 20, 220, 97),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                  height: 400,
                  width: 400,
                  child: SfDateRangePicker(
                    onSelectionChanged: _onselected,
                    backgroundColor: const Color.fromARGB(255, 127, 193, 145),
                    todayHighlightColor: Colors.red,
                    selectionMode: DateRangePickerSelectionMode.range,
                  )),
              FittedBox(
                child: SizedBox(
                  height: 100,
                  width: 300,
                  child: Text('Selected date range: $_selectedDateRange'),
                ),
              )
            ],
          ),
        ));
  }
}
