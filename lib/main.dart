import 'package:flutter/material.dart';

void main() {
  runApp(const TunnelApp());
}

class TunnelApp extends StatelessWidget {
  const TunnelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TUNNEL',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF35C98A),
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: const Color(0xFF101820),
        useMaterial3: true,
      ),
      home: const TunnelHomePage(),
    );
  }
}

class TunnelHomePage extends StatelessWidget {
  const TunnelHomePage({super.key});

  void _showSetupMessage(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'VPN neconfigurat. Adaugă un profil VPN autorizat pentru a activa conexiunea.',
        ),
        duration: Duration(seconds: 4),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 440),
            child: Padding(
              padding: const EdgeInsets.all(28),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 88,
                    height: 88,
                    decoration: BoxDecoration(
                      color: const Color(0xFF35C98A).withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(26),
                    ),
                    child: const Icon(
                      Icons.vpn_lock_rounded,
                      size: 48,
                      color: Color(0xFF35C98A),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'TUNNEL',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 4,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Conexiune VPN',
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.65),
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 48),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 20,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1B2933),
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Colors.white12),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.circle, color: Colors.orange, size: 12),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            'VPN neconfigurat',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Text(
                          'OFFLINE',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    height: 58,
                    child: FilledButton.icon(
                      onPressed: () => _showSetupMessage(context),
                      icon: const Icon(Icons.power_settings_new),
                      label: const Text(
                        'CONNECT',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                      ),
                      style: FilledButton.styleFrom(
                        backgroundColor: const Color(0xFF287A5B),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Aplicație pregătită pentru configurarea unui VPN '
                    'către un server pe care ai dreptul să îl utilizezi.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.55),
                      fontSize: 13,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 36),
                  const Text(
                    'TUNNEL • v1.0.0',
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 11,
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
