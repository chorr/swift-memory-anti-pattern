//
//  Pattern3ViewController.swift
//  MemoryAntiPattern
//
//  Created by Jeon Hyuncheol on 17/07/2019.
//  Copyright © 2019 chorr.net. All rights reserved.
//

import UIKit

class Pattern3ViewController: UIViewController {
    deinit {
        print("## deinit : Pattern3ViewController")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // no problem
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(appDidBecomeActiveNotificationAction),
                                               name: UIApplication.didBecomeActiveNotification,
                                               object: nil)

        // YES PROBLEM!
        NotificationCenter.default.addObserver(forName: UIApplication.didBecomeActiveNotification, object: nil, queue: .main) { (notification) in
            self.printNotificationClosureStatus()
        }
    }

    @objc func appDidBecomeActiveNotificationAction() {
        print("## \(#function)")
    }

    private func printNotificationClosureStatus() {
        print("## \(#function)")
    }
}
