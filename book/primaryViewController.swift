//
//  primaryViewController.swift
//  book
//
//  Created by Omar on 19/04/2023.
//

import UIKit

class primaryViewController: UIViewController {

    var arr = ["item1" , "item2" , "item3" , "item4"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = nil
        self.navigationController?.navigationBar.topItem?.hidesBackButton = true
        self.navigationController?.navigationBar.topItem?.leftBarButtonItem = nil
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

extension primaryViewController : UITableViewDelegate{
    
}

extension primaryViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "item", for: indexPath)
        
        cell.textLabel?.text = arr[indexPath.row]
        cell.detailTextLabel?.text = "hello"
        
        return cell
    }
    
    
}
