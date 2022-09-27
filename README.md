# D'Info

Flutter package for response info message. It's like bootstrap view but simple.

#Important Start From Version 0.2.0

This package there are 2 type how to use:
1. With GetX (GetMaterialApp) inside main
   - No need context
   > Notif
2. Without GetX (MaterialApp) inside main
   - Need context
   - Only for toast no need context
   > SnackBar
   > Dialog
   > Toast (Android, IOS)

## Screenshot

<img src="https://github.com/indratrisnar/d_info/raw/master/pic/d_info1.png" alt="d_info1" width="250">
<img src="https://github.com/indratrisnar/d_info/raw/master/pic/d_info2.png" alt="d_info2" width="250">
<img src="https://github.com/indratrisnar/d_info/raw/master/pic/d_info3.png" alt="d_info3" width="250">

<img src="https://github.com/indratrisnar/d_info/raw/master/pic/d_info7.png" alt="d_info7" width="250">
<img src="https://github.com/indratrisnar/d_info/raw/master/pic/d_info8.png" alt="d_info8" width="250">
<img src="https://github.com/indratrisnar/d_info/raw/master/pic/d_info9.png" alt="d_info9" width="250">

<img src="https://github.com/indratrisnar/d_info/raw/master/pic/d_info10.png" alt="d_info10" width="250">
<img src="https://github.com/indratrisnar/d_info/raw/master/pic/d_info11.png" alt="d_info11" width="250">
<img src="https://github.com/indratrisnar/d_info/raw/master/pic/d_info12.png" alt="d_info12" width="250">

<img src="https://github.com/indratrisnar/d_info/raw/master/pic/d_info4.png" alt="d_info4" width="250">
<img src="https://github.com/indratrisnar/d_info/raw/master/pic/d_info5.png" alt="d_info5" width="250">
<img src="https://github.com/indratrisnar/d_info/raw/master/pic/d_info6.png" alt="d_info6" width="250">

## Usage

<h2>With GetX (GetMaterialApp)</h2>

<h3>Notif</h3>

```dart
DInfo.notifError('Upload', "Fail upload image");
```

<hr>
<h2>Without GetX (MaterialApp)</h2>

<h3>SnackBar</h3>

```dart
DInfo.snackBarError(context, 'Upload Failed');
DInfo.snackBarSuccess(context, 'Upload Success');
DInfo.snackBarNetral(context, 'Add to Cart');
DInfo.snackBarCustom(context, 'Upload Success');
DInfo.snackBarCustom(context, 'Upload Success', color: Colors.green);
DInfo.snackBarCustom(context, 'Upload Success', duration: const Duration(seconds: 2));
DInfo.closeSnackBar(context);
```

<h3>Dialog</h3>

```dart
bool? yes = await DInfo.dialogConfirmation(context,'Title','Content');
if (yes ?? false){
    // execute yes
}

DInfo.dialogError(context, 'Sorry, you have no access');
DInfo.dialogSuccess(context, 'Download Success');
DInfo.dialogNetral(context, 'Add to Cart');
DInfo.closeDialog(context);
```

<h3>Toast</h3>

```dart
DInfo.toastError('Pick Color has Failed');

DInfo.closeToast();
```
<hr>

# Tutorial :
Youtube: [Watch](https://www.youtube.com/watch?v=Mmidjtrp9DY)

Support me for more feature & packages
[Donate](https://www.paypal.com/paypalme/indratrisnar)

Check my app : [Visit](https://indratrisnar.github.io/projects.html)

Check My Tutorial & Course : [Watch](https://www.youtube.com/channel/UC0d_xINEvCtlDCpWfBpnYpA)