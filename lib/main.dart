import 'package:flutter/material.dart'; // ← import 放在最上面！

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '慢箋 Demo App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('📋 慢箋上傳 Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '📷 上傳你的處方照片',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print("模擬上傳處方");
              },
              child: const Text('選擇圖片'),
            ),
            const SizedBox(height: 30),
            const Text(
              '⬇ 偵測結果 ⬇',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('🧾 藥品：Amlodipine 5mg'),
            const Text('📅 用法：每日一次'),
            const Text('👨‍⚕️ 醫師：黃大明'),
          ],
        ),
      ),
    );
  }
}
