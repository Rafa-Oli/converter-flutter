import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';

const request = 'https://api.hgbrasil.com/finance?key=c9ed277d';
void main() async {
  http.Response response = await http.get(
      request); // resposta e solitação para o servidor, na qual n retorna o dados na hr
  print(json.decode(response.body)["results"]["currencies"]["USD"]);

  runApp(MaterialApp(
    home: Container(),
  ));
}
