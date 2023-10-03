import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';

class MainMenuScreen extends StatefulWidget {
  const MainMenuScreen({super.key});

  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen>
    with TickerProviderStateMixin {
  final ParticleOptions particleOptions = ParticleOptions(
    image: Image.asset('assets/icons/sparcle.png'),
    opacityChangeRate: 0.25,
    minOpacity: 0.4,
    maxOpacity: 1,
    spawnMinSpeed: 30.0,
    spawnMaxSpeed: 40.0,
    spawnMinRadius: 6.0,
    spawnMaxRadius: 16.0,
    particleCount: 26,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: Container(
        padding: const EdgeInsets.only(top: 12),
        width: 100,
        height: 40,
        child: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColorLight,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            'Log in',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ),
      body: AnimatedBackground(
        behaviour: RandomParticleBehaviour(
          options: particleOptions,
        ),
        vsync: this,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(260, 60),
                ),
                child: Text('Start',
                    style: Theme.of(context).textTheme.titleLarge),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(260, 60),
                ),
                child: Text('Settings',
                    style: Theme.of(context).textTheme.titleLarge),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
