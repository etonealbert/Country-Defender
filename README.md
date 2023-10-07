# Country Defender iOS

## FutureFrameworks
These are "frameworks" that should eventually be decoupled from the application, compiled as SPM packages, and loaded into the app that way. 

Until they're completed, I think it will be better for development speed to keep them in the project. Once they are feature complete I believe we should transfer to independent repos and load as packages. Packages have the benefit of reducing build times.

Country Defender specific code should be kept out of these frameworks. They are meant to be generic and customizable to any application. 

---
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

