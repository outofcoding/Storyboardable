//
//  StoryboardBuilder.swift
//  Pods-Storyboardable_Example
//
//  Created by DH on 2020/05/29.
//

import Foundation

open class StoryboardBuilder : Storyboardable {
    
    public var name: String
    public var identifier: String? = nil
    
    public init(name: String) {
        self.name = name
    }
    
    public func get(_ identifier: String) -> UIViewController? {
        self.identifier = identifier
        return get
    }
}
