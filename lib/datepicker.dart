// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class Datepicker extends StatefulWidget {
  const Datepicker({super.key});

  @override
  State<Datepicker> createState() => _DatepickerState();
}

class _DatepickerState extends State<Datepicker> {

  final DateRangePickerController _controller = DateRangePickerController();
  Map<String, String> notebook = {};
  DateTime? isclick;
  final TextEditingController _textEditingController = TextEditingController();
  String _generatekey(DateTime date) {
    return '${date.year}-${date.month}-${date.day}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Note stick",
          style: TextStyle(color: Colors.purple),
        ),
        backgroundColor: const Color.fromARGB(255, 199, 198, 228),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 350,
            child: SfDateRangePicker(
              key: ValueKey(notebook.length),
              controller: _controller,
              onSelectionChanged: (args) {
                setState(() {
                  isclick = args.value;
                });
              },
              cellBuilder: (context, cellDetails) {
                String key = _generatekey(cellDetails.date);
                String? note = notebook[key];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(cellDetails.date.day.toString()),
                    if (note != null)
                      Text(
                        note,
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 10,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              onSubmitted: (value) {
                if (isclick != null && value.isNotEmpty) {
                  setState(() {
                    notebook[_generatekey(isclick!)] = value;
                  });
                  _textEditingController.clear();
                }
              },
              decoration: const InputDecoration(
                hintText: "Type text and press Enter",
                border: OutlineInputBorder(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
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
              ),
               */
              /*        Text(
                "Select the date",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.lightBlue,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 300,
                width: 350,
                child: SfDateRangePicker(
                  backgroundColor: const Color.fromARGB(179, 224, 219, 219),
                  todayHighlightColor: const Color.fromARGB(255, 40, 107, 107),
                  selectionRadius: -1,
                  selectionColor: Colors.blueAccent,
                  view: DateRangePickerView.month,
                  showActionButtons: true,
                  controller: _controller,
                  monthCellStyle: DateRangePickerMonthCellStyle(
                    weekendTextStyle: TextStyle(
                      color: const Color.fromARGB(255, 89, 40, 233),
                      fontWeight: FontWeight.bold,
                    ),
                    weekendDatesDecoration: BoxDecoration(
                      color: const Color.fromARGB(255, 193, 190, 238),
                      shape: BoxShape.circle,
                    ),
                  ),
                  selectionMode: DateRangePickerSelectionMode.multiple,
                  onSubmit: (Object? args) {
                    if (args is PickerDateRange) {
                      final startdate = args.startDate;
                      final enddate = args.endDate;
                      if (startdate != null && enddate != null) {
                        setState(() {
                          _selectedDate =
                              '${DateFormat('d MMMM y').format(args.startDate!)} - ${DateFormat('d MMMM y').format(args.endDate!)}';
                          _controller.selectedRange = null;
                        });
                      }
                    } else if (args is List<DateTime>) {
                      setState(() {
                        _selectedDate = args.map((date) {
                          return DateFormat('d MMMM y').format(date);
                        }).join(',');
                        _controller.selectedDates = null;
                      });
                    } else {
                      _selectedDate = "No date selected";
                    }
                  },
                  onCancel: () {
                    _controller.selectedDates = null;
                    _controller.selectedRange = null;
                  },
                ),
              ),
              Divider(
                height: 20,
              ),
              SizedBox(
                height: 60,
                child: Text('Selected Date= $_selectedDate'),
              ), */

              // SizedBox(
              //   height: 400,
              //   width: 400,
              //   child: SfDateRangePicker(
              //     selectionMode: DateRangePickerSelectionMode.single,
              //     onSelectionChanged: (args) {
              //       setState(() {});
              //     },
              //     controller: _controller,
              //     cellBuilder: (context, details) {
              //       bool busy = busyday.contains(details.date.day);
              //       return Expanded(
              //         child: Container(
              //           height: 45.3,
              //           width: 51.3,
              //           decoration: BoxDecoration(shape: BoxShape.circle),
              //           child: Column(
              //             mainAxisAlignment: MainAxisAlignment.end,
              //             children: [
              //               if (busy)
              //                 Text("${details.date.day}-Event occur",
              //                     style: TextStyle(
              //                         fontSize: 8, color: Colors.blue))
              //               else
              //                 Text("${details.date.day}"),
              //             ],
              //           ),
              //         ),
              //       );
              //     },
              //   ),
              // )
 
