# Custom Font for your iOS mobile app.

## Problem.

As an iOS developer i know sometime we development an application without thinking about UI font. Just make it "work" first.
One day our customer change wanna apply an beautiful font and every thing messed up.
And another day our customer wanna change to another font and not sure it is "final".

## Solution.

- At first i'm create font transformer it will convert from system fonts to your custom font (keep font size and style but change family name)
- Second i'm create extensions for all UIViews that need to transform

```swift
open override func awakeFromNib() {
    self.font = self.font.transformToCustomFont()
}
```

very simple right?

## Getting Started

- Copy "CustomFont" folder and pasted it to your project.
- Use system fonts for your application as usual.
- Go to "FontExtensions" and change to your fonts family name. (currently i using HelveticaNeue fonts family name for demo).
- "UIViewExtensions" will automatically transform all system fonts in your app to your custom fonts.

## NOTE:

- If you currently not using system fonts for your application. Please register your fonts here:
```swift
    var fontType: FontType {
        switch fontName {
        case ".SFUIText-Light":
            return .light
        case ".SFUIText":
            return .regular
        case ".SFUIText-Medium":
            return .medium
        case ".SFUIText-Semibold":
            return .semibold
        case ".SFUIText-Bold":
            return .bold
        case ".SFUIText-Heavy":
            return .heavy
        case ".SFUIText-Italic":
            return .italic
        default:
            print("this font is not handled: \(fontName)" )
            return .none
        }
    }
```
if your fonts is not registed at this fuction it will not be changes so you can use any "special" font without worry about it will be changed.

- This demo i used HelveticaNeue fonts family that already added to iOS default fonts. So if you wanna use other fonts family please add this follow this tutorial
[How to import fonts to Xcode](https://medium.com/yay-its-erica/how-to-import-fonts-into-xcode-swift-3-f0de7e921ef8)

## Author
- If you have any questions about this project please feel free to contact me.
