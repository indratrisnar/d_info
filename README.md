# D'Info

Flutter package for response info message. It's like bootstrap view but simple.

## Usage

<h3>1. Response Dialog</h3>

<img src="https://github.com/indratrisnar/d_info/raw/master/pic/d_info1.png" alt="d_info1" width="250">
<img src="https://github.com/indratrisnar/d_info/raw/master/pic/d_info2.png" alt="d_info2" width="250">
<img src="https://github.com/indratrisnar/d_info/raw/master/pic/d_info3.png" alt="d_info3" width="250">

Confirm
```dart
bool? yes = await DInfo.dialogConfirmation('Title','Content');
if (yes ?? false){
    // execute yes
}
```


```dart
DInfo.dialogSuccess('Payment Success');

DInfo.closeDialog(durationBeforeClose: const Duration(seconds: 1));
```
<hr>
<h3>2. Toast</h3>

<img src="https://github.com/indratrisnar/d_info/raw/master/pic/d_info4.png" alt="d_info4" width="250">
<img src="https://github.com/indratrisnar/d_info/raw/master/pic/d_info5.png" alt="d_info5" width="250">
<img src="https://github.com/indratrisnar/d_info/raw/master/pic/d_info6.png" alt="d_info6" width="250">

```dart
DInfo.toastError('Pick Color has Failed');

DInfo.closeToast();
```
<hr>
<h3>3. Snackbar</h3>

<img src="https://github.com/indratrisnar/d_info/raw/master/pic/d_info7.png" alt="d_info7" width="250">
<img src="https://github.com/indratrisnar/d_info/raw/master/pic/d_info8.png" alt="d_info8" width="250">
<img src="https://github.com/indratrisnar/d_info/raw/master/pic/d_info9.png" alt="d_info9" width="250">

```dart
DInfo.snackBarError('Input Failed');

DInfo.closeSnackBarOrNotif();
```
<hr>
<h3>4. Notif</h3>


<img src="https://github.com/indratrisnar/d_info/raw/master/pic/d_info10.png" alt="d_info10" width="250">
<img src="https://github.com/indratrisnar/d_info/raw/master/pic/d_info11.png" alt="d_info11" width="250">
<img src="https://github.com/indratrisnar/d_info/raw/master/pic/d_info12.png" alt="d_info12" width="250">

```dart
DInfo.notifError('Upload', "Fail upload image");
```

<hr>
<h2>Without GetX (GetMaterialApp)</h2>

<h3>SnackBar</h3>

```dart
DInfo.snackBar(context, 'Upload Success');
DInfo.snackBar(context, 'Upload Success', color: Colors.green);
DInfo.snackBar(context, 'Upload Success', duration: const Duration(seconds: 2));
```

<h3>Dialog</h3>

```dart
bool? yes = await DInfo.dialogConfirmation('Title','Content');
if (yes ?? false){
    // execute yes
}
```

# Tutorial :
Youtube: [Watch](https://www.youtube.com/watch?v=Mmidjtrp9DY)

Support me for more feature & packages
[Donate](https://www.paypal.com/paypalme/indratrisnar)

Check my app : [Visit](https://indratrisnar.github.io/projects.html)

Check My Tutorial & Course : [Watch](https://www.youtube.com/channel/UC0d_xINEvCtlDCpWfBpnYpA)