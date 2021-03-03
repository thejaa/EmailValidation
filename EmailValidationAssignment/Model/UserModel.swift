//
//  UserModel.swift
//  EmailValidationAssignment
//
//  Created by Thejeswara Reddy on 01/03/21.
//

import Foundation

class UserModel{
    var email : String?
    var password : String?
    init(_email:String,_password:String) {
        self.email = _email
        self.password = _password
    }
}
