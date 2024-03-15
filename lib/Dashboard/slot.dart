import 'package:flutter/material.dart';

class Slot extends StatefulWidget {
  const Slot({Key? key}) : super(key: key);

  @override
  State<Slot> createState() => _SlotState();
}

class _SlotState extends State<Slot> {
  final _formKey = GlobalKey<FormState>();
  String source = '';
  String destination = '';
  String chosenStation = '';
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }
  void _clearFields() {
    setState(() {
      source = '';
      destination = '';
      chosenStation = '';
      selectedDate = null;
      selectedTime = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar( toolbarHeight: 30,
        title:const Text('Slot Booking'),
        actions: [
          IconButton(
            icon:const Icon(Icons.refresh),
            onPressed: _clearFields,
          ),
        ],

      ),

      body: RefreshIndicator(
        onRefresh: () async {
          _clearFields();
          // You can perform any additional refreshing logic here.
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                const SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Source',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:const BorderSide(
                        color: Color(0xff0d98b9),
                      ),
                    ),
                    prefixIcon:const Icon(Icons.location_on),
                    labelStyle:const TextStyle(
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the destination';
                    }
                    return null;
                  },
                  onSaved: (value) => source = value!,
                ),

                const SizedBox(height: 08,),


                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Destination',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:const BorderSide(
                        color: Color(0xff0d98b9),
                      ),
                    ),
                    prefixIcon:const Icon(Icons.location_on),
                    labelStyle:const TextStyle(
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the destination';
                    }
                    return null;
                  },
                  onSaved: (value) => destination = value!,
                ),


                const SizedBox(height: 10,),

                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          selectedDate == null
                              ? 'No date chosen'
                              : 'Picked Date: ${selectedDate!.toLocal()}',
                          style: TextStyle(
                            fontSize: 16,
                            color: selectedDate == null ? Colors.grey : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () => _selectDate(context),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff0d98b9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child:const Text(
                        'Select date',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),


                const SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding:const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          selectedTime == null
                              ? 'No time chosen'
                              : 'Picked Time: ${selectedTime!.format(context)}',
                          style: TextStyle(
                            fontSize: 16,
                            color: selectedTime == null ? Colors.grey : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () => _selectTime(context),
                      style: ElevatedButton.styleFrom(
                        primary:const Color(0xff0d98b9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child:const Text(
                        'Select time',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),


                const SizedBox(height: 10,),

                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Choose Station',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:const BorderSide(
                        color: Color(0xff0d98b9),
                      ),
                    ),
                    prefixIcon:const Icon(Icons.electrical_services_outlined),
                    labelStyle:const TextStyle(
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the Station';
                    }
                    return null;
                  },
                  onSaved: (value) => chosenStation = value!,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Now you can use the collected data (source, destination, selectedDate, selectedTime, chosenStation)
                    // to perform your slot booking logic.
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title:const Text('Slot Booked'),
                          content:const Text('Please make your presence on that time&date sure  thanks dear!'),
                          actions: <Widget>[
                            TextButton(
                              child:const Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop(); // Close the dialog
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                  },

                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff0d98b9),side: BorderSide.none,shape: const StadiumBorder()),
                  child: const Text('Book Slot',style: TextStyle(color:Colors.black)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/* if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Now you can use the collected data (source, destination, selectedDate, selectedTime, chosenStation)
                    // to perform your slot booking logic.
                  }*/
