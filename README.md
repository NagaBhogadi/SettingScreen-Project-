# Settings Screen App

Settings Screen App is an iOS application built using Swift and UIKit.
The app displays a settings-style screen similar to the iPhone Settings app using `UITableView`.

## Features

* Displays settings options in a table view
* Supports multiple sections
* Shows title, icon, and arrow indicator
* Uses custom model for settings data
* Uses SF Symbols for icons
* Uses custom colors for icons
* Built using MVC architecture
* Storyboard-based UI implementation

## Technologies Used

* Swift
* UIKit
* Xcode
* UITableView
* UITableViewCell
* SF Symbols
* MVC Architecture
* Storyboard

## Screens

### Settings Screen

The Settings screen displays different settings options in sections.

Example options:

* About
* Screen Capture
* AutoFill & Passwords
* Dictionary
* Fonts
* Keyboard
* Language & Region
* VPN & Device Management

## Project Structure

```text
SettingsScreenApp
│
├── Model
│   └── ModelSettings.swift
│
├── View
│   └── SettingsTableViewCell.swift
│
├── Controller
│   └── ViewController.swift
│
├── Assets
│
└── README.md
```

## Settings Model

```swift
struct ModelSettings {
    let title: String
    let icon: String
    let color: UIColor
}
```

## TableView Sections

The app uses multiple arrays to show settings in different sections.

```swift
let section1 = [
    ModelSettings(title: "About", icon: "info.circle", color: .systemGray),
    ModelSettings(title: "Screen Capture", icon: "camera", color: .systemGray)
]

let section2 = [
    ModelSettings(title: "AutoFill & Passwords", icon: "key.fill", color: .systemGray),
    ModelSettings(title: "Dictionary", icon: "book.fill", color: .systemBlue),
    ModelSettings(title: "Fonts", icon: "textformat", color: .systemGray),
    ModelSettings(title: "Keyboard", icon: "keyboard", color: .systemGray),
    ModelSettings(title: "Language & Region", icon: "globe", color: .systemBlue)
]

let section3 = [
    ModelSettings(title: "VPN & Device Management", icon: "gearshape", color: .systemGray)
]
```

## App Flow

```text
Launch App
    ↓
Load Settings Screen
    ↓
Display Settings Sections
    ↓
User taps any setting row
```

## How to Run

1. Open the project in Xcode
2. Select an iPhone Simulator
3. Press `Command + R`
4. The app will display the Settings screen

## Learning Concepts

This project helps to understand:

* How to create a settings screen
* How to use `UITableView`
* How to create multiple sections
* How to use custom model data
* How to display SF Symbol icons
* How to follow MVC architecture

## Author

Created by Rajitha
