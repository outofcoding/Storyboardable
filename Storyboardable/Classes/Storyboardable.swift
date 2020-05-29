//
//  StoryboardBuilder.swift
//  Pods-Storyboardable_Example
//
//  Created by DH on 2020/05/29.
//

import Foundation

public protocol Storyboardable {
    var name: String { get }
    var identifier: String? { get }
}

extension Storyboardable {
    
    public static var initial: UIViewController? {
        return storyboard.instantiateInitialViewController()
    }
    
    public static var storyboard: UIStoryboard {
        return UIStoryboard(name: "\(self)", bundle: nil)
    }
}

extension Storyboardable {
    
    public var name: String {
        return "\(type(of: self))"
    }
    
    public var identifier: String? {
        return "\(self)"
    }
    
    public var get: UIViewController {
        let storyboard = UIStoryboard(name: name, bundle: nil)
        
        guard let identifier = identifier else {
            return Self.storyboard.instantiateInitialViewController()!
        }
        
        return storyboard.instantiateViewController(withIdentifier: identifier)
    }
    
    public func push(_ target: UIViewController, animated: Bool = true) {
        target.navigationController?.pushViewController(get, animated: animated)
    }
    
    public func present(_ target: UIViewController, animated: Bool = true) {
        target.present(get, animated: animated)
    }
}
