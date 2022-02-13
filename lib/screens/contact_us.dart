import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  static const String kLocalContact = 'assets/contact_us_local.txt';
  final TextEditingController _textController = TextEditingController();
  String _localFileContent = '';
  String _localFilePath = kLocalContact;

  @override
  void initState() {
    super.initState();
    _loadTextFromLocalFile();
    _getLocalFile().then((file) => setState(() => _localFilePath = file.path));
  }

  @override
  Widget build(BuildContext context) {
    final FocusNode textFieldFocusNode = FocusNode();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact Us',
          style: GoogleFonts.ubuntu(
              textStyle: const TextStyle(color: Colors.black87)),
        ),
        backgroundColor: Colors.limeAccent[400],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          const Text('Write to local file:'),
          TextField(
            focusNode: textFieldFocusNode,
            controller: _textController,
            maxLines: null,
          ),
          ButtonBar(
            children: <Widget>[
              MaterialButton(
                onPressed: () async {
                  _loadTextFromLocalFile();
                  _textController.text = _localFileContent;
                  _showSnackBar('String successfully loaded from local file.');
                  // Focus on text field (bring keyboard up).
                  FocusScope.of(context).requestFocus(textFieldFocusNode);
                },
                child: const Text('Load'),
              ),
              MaterialButton(
                onPressed: () async {
                  await _writeTextToLocalFile(_textController.text);
                  _textController.clear();
                  _showSnackBar('String successfully written to local file".');
                  await _loadTextFromLocalFile();
                },
                child: const Text('Save'),
              ),
            ],
          ),
          const Divider(height: 20.0),
          const Text('Local file path:'),
          Text(_localFilePath, style: Theme.of(context).textTheme.caption),
          const Divider(height: 20.0),
          const Text('Local file content:'),
          Text(
            _localFileContent,
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }

  Future<File> _getLocalFile() async {
    Directory directory =
        await path_provider.getApplicationDocumentsDirectory();
    return File('${directory.path}/$kLocalContact');
  }

  Future<File> _writeTextToLocalFile(String text) async {
    final file = await _getLocalFile();
    return file.writeAsString(text);
  }

  // Loads local file into this._localFileContent.
  Future<void> _loadTextFromLocalFile() async {
    String content;
    try {
      final file = await _getLocalFile();
      content = await file.readAsString();
    } catch (e) {
      content = 'Error loading local file: $e';
    }
    setState(() {
      _localFileContent = content;
    });
  }

  void _showSnackBar(String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
        duration: const Duration(milliseconds: 500),
      ),
    );
  }
}
