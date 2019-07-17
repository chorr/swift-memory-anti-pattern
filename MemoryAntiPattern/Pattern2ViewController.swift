//
//  Pattern2ViewController.swift
//  MemoryAntiPattern
//
//  Created by Jeon Hyuncheol on 17/07/2019.
//  Copyright © 2019 chorr.net. All rights reserved.
//

import UIKit

class Pattern2ViewController: UIViewController {
    deinit {
        print("## deinit : Pattern2ViewController")
    }

    private lazy var customView: CustomView = {
        let view = CustomView()
        view.targetView = self.view
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(customView)
    }
}

class CustomView: UIView {
    deinit {
        print("## deinit : CustomView")
    }

    var targetView: UIView?

    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        if let targetView = self.targetView {
            self.translatesAutoresizingMaskIntoConstraints = false
            self.backgroundColor = .red
            NSLayoutConstraint.activate([
                self.widthAnchor.constraint(equalToConstant: 200),
                self.heightAnchor.constraint(equalToConstant: 200),
                self.centerXAnchor.constraint(equalTo: targetView.centerXAnchor),
                self.centerYAnchor.constraint(equalTo: targetView.centerYAnchor)
                ])
        }
    }
}
