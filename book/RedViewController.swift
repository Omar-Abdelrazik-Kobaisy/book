//
//  RedViewController.swift
//  book
//
//  Created by Omar on 21/03/2023.
//

import UIKit

class RedViewController: UIViewController {

    @IBOutlet weak var segueSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func pushToOrange(_ sender: Any) {
        
//        if segueSwitch.isOn
//        {
//            performSegue(withIdentifier: "OrangeSegue", sender: nil)
//        }
        shouldPerformSegue(withIdentifier: "OrangeSegue", sender: nil) ? print("OrangeView") : print("can not move to View")
        
        
    }
    
    
    @IBAction func pushToBrown(_ sender: Any) {
//        if segueSwitch.isOn
//        {
//            performSegue(withIdentifier: "BrownSegue", sender: nil)
//        }
        
        shouldPerformSegue(withIdentifier: "BrownSegue", sender: UIColor.blue) ? print("BrownView") : print("can not move to view")
        
    }
    
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if segueSwitch.isOn
        {
            performSegue(withIdentifier: identifier, sender: nil)
            return true
        }
        return false
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
