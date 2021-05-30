# APK Installer

## Why
When dealing with multiple applications and various builds you often need to install `apk` files several times per day. Transfering `apk` files with Android File Transfer and later uninstalling the old application versions and installing the uploaded `apk` files might take a lot of time.

This tool helps you install `apk` files faster by just selecting the desired files and pressing `APK Installer` icon.

## Features
- Automatically gets the selected files within `Finder`.
- Automatically recognising the package from `apk` file, e.g. `com.example.myapp`, and uninstalling previously installed application from multiple Androind devices.
- Automatically installs the selected `apk` files to multiple connected Android devices.
- Notifies when the automatic uninstalling and installing completes.

## Prerequisites
1. Enable developer mode on your Android device and enable USB debigging.
2. Connect your Android device to your MacBook and select `Allow` when `Allow USB debugging?` pop-up appears on the Adnroid device. (Hint: select `Always allow from this computer`, so you don't have to deal with it every time)
3. Install Android Plafform Tools
```bash
 brew install android-platform-tools
```
5. Install [aapt2](https://developer.android.com/studio/command-line/aapt2) add it to `PATH` variable

## Installing 
1. Download `APK Installer.app` file and drag it to your Application folder
2. Drag and drop it Finder toolbar
<img width="259" alt="Add to toolbar mac OS" src="https://user-images.githubusercontent.com/1680908/120107324-52cfa980-c169-11eb-8351-a057de9b886f.png">

## Usage
1. Connect Android devices to which the `apk` files will be installed.
2. Select one or more `apk` files and press the `APK Installer` icon in Finder.
3. Enjoy 🙂


