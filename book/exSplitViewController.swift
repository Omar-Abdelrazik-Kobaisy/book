//
//  exSplitViewController.swift
//  book
//
//  Created by Omar on 18/04/2023.
//

import UIKit

extension UIViewController {
    /// this add a child controller to the view of another controller
    func addAsChildViewController(type controller: UIViewController, attached toView: UIView) {
        
        // Add Child View Controller
        addChild(controller)
        
        // Add Child View as Subview
        toView.addSubview(controller.view)
        
        // Configure Child View
        controller.view.frame = toView.bounds
        controller.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // Notify Child View Controller
        controller.didMove(toParent: self)
        
    }
}
extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}

class exSplitViewController: UIViewController {

    @IBOutlet weak var item: UIView!
    @IBOutlet weak var showMenu: UIButton!
    @IBOutlet weak var list: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        item.roundCorners(corners: [.topLeft , .topRight , .bottomLeft], radius: 30)
        
        let usersItem = UIAction(title: "Users", image: UIImage(systemName: "person.fill")) { (action) in

                print("Users action was tapped")
           }

           let addUserItem = UIAction(title: "Add User", image: UIImage(systemName: "person.badge.plus")) { (action) in

               print("Add User action was tapped")
           }

           let removeUserItem = UIAction(title: "Remove User", image: UIImage(systemName: "person.fill.xmark.rtl")) { (action) in
                print("Remove User action was tapped")
           }

           let menu = UIMenu( options: .displayInline, children: [usersItem , addUserItem , removeUserItem])

//        let plusAction = UIAction(title: "plusAction"){ (action) in
//            print("Plus Action action was tapped ")
//        }
        
//        let navItems = [UIBarButtonItem(image:  UIImage(systemName: "plus"), primaryAction: plusAction , menu: menu) ,
//                        .fixedSpace(10),
//                       UIBarButtonItem(systemItem: .search , menu: menu)]

        list.menu = menu

        showMenu.menu = menu
        showMenu.showsMenuAsPrimaryAction = true
//        self.navigationItem.leftBarButtonItems = navItems
    }
    
    @IBAction func didTapButton(_ sender: Any) {
        
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = nil
        self.navigationController?.navigationBar.topItem?.hidesBackButton = true
        self.navigationController?.navigationBar.topItem?.leftBarButtonItem = nil
        if UIDevice.current.userInterfaceIdiom == .pad {
            
            navigateToSplit()
        }else{
            let primaryViewController = self.storyboard?.instantiateViewController(withIdentifier: "primaryViewController") as! primaryViewController
            self.navigationController?.pushViewController(primaryViewController, animated: true)
        }
        
    }
    
    func navigateToSplit() {

        
        let container = self.storyboard?.instantiateViewController(withIdentifier: "parentViewController") as! parentViewController
        let splitView = self.storyboard?.instantiateViewController(withIdentifier: "splitViewController") as! splitViewController // ===> Your splitViewController
        container.addAsChildViewController(type: splitView, attached: container.view)
        navigationController?.pushViewController(container, animated: true)
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
