//
//  ValidationVM.swift
//  EmailValidationAssignment
//
//  Created by Thejeswara Reddy on 01/03/21.
//

import Foundation

class ValidationVM{
    
    typealias authenticationCallBack = (_ status : Bool, _ userModel : UserModel) -> Void
    var loginCallBack: authenticationCallBack?
    
    func emailAndPasswordValidation(emailandpswd user: UserModel){
        if isValidEmail(testStr: user.email ?? ""){
            loginCallBack?(true,user)
        }else{
            loginCallBack?(false,user)
        }
    }
    func isValidEmail(testStr:String) -> Bool {
        let emailRegEx = "^[\\w\\.-]+@([\\w\\-]+\\.)+[A-Z]{1,4}$"
        let emailTest = NSPredicate(format:"SELF MATCHES[c] %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    
    func validationCallBack(callBack:@escaping authenticationCallBack){
        self.loginCallBack = callBack
    }
}
