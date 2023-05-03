//
//  secondViewController.swift
//  book
//
//  Created by Omar on 20/03/2023.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var my_label: UILabel!
    
    var my_name : String?
    override func viewDidLoad() {
        super.viewDidLoad()

        my_label.text = my_name
        // Do any additional setup after loading the view.
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
