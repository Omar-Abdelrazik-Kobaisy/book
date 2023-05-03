//
//  NewViewController.swift
//  book
//
//  Created by Omar on 22/03/2023.
//

import UIKit

class NewViewController: UIViewController {

    @IBOutlet weak var tf: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        tf.layer.shadowOpacity = 0.2
        print("View Controller - View Did Load")
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View Controller - View Will Appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("View Controller - VIew Did Appear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("View Controller - View Will Disappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("View Controller - View Did disappear")
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        
        if let text = sender.text{
            print(text)
        }
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
