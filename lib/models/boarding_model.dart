import 'package:equatable/equatable.dart';

class BoardingModel extends Equatable{
  final String? image;
  final String? title;
  final String? body;

  BoardingModel({this.image, this.title, this.body});


  @override
  List<Object?> get props => [image,title,body];
}

List<BoardingModel> boardingList=[
  BoardingModel(image: 'assets/splash_1.png',title: 'On Boarding Title 1',body: 'On Boarding Body 1'),
  BoardingModel(image: 'assets/splash_2.png',title: 'On Boarding Title 2',body: 'On Boarding Body 2'),
  BoardingModel(image: 'assets/splash_3.png',title: 'On Boarding Title 3',body: 'On Boarding Body 3'),

];