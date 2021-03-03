//
//  ViewController.swift
//  EmailValidationAssignment
//
//  Created by Thejeswara Reddy on 01/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    let validationVM = ValidationVM()
    var userModel : UserModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        emailTextField.addTarget(self, action: #selector(setupEmail(sender:)), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(setupEmail(sender:)), for: .editingChanged)
        signInButton.isEnabled = false
    }
    @objc func setupEmail(sender:UITextField){
        if(emailTextField.text != "") && (passwordTextField.text?.count ?? 0 > 8 && passwordTextField.text?.count ?? 0 < 15 ){
            validationVM.validationCallBack { (status, model) in
                if status == true{
                    self.userModel = model
                    print(model.email ?? "")
                    self.signInButton.isEnabled = true
                }else{
                    self.signInButton.isEnabled = false
                }
            }
            validationVM.emailAndPasswordValidation(emailandpswd: UserModel(_email: emailTextField.text ?? "", _password: passwordTextField.text ?? ""))
        }else{
            self.signInButton.isEnabled = false
        }
    }
    @IBAction func signinAction(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyBoard.instantiateViewController(identifier: "HomeViewController") as? HomeViewController{
            vc.email = userModel?.email ?? ""
            self.present(vc, animated: false, completion: nil)
           // self.navigationController?.showDetailViewController(vc, sender: nil)
        }
    }
}

