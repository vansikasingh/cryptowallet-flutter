# Crypto Wallet

Crypto Wallet is a full stack Flutter application developed and designed by Vansika Singh. 

This app is a cryptocurrency wallet app. The user will be able to keep track of how much currency they have, convert it to US dollars, and remove coins from the wallet.

### Existing Features

1. User Login and Authentication using Firebase. 
2. Shows User a list of amount of the currency they have in their wallet.
3. Allows User to add and delete coins from the wallet.
4. Converts the coins into US dollars and displays the actual amount of currency the user has in thier wallet.
5. Fetches data from open source APIs provided by coingeco.com. 


## Android Screenshots 

  HomePage           |   Add money page | Crpto wallet display Page 
:-------------------------:|:-------------------------: |:-------------------------:
![](https://user-images.githubusercontent.com/71205815/130982252-a18af86c-d49a-44b6-9e52-5e59adafcbad.jpeg)|![](https://user-images.githubusercontent.com/71205815/130982257-75b6f3b4-9a14-4a7e-b7e5-0c5dcd35bd5c.jpeg) |![](https://user-images.githubusercontent.com/71205815/130982852-3e7bf32d-47d8-430d-bdea-26d6a8fb9dec.jpeg) 

## Firebase Screenshot

![](https://user-images.githubusercontent.com/71205815/130983331-eb7c2208-6118-4ffc-b58b-bc111b74d22a.png)

## Directory Structure
```
lib
│-- main.dart    
└───|
    └───model
    |    │──coin.dart
    └────net
    |     │──api_methods.dart
    |     └──flutterfire.dart 
    └────UI
          │──add_view.dart
          |──authentication.dart
          │──home_view.dart
```
## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
