import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


//pagina principal - login
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Connect Song';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(appTitle),
          
        ),
        body: const LoginForm(),
      ),
    );
  }
}

// Create a Form widget.
class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(margin: const EdgeInsets.only(
              left:30.0, top:20.0,right:30.0,bottom:20.0
            ),
            child: RichText(text: const TextSpan(
              text: 'Iniciar sesión',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black
              )
            ))
            ),
            TextFormField(
              //Decorator
              decoration: const InputDecoration(
                labelText: 'Ingrese su usuario'
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            TextFormField(
              //password
              obscureText: true,
              //Decorator
              decoration: const InputDecoration(
                labelText: 'Ingrese su clave'
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WelcomePage()),
                    );
                  }
                },
                child: const Text('Iniciar sesión'),
              ),
            ),
            GestureDetector(
              child: const Text("Regístrate", style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RegisterPage()),
                    );
              }
            )
          ],
        ),
      )
      );
  }
}


class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Connect Song"),
      ),
      body: const RegisterForm()
      );
  }
}

// Create a Form widget.
class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  RegisterFormState createState() {
    return RegisterFormState();
  }
}

class RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(margin: const EdgeInsets.only(
              left:30.0, top:20.0,right:30.0,bottom:20.0
            ),
            child: RichText(text: const TextSpan(
              text: 'Regístrate',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black
              )
            ))
            ),
            TextFormField(
              //Decorator
              decoration: const InputDecoration(
                labelText: 'Ingrese su nombre'
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            TextFormField(
              //password
              obscureText: true,
              //Decorator
              decoration: const InputDecoration(
                labelText: 'Ingrese su correo electrónico'
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            TextFormField(
              //password
              obscureText: true,
              //Decorator
              decoration: const InputDecoration(
                labelText: 'Ingrese su clave'
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            TextFormField(
              //password
              obscureText: true,
              //Decorator
              decoration: const InputDecoration(
                labelText: 'Repetir clave'
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Procesando información')),
                    );
                  }
                },
                child: const Text('Regístrarme'),
              ),
            )
          ],
        ),
      )
      );
  }
}


class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Connect Song"),
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const FeedEstadosPage()),
                    );                  
                },
                child: const Text('Feed de estados'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const FeedUsuariosPage()),
                    );                  
                },
                child: const Text('Feed de contenidos (Usuarios)'),
              ),
            ),
           Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TopArtistsPage()),
                    );                  
                },
                child: const Text('Top artistas'),
              ),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ChatPage()),
                    );                  
                },
                child: const Text('Chat'),
              ),
            ),
           Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MusicTrendsPage()),
                    );                  
                },
                child: const Text('Tendencias musicales'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SettingsPage()),
                    );                  
                },
                child: const Text('Preferencias'),
              ),
            ),
           
        ]));
  }
}

class FeedEstadosPage extends StatelessWidget {
  const FeedEstadosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Connect Song';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(appTitle),
          
        ),
        body: Column(
          children: [
            Container(margin: const EdgeInsets.only(
              left:30.0, top:20.0,right:30.0,bottom:20.0
            ),
            child: RichText(text: const TextSpan(
              text: 'Feed de Estados',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black
              )
            ))
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WelcomePage()),
                    );                  
                },
                child: const Text('Volver al inicio'),
              ),
            )
          ],
        ),
    ));
  }
}

class FeedUsuariosPage extends StatelessWidget {
  const FeedUsuariosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Connect Song';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(appTitle),
          
        ),
        body: Column(
          children: [
            Container(margin: const EdgeInsets.only(
              left:30.0, top:20.0,right:30.0,bottom:20.0
            ),
            child: RichText(text: const TextSpan(
              text: 'Feed de Usuarios',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black
              )
            ))
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WelcomePage()),
                    );                  
                },
                child: const Text('Volver al inicio'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TopArtistsPage extends StatelessWidget {
  const TopArtistsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Connect Song';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(appTitle),
          
        ),
        body: Column(
          children: [
            Container(margin: const EdgeInsets.only(
              left:30.0, top:20.0,right:30.0,bottom:20.0
            ),
            child: RichText(text: const TextSpan(
              text: 'Top de Artistas',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black
              )
            ))
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WelcomePage()),
                    );                  
                },
                child: const Text('Volver al inicio'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Connect Song';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(appTitle),
          
        ),
        body: Column(
          children: [
            Container(margin: const EdgeInsets.only(
              left:30.0, top:20.0,right:30.0,bottom:20.0
            ),
            child: RichText(text: const TextSpan(
              text: 'Chat',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black
              )
            ))
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WelcomePage()),
                    );                  
                },
                child: const Text('Volver al inicio'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MusicTrendsPage extends StatelessWidget {
  const MusicTrendsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Connect Song';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(appTitle),
          
        ),
        body: Column(
          children: [
            Container(margin: const EdgeInsets.only(
              left:30.0, top:20.0,right:30.0,bottom:20.0
            ),
            child: RichText(text: const TextSpan(
              text: 'Tendencias musicales',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black
              )
            ))
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WelcomePage()),
                    );                  
                },
                child: const Text('Volver al inicio'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Connect Song';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(appTitle),
          
        ),
        body: Column(
          children: [
            Container(margin: const EdgeInsets.only(
              left:30.0, top:20.0,right:30.0,bottom:20.0
            ),
            child: RichText(text: const TextSpan(
              text: 'Preferencias',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black
              )
            ))
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WelcomePage()),
                    );                  
                },
                child: const Text('Volver al inicio'),
              ),
            )
          ],
        ),
      ),
    );
  }
}


