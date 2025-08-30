// Importa el paquete de Flutter Material Design
import 'package:flutter/material.dart';

// Define la función principal que inicia la aplicación
void main() {
  // Ejecuta la aplicación con el widget MyApp
  runApp(const MyApp());
}

// Define la clase MyApp que extiende de StatelessWidget
class MyApp extends StatelessWidget {
  // Declara el constructor constante con una key opcional
  const MyApp({super.key});

  // Sobrescribe el método build que describe la interfaz de usuario
  @override
  Widget build(BuildContext context) {
    // Retorna un MaterialApp que configura la aplicación
    return MaterialApp(
      // Establece el título de la aplicación
      title: 'Flutter Demo',
      // Define la pantalla principal con un Scaffold
      home: Scaffold(
        // Crea una barra de aplicación en la parte superior
        appBar: AppBar(
          // Muestra un texto como título de la AppBar
          title: const Text("Mostrar imágenes"),
        ),
        // Define el cuerpo principal de la pantalla
        body: Center(
          // Organiza los widgets hijos en una columna vertical
          child: Column(
            // Lista de widgets hijos dentro de la columna
            children: [
              // Crea un contenedor con dimensiones específicas
              SizedBox(
                // Establece la altura del contenedor
                height: 250.0,
                // Establece el ancho del contenedor
                width: 450.0,
                // Muestra una imagen dentro del contenedor
                child: Image(
                  // Especifica la imagen desde los assets locales
                  image: AssetImage('assets_images/OIP.jpeg'),
                ),
              ),
              // Crea otro contenedor con dimensiones específicas
              SizedBox(
                // Establece la altura del segundo contenedor
                height: 250.0,
                // Establece el ancho del segundo contenedor
                width: 450.0,
                // Muestra una imagen desde una URL de internet
                child: Image.network(
                  // Especifica la URL de la imagen a cargar
                  'https://cdn.pixabay.com/photo/2021/11/26/20/45/lantern-6826691_1280.jpg',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
Esta aplicación Flutter demuestra cómo mostrar imágenes desde diferentes fuentes. 
Implementa una interfaz con una barra de título y un diseño centrado que muestra dos imágenes en una columna vertical: 
la primera carga una imagen local desde los assets de la aplicación, 
mientras que la segunda obtiene una imagen desde una URL de internet. 
El código utiliza widgets fundamentales de Flutter como:
MaterialApp, Scaffold, AppBar, Center, Column y SizedBox para crear una estructura organizada y visualmente coherente. 
Las imágenes se muestran con dimensiones fijas controladas por los contenedores SizedBox, 
lo que garantiza una visualización consistente en diferentes dispositivos.
*/ 