# Storyboardable
storyboard를 불러올때 조금 더 정돈이 되어 있도록...

# Use.
extension UIStorybaord and inner enum. this is namespace
```
extension UIStoryboard {
    enum Main : Storyboardable {
        case second
        case test
    }
}
```

# UIViewController in code
```
let viewController = UIStoryboard.Main.test.get()
```
