
![header](https://capsule-render.vercel.app/api?&fontColor=4b3621&animation=fadeIn&type=waving&height=300&color=cbb199&text=SSLog&fontSize=70&fontAlignY=40&desc=SSLog%20is%20Simple%20Swift%20Log%20library.)



[![Version](https://img.shields.io/cocoapods/v/SSLog.svg?style=flat)](https://cocoapods.org/pods/SSLog)

<img src="https://img.shields.io/badge/Swift-FA7343?style=flat-square&logo=Swift&logoColor=white"/></a>
<img src="https://img.shields.io/badge/Xcode-147EFB?style=flat-square&logo=Xcode&logoColor=white"/></a>
<img src="https://img.shields.io/badge/CocoaPods-EE3322?style=flat-square&logo=CocoaPods&logoColor=white"/></a>

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

SSLog is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SSLog'
```

## How to use

### type
SSLog has a total of 5 types to make it easier to distinguish between logs.
- `error` : "📕Error"
- `warning` : "📙Warning"
- `action` : "📗Action"
- `success` : "📘Success"
- `cancelled` : "📓Cancelled"

These types can be used to classify logs according to their intended use and search Xocode for easy and easy to find.

        SSLog.simple(.success, "this Log is SSLog.type success.\n")


### method
SSLog provides three methods for easy and easy logging.
- `simple`

    This is the simplest method for log output that represents only one of the five log types introduced above and the message to be outputted.

        SSLog.simple(.success, "this Log is SSLog.simple method.\n")

- `basic`

    In addition to the log type and messages, the name, method name, line, and so on of the file to which the method was called is added.

        SSLog.basic(.action, "this Log is SSLog.basic method.\n")
- `detail`

    detail has Date, fileUrl, fileName, function, line, A method that helps dsohandle output the most detailed log.

        SSLog.detail(.warning, "this Log is SSLog.detail method.\n")


## Author

48409434, dortus47@naver.com

## License

SSLog is available under the MIT license. See the LICENSE file for more info.
