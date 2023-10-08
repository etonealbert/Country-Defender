
# Country Defender iOS

![App icon](images/app_icon.png)

## Description
Defend a country at the center of your screen from invaders in pickups. Swiftly tap on these vehicles to detonate them before they reach the country's borders. If they do, parts of the nation vanish. As levels progress, the pickups increase in speed and numbers. Test your reflexes and strategy in this fast-paced mobile game.

## Frameworks & Technologies Used

- UIKit
- Core Graphics
- SpriteKit
- Core Animation
- MVVM Architecture

## Getting Started

1. **Setup**: Ensure you have Xcode installed and updated to the latest version.
2. **Clone the repository**: `git clone [https://github.com/etonealbert/Country-Defender.git]`
3. **Open the project**: Navigate to the project directory and open the `.xcodeproj` or `.xcworkspace` file.
4. **Install necessary dependencies**: If the project uses CocoaPods or any other dependency manager, follow the instructions to install them.
5. **Run the app**: Select your preferred simulator or device and press the run button.

## Contributing

If you find any bugs or have suggestions for improvements, please open an issue or submit a pull request. Contributions are welcome!

## License
This project is licensed under the [MIT License](LICENSE.md).

## Testing:
Unit and UI tests should be written as part of tickets. Consideration of testing while programming can help lead to a cleaner and more intentional codebase. We should do our best to maintain a minimum 80% code coverage.

### UI testing resources:
1. [Intro to UI testing](https://swiftwithmajid.com/2021/03/18/ui-testing-in-swift-with-xctest-framework/)
2. [Explanation of the page-object pattern for UI testing](https://swiftwithmajid.com/2021/03/24/ui-testing-using-page-object-pattern-in-swift/)

---
## SwiftLint:
SwiftLint will help maintain a consistent style across the codebase. Some of the default rules are a bit *too* opinionated for my tastes, so I'll be removing those, and am open to talking about other rules we think are over the top.

- The rules for this project are located at `/.swiftlint.yml`
- Rule documentation can be found [here](https://realm.github.io/SwiftLint/rule-directory.html).

### Setup:
1. If you have homebrew setup, SwiftLint can be easily installed in the terminal by running `brew install swiftlint`
2. SwiftLint is already configured within the project. 
3. More information around SwiftLint can be found on its [GitHub](https://github.com/realm/SwiftLint). 

---
## Navigation and Coordinator Pattern

- Hacking With Swift: Coordinators Intro - https://www.youtube.com/watch?v=7HgbcTqxoN4
- Hacking With Swift: Advanced Coordinator Techniques - https://www.youtube.com/watch?v=ueByb0MBMQ4

