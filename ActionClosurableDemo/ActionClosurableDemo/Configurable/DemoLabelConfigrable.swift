//
//  Module: ActionClosurableDemo
//  Created by: MrTrent on 03.06.2024
//  Copyright (c) 2024 Zordz Union
//  


import ActionClosurable
import UIKit

protocol DemoLabelConfigrable {
    func configureLabel()
}

extension DemoLabelConfigrable where Self: UIViewController {
    func configureLabel() {
        let label = label
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
    private var tapGesture: UITapGestureRecognizer {
        UITapGestureRecognizer { [weak self] _ in
            guard let self = self else { return }
            self.view.backgroundColor = self.view.backgroundColor == .gray ? .white : .gray
        }
    }
    
    private var label: UILabel {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isUserInteractionEnabled = true
        view.addGestureRecognizer(tapGesture)
        view.text = "Tap Me"
        return view
    }
}
