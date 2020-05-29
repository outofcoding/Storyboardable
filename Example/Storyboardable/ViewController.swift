//
//  ViewController.swift
//  Storyboardable
//
//  Created by outofcoding on 05/29/2020.
//  Copyright (c) 2020 outofcoding. All rights reserved.
//

import UIKit
import Storyboardable

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Use Enum Case
        
        // Get storyboard
        let storyboard = Main.storyboard
        print("storyboard = \(storyboard)")
        
        // Use storyboard initial ViewController
        let initial = Main.initial!
        present(initial, animated: true, completion: nil)
        
        // Use storyboard identifier ViewController
        let first = Main.first.get
        present(first, animated: true, completion: nil)
        
        // Direct push or present
        Main.test.present(self)
        Main.test.push(self)
        
        // Get Information
        let test = Main.test
        let name = test.name
        let identifier = test.identifier ?? "none"
        print("name = \(name), identifier = \(identifier)")

        // Use Builder

        let builder = StoryboardBuilder(name: "Main")
        let initController = builder.get("test")!
        present(initController, animated: true, completion: nil)

        let secondController = builder.get("second")!
        present(secondController, animated: true, completion: nil)
    }
}

enum Main : Storyboardable {
    case first
    case second
    case test
}
