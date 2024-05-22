import 'package:flutter/material.dart';
import 'package:flutter_app/repository/api.dart';


class BaseProvider extends ChangeNotifier{
   final bookApi = BookApi();
}