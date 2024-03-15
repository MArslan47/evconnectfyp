import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _phoneNumber = '';
  String _password = '';
  String _confirmPassword = '';
  late ImagePicker _imagePicker;
  XFile? _image;


  @override
  void initState() {
    super.initState();
    _imagePicker = ImagePicker();
  }

  Future<void> _getImage() async {
    final XFile? pickedImage = await _imagePicker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
    );

    if (pickedImage != null) {
      setState(() {
        _image = pickedImage;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0d98b9), // Set the app bar color
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, 'profile');
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: Text('Edit Profile'),
        ),
      ),



      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                GestureDetector(
                  onTap: _getImage,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: _image != null
                              ? Image.file(
                            File(_image!.path),
                            fit: BoxFit.cover,
                          )
                              : const Image(
                            image: AssetImage('assets/logo.jpeg'),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color(0xff0d98b9).withOpacity(0.1),
                          ),
                          child: const Padding(
                            padding:
                            EdgeInsets.symmetric(horizontal: 05),
                            child: Icon(Icons.camera_alt, color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 10,),


                FormField<String>(
                  builder: (FormFieldState<String> state) {
                    return TextFormField(
                      onChanged: (value) {
                        setState(() {
                          _name = value;
                        });
                      },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xff0d98b9),
                          ),
                        ),
                        label: const Text('Name'),
                        prefix: const Icon(Icons.person),
                        labelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorText: state.errorText,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty|| value!= _name) {
                          return 'Please enter a Name';
                        }
                        return null;
                      },
                    );
                  },
                ),

                const SizedBox(height: 10),

                FormField<String>(
                  builder: (FormFieldState<String> state) {
                    return TextFormField(
                      onChanged: (value) {
                        setState(() {
                          _email = value;
                        });
                      },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xff0d98b9),
                          ),
                        ),
                        label: const Text('Email'),
                        prefix: const Icon(Icons.email),
                        labelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorText: state.errorText,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty ||value != _email|| !value.contains('@')) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    );
                  },
                ),
                const SizedBox(height: 10,),

                FormField<String>(
                  builder: (FormFieldState<String> state) {
                    return TextFormField(
                      onChanged: (value) {
                        setState(() {
                          _phoneNumber = value;
                        });
                      },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xff0d98b9),
                          ),
                        ),
                        label: const Text('Phone Number'),
                        prefix: const Icon(Icons.phone_android),
                        labelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorText: state.errorText,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty||value != _phoneNumber) {
                          return 'Please enter a valid phone number';
                        }
                        return null;
                      },
                    );
                  },
                ),

                const SizedBox(height: 10,),

                FormField<String>(
                  builder: (FormFieldState<String> state) {
                    return TextFormField(
                      obscureText: true,
                      onChanged: (value) {
                        setState(() {
                          _password = value;
                        });
                      },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xff0d98b9),
                          ),
                        ),
                        label: const Text('Password'),
                        prefix: const Icon(Icons.fingerprint),
                        labelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorText: state.errorText,
                      ),
                      validator: (value) {
                        // You can add your password validation logic here
                        if (value == null || value.isEmpty||value != _password|| value.length < 8) {
                          return 'Please enter a valid password';
                        }
                        return null;
                      },
                    );
                  },
                ),
                const SizedBox(height: 10,),

                FormField<String>(
                  builder: (FormFieldState<String> state) {
                    return TextFormField(
                      obscureText: true,
                      onChanged: (value) {
                        setState(() {
                          _confirmPassword = value;
                        });
                      },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xff0d98b9),
                          ),
                        ),
                        label: const Text('Confirm Password'),
                        prefix: const Icon(Icons.fingerprint),
                        labelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorText: state.errorText,
                      ),
                      validator: (value) {
                        // You can add your confirm password validation logic here
                        if (value == null || value.isEmpty ||value != _password) {
                          return 'Please enter a valid Confirm Password';
                        }
                        return null;
                      },
                    );
                  },
                ),


                const SizedBox(height: 20),

                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        // Now you can use the collected data (source, destination, selectedDate, selectedTime, chosenStation)
                        // to perform your slot booking logic.
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title:const Text('Update Successfully'),
                              content:const Text('your profile update successfully'),
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
                    child: const Text('Edit Profile',style: TextStyle(color:Colors.black)),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
