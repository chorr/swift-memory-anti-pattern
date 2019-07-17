//
//  Pattern1ViewController.swift
//  MemoryAntiPattern
//
//  Created by Jeon Hyuncheol on 17/07/2019.
//  Copyright © 2019 chorr.net. All rights reserved.
//

import UIKit

class Pattern1ViewController: UIViewController {
    deinit {
        print("## deinit : Pattern1ViewController")
    }

    var retainCycle: RetainCycleClass?

    override func viewDidLoad() {
        super.viewDidLoad()

        retainCycle = RetainCycleClass()
        retainCycle?.delegate = self
    }
}

extension Pattern1ViewController: RetainCycleClassDelegate {
}

protocol RetainCycleClassDelegate {
}

class RetainCycleClass {
    var delegate: RetainCycleClassDelegate?

    deinit {
        print("## deinit : RetainCycleClass")
    }
}
