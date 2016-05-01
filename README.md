# LoremIpsum-iOS

[![CI Status](http://img.shields.io/travis/Martin Jeffers/LoremIpsum-iOS.svg?style=flat)](https://travis-ci.org/Martin Jeffers/LoremIpsum-iOS)
[![Version](https://img.shields.io/cocoapods/v/LoremIpsum-iOS.svg?style=flat)](http://cocoapods.org/pods/LoremIpsum-iOS)
[![License](https://img.shields.io/cocoapods/l/LoremIpsum-iOS.svg?style=flat)](http://cocoapods.org/pods/LoremIpsum-iOS)
[![Platform](https://img.shields.io/cocoapods/p/LoremIpsum-iOS.svg?style=flat)](http://cocoapods.org/pods/LoremIpsum-iOS)

## Description

LoremIpsum-iOS is a simple text generator that I found helpful in the development of iOS apps to test the correct resizing of my views. 

## Examples

Returns the title "Lorem Ipsum.
```ObjC
[LoremIpsum generateTextForType:Title];
```

Returns a paragraph of Lorem Ipsum
```ObjC
[LoremIpsum generateTextForType:Paragraph];
```

Returns a random length text of random words contained in Lorem Ipsum
```ObjC
[LoremIpsum generateTextForType:Words];
```

Returns a set number of paragraphs
```ObjC
[LoremIpsum generateParagraphsWithLength:2];
```

Returns a set number of random words
```ObjC
[LoremIpsum generateRandomWordsWithLength:10];
```


## Installation

LoremIpsum-iOS is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "LoremIpsum-iOS"
```

## Author

Martin Jeffers, martin.jeffers1@gmail.com

## License

LoremIpsum-iOS is available under the MIT license. See the LICENSE file for more info.

