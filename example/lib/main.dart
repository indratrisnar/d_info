import 'package:d_info/d_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("D'Info")),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const ListTile(title: Text('Dialog')),
          ElevatedButton(
            onPressed: () {
              DInfo.dialogSuccess(context, 'Payment Success');
              DInfo.closeDialog(context,
                  durationBeforeClose: const Duration(seconds: 1));
            },
            child: const Text('Success'),
          ),
          ElevatedButton(
            onPressed: () async {
              bool? isYes = await DInfo.dialogConfirmation(
                context,
                'Logout?',
                'You sure logout from this account?',
              );
              if (isYes ?? false) {
                // print('user click yes');
              } else {
                // print('user click no');
              }
            },
            child: const Text('Confirmation'),
          ),
          const Divider(),
          const ListTile(title: Text('Toast')),
          ElevatedButton(
            onPressed: () {
              DInfo.toastError('Pick Color has Failed');
            },
            child: const Text('Error'),
          ),
          ElevatedButton(
            onPressed: () {
              DInfo.toastSuccess('Login Success');
            },
            child: const Text('Success'),
          ),
          ElevatedButton(
            onPressed: () {
              DInfo.toastNetral('Add to Cart');
            },
            child: const Text('Netral'),
          ),
          ElevatedButton(
            onPressed: () {
              DInfo.closeToast();
            },
            child: const Text('Close Toast'),
          ),
          const Divider(),
          const ListTile(title: Text('Notif')),
          ElevatedButton(
            onPressed: () {
              DInfo.notifError('Upload', "Fail upload image");
            },
            child: const Text('Error'),
          ),
          ElevatedButton(
            onPressed: () {
              DInfo.notifSuccess('Upload', "Success upload image");
            },
            child: const Text('Success'),
          ),
          ElevatedButton(
            onPressed: () {
              DInfo.notifNetral('Task', "You add new task");
            },
            child: const Text('Netral'),
          ),
          ElevatedButton(
            onPressed: () {
              DInfo.closeNotif();
            },
            child: const Text('Close Notif'),
          ),
          const SizedBox(height: 60),
        ],
      ),
    );
  }
}
