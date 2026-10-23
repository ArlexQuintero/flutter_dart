import 'package:flutter/material.dart';

void main() {
  runApp(const MiHojaDeVidaApp());
}

class MiHojaDeVidaApp extends StatelessWidget {
  const MiHojaDeVidaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hoja de Vida',
      home: HojaDeVidaScreen(),
    );
  }
}

class HojaDeVidaScreen extends StatelessWidget {
  const HojaDeVidaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // =========================================================================
    // ✏️ SECCIÓN DE TUS DATOS (MODIFICA AQUÍ TUS DATOS)
    // =========================================================================

    // 1. DATOS PERSONALES
    const String miNombre = 'Petro';
    const String miProfesion = 'Desarrollador de Software';
    const String miTelefono = '+57 333 516 4486';
    const String miCorreo = 'arlex.ejemplo@aaaaaa.com';
    const String miUbicacion = 'Medellín, Colombia';
    const String miPerfil =
        'Profesional entusiasta con experiencia en desarrollo de aplicaciones '
        'móviles y desarrollo web. Capacidad de aprendizaje rápido, trabajo en '
        'equipo y enfoque en la solución de problemas mediante tecnología.';

    // 2. FORMACIÓN ACADÉMICA / ESTUDIOS
    final List<Map<String, String>> misEstudios = [
      {
        'titulo': 'Ingeniería de Sistemas',
        'institucion': 'Universidad Autonoma de Occidente',
        'periodo': '2026 - 2029',
      },
      {
        'titulo': 'Tecnico en Desarrollo de Software',
        'institucion': 'Instituto Tecnológico del Quindio',
        'periodo': '2022 - 2023',
      },
    ];

    // 3. EXPERIENCIA LABORAL
    final List<Map<String, String>> misExperiencias = [
      {
        'cargo': 'Desarrollador Móvil Junior',
        'empresa': 'Inforgames Interactive S.A.S.',
        'periodo': '2023 - Presente',
        'descripcion':
            'Desarrollo y mantenimiento de aplicaciones móviles en Flutter, consumo de APIs REST y trabajo con metodologías ágiles.',
      },
      {
        'cargo': 'Practicante de Sistemas',
        'empresa': 'Global technologies solutions S.A.S',
        'periodo': '2022 - 2023',
        'descripcion':
            'Soporte técnico a usuarios, pruebas de software (QA) y apoyo en la documentación de proyectos.',
      },
    ];
 

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Hoja de Vida'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12.0),
        children: [
          // CARD 1: DATOS PERSONALES
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Icon(Icons.person, size: 70),
                  const SizedBox(height: 8),
                  Text(
                    miNombre,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(miProfesion),
                  const Divider(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Teléfono: $miTelefono'),
                        Text('Correo: $miCorreo'),
                        Text('Ubicación: $miUbicacion'),
                        const SizedBox(height: 8),
                        const Text(
                          'Perfil:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(miPerfil),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // CARD 2: INFORMACIÓN DE ESTUDIO
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Educación y Estudios',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(),
                  for (var estudio in misEstudios) ...[
                    Text(
                      estudio['titulo'] ?? '',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(estudio['institucion'] ?? ''),
                    Text(estudio['periodo'] ?? ''),
                    const SizedBox(height: 10),
                  ],
                ],
              ),
            ),
          ),

          // CARD 3: EXPERIENCIA LABORAL
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Experiencia Laboral',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(),
                  for (var exp in misExperiencias) ...[
                    Text(
                      exp['cargo'] ?? '',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('${exp['empresa']} (${exp['periodo']})'),
                    Text(exp['descripcion'] ?? ''),
                    const SizedBox(height: 10),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
