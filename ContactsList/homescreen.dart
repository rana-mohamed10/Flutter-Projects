import 'package:flutter/material.dart';

class HomeSc extends StatefulWidget {
  @override
  State<HomeSc> createState() => _HomeScState();
}

class _HomeScState extends State<HomeSc> {
  String name = '';
  String phone = '';
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  bool show=false;
  bool press1=false;
  bool press2=false;
  List<Contact> contacts = [];
  int count=0;


  bool _isNameEmpty() {
    return _nameController.text.isEmpty;
  }
  bool _isPhoneEmpty() {
    return _phoneController.text.isEmpty;
  }

  Widget _NameErrorWidget() {
    if (_isNameEmpty()) {
      return Text(
        'name can\'t be empty',
        style: TextStyle(color: Colors.red),
      );

    }
    return Container();
  }

  Widget _PhoneErrorWidget(){
    if (_isPhoneEmpty()){
      return Text(
        'phone number can\'t be empty',
        style: TextStyle(color: Colors.red),
      );
    }
    return Container();
  }

  Widget CreateContainer(Contact contact){
    return
    Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white
      ),
      child: Row(
        children: [
          Column(
            children: [
              Text('Name: ${contact.name}'),
              Text('Phone: ${contact.phone}'),
              SizedBox(width: 300),
            ],
          ),
          InkWell(
            onTap: (){
              show=false;
              count--;
              setState(() {
                contacts.remove(contact);
                _nameController.clear();
                _phoneController.clear();
              });
            },
            child:
            Icon(Icons.delete,color:Colors.red),

          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts Screen'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _nameController,
                        onChanged: (newText) {
                          setState(() {
                            name = newText;
                          });
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Enter your name',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          suffixIcon: Icon(Icons.edit, color: Colors.blue),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                press1? _NameErrorWidget():Container(),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _phoneController,
                        onChanged: (newText) {
                          setState(() {
                            phone = newText;
                          });
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Enter your phone number',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          suffixIcon: Icon(Icons.phone, color: Colors.blue),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                press2? _PhoneErrorWidget():Container(),
              ],
            ),
          ),

          ElevatedButton(
            onPressed: () {
              setState(() {
                press1=false;
                press2=false;

                _nameController.clear();
                _phoneController.clear();

                if (name.isNotEmpty && phone.isNotEmpty && count<3 ) {
                  count++;
                  show = true;
                  contacts.add(Contact(name: name, phone: phone));
                  press1=false;
                  press2=false;
                }
                if (name.isEmpty){
                  press1=true;
                }
                if (phone.isEmpty){
                  press2=true;
                }

                if (count==3) {
                  press1=false;
                  press2=false;
                }
                name='';
                phone='';


              });
            },
            style: ElevatedButton.styleFrom(
              fixedSize: Size(380, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60.0),
              ),
            ),
            child: Text(
              'Add',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),

          // if (show) CreateContainer(),
          Column(
            children: contacts
                .map((contact) => CreateContainer(contact))
                .toList(),
          ),



        ],

      ),

    );
  }
}

class Contact {
  String name;
  String phone;

  Contact({required this.name, required this.phone});
}