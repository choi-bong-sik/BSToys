//
//  ViewController.swift
//  BSToys
//
//  Created by 최 봉식 on 2018. 4. 24..
//  Copyright © 2018년 jake. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    let arr = ["@IB Real-time rendering"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "BSTOYS"
    }
    //MARK: - table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let viewController = mainStoryboard.instantiateViewController(withIdentifier: "IBRenderViewController") as? IBRenderViewController
            self.navigationController?.pushViewController(viewController!, animated: true)
            break
        default:
            break
            //
        }
    }
}

