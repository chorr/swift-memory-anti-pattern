//
//  DemoViewController.swift
//  MemoryAntiPattern
//
//  Created by Jeon Hyuncheol on 17/07/2019.
//  Copyright © 2019 chorr.net. All rights reserved.
//

import UIKit

class DemoViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.clearsSelectionOnViewWillAppear = true
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            performSegue(withIdentifier: "pattern1SegueIdentifier", sender: nil)
        case 1:
            performSegue(withIdentifier: "pattern2SegueIdentifier", sender: nil)
        case 2:
            performSegue(withIdentifier: "pattern3SegueIdentifier", sender: nil)
        default:
            break
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // TODO
    }
}

