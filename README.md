# StoryboardEnum

[![CI Status](http://img.shields.io/travis/matteocrippa/StoryboardEnum.svg?style=flat)](https://travis-ci.org/matteocrippa/StoryboardEnum)
[![Version](https://img.shields.io/cocoapods/v/StoryboardEnum.svg?style=flat)](http://cocoapods.org/pods/StoryboardEnum)
[![License](https://img.shields.io/cocoapods/l/StoryboardEnum.svg?style=flat)](http://cocoapods.org/pods/StoryboardEnum)
[![Platform](https://img.shields.io/cocoapods/p/StoryboardEnum.svg?style=flat)](http://cocoapods.org/pods/StoryboardEnum)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Usage

First of all make sure that inside your `AppDelegate` func `didFinishLaunchingWithOptions` we have this snippet:

```swift
window = UIWindow(frame:UIScreen.mainScreen().bounds)
```

Then you have to create a new enum of type `StoryboardEnum`.

```swift
import StoryboardEnum

enum Storyboard: StoryboardEnum {

    case Main

    var story: StoryboardVC {
        return StoryboardVC(inWindow: UIApplication.sharedApplication().windows.first!)
    }

    var vc: UIViewController? {
        switch self {
            case Main:
            return story.getVC(fromStoryboard: "Main", withIdentifier: "Main")
        }
    }

}
```

Finally you have only to call wherever you want to present the view controller:

```swift
Storyboard.Name.show()
```

you can even show the vc embedded in a navigation using:

```swift
Storyboard.Name.show(inNavigation: true)
```


*IMPORTANT* If you plan to omit the `identifier` of the VC, please check that there is at least one VC set to be `Initial view controller` in your storyboard to avoid the app to crash.

## Extra

I've added a nice way to embed a VC in navigationController, using `embedInNavigation()` func you will received your navigation w/ the view inside.

## Installation

StoryboardEnum is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "StoryboardEnum"
```

## Author

Matteo Crippa, @ghego20

## License

StoryboardEnum is available under the MIT license. See the LICENSE file for more info.
