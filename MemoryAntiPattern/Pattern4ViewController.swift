//
//  Pattern4ViewController.swift
//  MemoryAntiPattern
//
//  Created by Jeon Hyuncheol on 17/07/2019.
//  Copyright © 2019 chorr.net. All rights reserved.
//

import UIKit

class Pattern4ViewController: UIViewController {
    deinit {
        print("## deinit : Pattern4ViewController")
    }

    var foo: String = ""
    var handler: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

        let closure = {
            self.foo = "bar"
            print("## \(#function) : foo=\(self.foo)")
        }

        triggerHandler(block: closure)

        setHandler(block: closure)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        self.handler?()
    }

    private func triggerHandler(block: () -> Void) {
        block()
    }

    private func setHandler(block: @escaping () -> Void) {
        self.handler = block
    }
}
