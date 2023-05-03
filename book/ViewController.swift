//
//  ViewController.swift
//  book
//
//  Created by Omar on 02/03/2023.
//

import UIKit

@objcMembers class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    
    @IBOutlet weak var sayMyName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let userInfo = ["fullName": "John Martin", "age": 30] as [String : Any]
        
//        let timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:#selector(timerExcution), userInfo: userInfo, repeats: true)
     
        let str = "⚡OmarAbdelrazik⚡"
        var charIndex = 0.0
        for letter in str
        {
            Timer.scheduledTimer(withTimeInterval: 0.2 * charIndex, repeats: false) { timer in
                self.sayMyName.text?.append(letter)
            }
            charIndex += 1.0
        }
        
        
    }

    
   @objc func timerExcution(){
        print("hello")
    }

    @IBAction func unwind(unwindSegue: UIStoryboardSegue) {
        print("dismiss")
    }
    
    
    @IBAction func goToSecond(_ sender: AnyObject) {
        
      //  performSegue(withIdentifier: "second", sender: UIColor.brown)
        performSegue(withIdentifier: "second", sender: textField.text)
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let secondVC = segue.destination as! secondViewController
//        secondVC.my_name = sender as? String
//        //secondVC.view.backgroundColor = sender as? UIColor
//
//
//        segue.destination.navigationItem.title = " Hello :)"
//
//    }
    
}

