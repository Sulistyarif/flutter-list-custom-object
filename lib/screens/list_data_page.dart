import 'package:flutter/material.dart';
import 'package:flutter_list_custom_object/models/member.dart';

class ListDataPage extends StatefulWidget {
  const ListDataPage({Key? key}) : super(key: key);

  @override
  State<ListDataPage> createState() => _ListDataPageState();
}

class _ListDataPageState extends State<ListDataPage> {
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerAge = TextEditingController();
  final TextEditingController _controllerCountry = TextEditingController();

  final List<Member> _memberList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Data Object'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              hintText: 'member name',
            ),
            controller: _controllerName,
          ),
          TextField(
            decoration: const InputDecoration(
              hintText: 'member age',
            ),
            controller: _controllerAge,
          ),
          TextField(
            decoration: const InputDecoration(
              hintText: 'member country',
            ),
            controller: _controllerCountry,
          ),
          ElevatedButton(
            onPressed: () {
              _addMember();
            },
            child: const Text('Add Member'),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                /* return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(_memberList[index].name!),
                        Text(_memberList[index].age!),
                        Text(_memberList[index].country!),
                      ],
                    ),
                  ),
                ); */
                return Text(
                    '${_memberList[index].name!} | ${_memberList[index].age!} | ${_memberList[index].country!}');
              },
              itemCount: _memberList.length,
            ),
          ),
        ],
      ),
    );
  }

  void _addMember() {
    _memberList.add(
      Member(
        name: _controllerName.text,
        age: _controllerAge.text,
        country: _controllerCountry.text,
      ),
    );
    setState(() {});
  }
}
