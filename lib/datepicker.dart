import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class Datepicker extends StatefulWidget {
  const Datepicker({super.key});

  @override
  State<Datepicker> createState() => _DatepickerState();
}

class _DatepickerState extends State<Datepicker> {
  // final String _selectedDate = '';
  String _selectedDateRange = '';
  final DateRangePickerController _controller = DateRangePickerController();
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
              /*    Text("Selected date single date"),
              SizedBox(
                height: 200,
                width: 300,
                child: SfDateRangePicker(
                  enableMultiView: true,
                  viewSpacing: 30,
                  view: DateRangePickerView.month,
                  selectionMode: DateRangePickerSelectionMode.multiple,
                  onSelectionChanged: (args) {
                    setState(() {
                      _selectedDate = args.value.map((date) {
                        return DateFormat('d MMMM y').format(date);
                      }).join(', ');
                    });
                  },
                ),
              ), */
              /*  Text(
                'Selected date: $_selectedDate',
                overflow: TextOverflow.ellipsis,
              ), */
              Divider(),
              Text("Selected date range"),
              SizedBox(
                height: 400,
                width: 350,
                child: SfDateRangePicker(
                  controller: _controller,
                  showActionButtons: true,
                  todayHighlightColor: Colors.red,
                  selectionMode: DateRangePickerSelectionMode.multiple,
                  onSubmit: (Object? args) {
                    if (args is PickerDateRange) {
                      final startDate = args.startDate;
                      final endDate = args.endDate;
                      if (startDate != null && endDate != null) {
                        setState(() {
                          _selectedDateRange =
                              '${DateFormat('d MMMM y').format(startDate)} - ${DateFormat('d MMMM y').format(endDate)}';
                          _controller.selectedRange = null;
                        });
                      }
                    } else if (args is List<DateTime>) {
                      setState(() {
                        _selectedDateRange = args.map((date) {
                          return DateFormat('d MMMM y').format(date);
                        }).join(', ');
                        _controller.selectedDates = null;
                      });
                    }
                  },
                  onCancel: () => setState(() {
                    _selectedDateRange = '';
                    _controller.selectedRange = null;
                    _controller.selectedDates = null;
                  }),
                ),
              ),
              Divider(
                height: 20,
              ),
              Text('Selected date range: $_selectedDateRange'),
            ],
          ),
        ));
  }
}
