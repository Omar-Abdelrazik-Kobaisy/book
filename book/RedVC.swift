//
//  RedVC.swift
//  book
//
//  Created by Omar on 21/03/2023.
//

import UIKit

class RedVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tabBarItem.badgeValue = "99"
    }
    override func viewWillDisappear(_ animated: Bool) {
        tabBarItem.badgeValue = nil
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
