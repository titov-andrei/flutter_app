import 'package:flutter/material.dart';
import 'domain/workout.dart';

void main() => runApp(MaxFitApp());

class MaxFitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Max Fitness',
        theme: ThemeData(
            primaryColor: Color.fromRGBO(50, 65, 85, 1),
            textTheme: TextTheme(title: TextStyle(color: Colors.white))),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          title: Text('MaxFit'),
          leading: Icon(Icons.fitness_center),
        ),
        body: WorkoutsList(),
      ),
    );
  }
}

class WorkoutsList extends StatelessWidget {
  final workouts = <Workout>[
    Workout(
        title: 'Test1',
        author: 'Max1',
        description: 'Test Workout1',
        level: 'Beginner'),
    Workout(
        title: 'Test2',
        author: 'Max2',
        description: 'Test Workout2',
        level: 'Intermediate'),
    Workout(
        title: 'Test3',
        author: 'Max3',
        description: 'Test Workout3',
        level: 'Advanced'),
    Workout(
        title: 'Test4',
        author: 'Max4',
        description: 'Test Workout4',
        level: 'Beginner'),
    Workout(
        title: 'Test5',
        author: 'Max5',
        description: 'Test Workout5',
        level: 'Intermediate'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: ListView.builder(
            itemCount: workouts.length,
            itemBuilder: (context, i) {
              return Card(
                elevation: 2.0,
                margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Container(
                  decoration: BoxDecoration(color: Color.fromRGBO(50, 65, 85, 0.9)),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    leading: Container(
                      padding: EdgeInsets.only(right: 12),
                      child: Icon(Icons.fitness_center, color: Theme.of(context).textTheme.title.color),
                      decoration: BoxDecoration(
                        border: Border(right: BorderSide(width: 1, color: Colors.white24))
                      ),
                    ),
                    title: Text(workouts[i].title, style: TextStyle(color: Theme.of(context).textTheme.title.color, fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.keyboard_arrow_right, color: Theme.of(context).textTheme.title.color),
                    subtitle: subtitle(context, workouts[i]),
                  ),
                ),
              );
            }),
      ),
    );
  }
}

Widget subtitle(BuildContext context, Workout workout){
  
}
