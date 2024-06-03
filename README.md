#ActionClosurable

ActionClosurable - allow you to add target to UIControl and etc without using @objc methods.
It opens hole new world to protocoled dedicated implementations of UI.
Look Demo for more info and self configurable vc example.


Simple example:

```swift

    var somePlainButton: UIBarButtonItem {
        UIBarButtonItem(title: "somePlain", style: .plain) { _ in
            print("Tapped")
        }
    }
    
        private var tapGesture: UITapGestureRecognizer {
        UITapGestureRecognizer { _ in
            print("Tapped")
        }
    }

```

