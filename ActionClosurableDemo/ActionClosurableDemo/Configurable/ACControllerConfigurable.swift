//
//  Module: ActionClosurableDemo
//  Created by: MrTrent on 03.06.2024
//  Copyright (c) 2024 Zordz Union
//  


import UIKit

protocol ACControllerConfigurable: ACLabelConfigrable, ACNavBarConfigurable {
    func configure()
}

extension ACControllerConfigurable where Self: UIViewController {
    func configure() {
        view.backgroundColor = .white
        configureLabel()
        configureNavBarItems()
    }
}
