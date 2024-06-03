//
//  Module: ActionClosurableDemo
//  Created by: MrTrent on 03.06.2024
//  Copyright (c) 2024 Zordz Union
//  


import ActionClosurable
import UIKit

protocol ACNavBarConfigurable {
    func configureNavBarItems()
}

extension ACNavBarConfigurable where Self: UIViewController {
    func configureNavBarItems() {
        navigationItem.setRightBarButton(somePlainButton, animated: false)
        navigationItem.setLeftBarButton(printButton, animated: false)
    }
}

private extension ACNavBarConfigurable {
    var somePlainButton: UIBarButtonItem {
        UIBarButtonItem(title: "somePlain", style: .plain) { btn in
            btn.title = "tapped"
        }
    }
    
    var printButton: UIBarButtonItem {
        UIBarButtonItem(title: "print", style: .plain) { btn in
            self.printHello()
        }
    }
    
    func printHello() {
        print("Hello world")
    }
}
