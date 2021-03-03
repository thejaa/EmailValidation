//
//  HomeViewController.swift
//  EmailValidationAssignment
//
//  Created by Thejeswara Reddy on 02/03/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var emailId: UILabel!
    var email : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        emailId.text = email
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
