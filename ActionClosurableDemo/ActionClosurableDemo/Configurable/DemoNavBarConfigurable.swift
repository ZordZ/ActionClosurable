//
//  Module: ActionClosurableDemo
//  Created by: MrTrent on 03.06.2024
//  Copyright (c) 2024 Zordz Union
//  


import ActionClosurable
import UIKit

protocol DemoNavBarConfigurable {
    func configureNavBarItems()
}

extension DemoNavBarConfigurable where Self: UIViewController {
    func configureNavBarItems() {
        navigationItem.setRightBarButton(somePlainButton, animated: false)
        navigationItem.setLeftBarButton(printButton, animated: false)
    }
}

private extension DemoNavBarConfigurable {
    var somePlainButton: UIBarButtonItem {
        UIBarButtonItem(title: "somePlain", style: .plain) { btn in
            btn.title = "tapped"
        }
    }
    
    var printButton: UIBarButtonItem {
        UIBarButtonItem(title: "print", style: .plain) { _ in
            self.printHello()
        }
    }
    
    func printHello() {
        print("Hello world")
    }
}
