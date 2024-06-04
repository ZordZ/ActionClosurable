//
//  Module: ActionClosurableDemo
//  Created by: MrTrent on 03.06.2024
//  Copyright (c) 2024 Zordz Union
//  


import UIKit

class DemoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configure()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

extension DemoViewController: DemoControllerConfigurable { }
