//
//  Module: ActionClosurableDemo
//  Created by: MrTrent on 03.06.2024
//  Copyright (c) 2024 Zordz Union
//  


import UIKit

protocol DemoControllerConfigurable: DemoLabelConfigrable, DemoNavBarConfigurable {
    func configure()
}

extension DemoControllerConfigurable where Self: UIViewController {
    func configure() {
        view.backgroundColor = .white
        configureLabel()
        configureNavBarItems()
    }
}
