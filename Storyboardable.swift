protocol Storyboardable {
    var name: String { get }
    var identifier: String? { get }
}

extension Storyboardable {
    
    var name: String {
        return "\(type(of: self))"
    }
    
    var identifier: String? {
        return "\(self)"
    }
    
    var storyboard: UIStoryboard {
        return UIStoryboard(name: name, bundle: nil)
    }
    
    var get: UIViewController {
        guard let identifier = identifier else {
            return storyboard.instantiateInitialViewController()! // or crash of course.
        }
        
        return storyboard.instantiateViewController(withIdentifier: identifier)
    }
}
