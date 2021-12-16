import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Student Homework Management App'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(100),
          child: Column(children: <Widget>[
            Text('Login As student 1',
                style: TextStyle(fontSize: 40, color: Colors.black)),
            Container(
              margin: EdgeInsets.all(50),
              child: RaisedButton(
                  color: Colors.red,
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TeacherDashboard()))
                      },
                  child: Text(
                    'As a teacher',
                    style: TextStyle(fontSize: 60, backgroundColor: Colors.red),
                  )),
            ),
            RaisedButton(
                color: Colors.blue,
                onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StudentDashboard()))
                    },
                child: Text(
                  'As a Student',
                  style: TextStyle(fontSize: 60, backgroundColor: Colors.blue),
                ))
          ]),
        ),
      ),
    );
  }
}

class TeacherDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('STUDENT HOMEWORK MANAGEMENT APP'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                IconButton(onPressed: () => {}, icon: Icon(Icons.table_chart)),
                RaisedButton(
                  color: Colors.red,
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TimeTable()))
                  },
                  child: Text('Timetable',
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(30),
            child: Row(
              children: <Widget>[
                IconButton(onPressed: () => {}, icon: Icon(Icons.grade)),
                RaisedButton(
                  color: Colors.amber,
                  onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StudentGrades()))
                  },
                  child: Text(
                    'Grades',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(30),
            child: Row(
              children: <Widget>[
                IconButton(onPressed: () => {}, icon: Icon(Icons.book)),
                RaisedButton(
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ExamSchedule()))
                  },
                  child: Text(
                    'Exams',
                    style: TextStyle(fontSize: 20, color: Colors.purple),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(30),
            child: Row(
              children: <Widget>[
                IconButton(
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Homework()))
                        },
                    icon: Icon(Icons.book)),
                RaisedButton(
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddHomework()))
                  },
                  child: Text(
                    'Homework',
                    style: TextStyle(fontSize: 20, color: Colors.pinkAccent),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(30),
            child: Row(
              children: <Widget>[
                IconButton(onPressed: () => {}, icon: Icon(Icons.note_add)),
                RaisedButton(
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Notes()))
                  },
                  child: Text(
                    'Notes',
                    style: TextStyle(fontSize: 20, color: Colors.orange),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class Homework extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('STUDENT HOMEWORK MANAGEMENT APP'),
        centerTitle: true,
      ),
      body: Container(
        child: RaisedButton(
            onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddHomework()))
                },
            child: Text('Add Homework')),
      ),
    );
  }
}

class Notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ExamSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('STUDENT HOMEWORK MANAGEMENT APP'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(
              'Exam Schedule',
              style: TextStyle(fontSize: 40, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}

class StudentGrades extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class TimeTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class StudentDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class AddHomework extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('STUDENT HOMEWORK MANAGEMENT APP'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(40),
        child: Container(
          margin: EdgeInsets.all(40),
          child: Column(
            children: <Widget>[
              Text("All the Homework uploads"),
              Text("Homework Title"),
              TextFormField(style: TextStyle(fontSize: 30)),
              Text("Homework Description"),
              TextFormField(style: TextStyle(fontSize: 30)),
              RaisedButton(onPressed: () => {}, child: Text("Upload")),
              RaisedButton(onPressed: () => {}, child: Text('Edit'))
            ],
          ),
        ),
      ),
    );
  }
}
