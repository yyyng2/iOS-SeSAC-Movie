//
//  SignUpViewController.swift
//  Movie
//
//  Created by Y on 2022/07/06.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var codeTextField: UITextField!
    @IBOutlet weak var signButton: UIButton!
    @IBOutlet weak var infoSwitch: UISwitch!
    @IBOutlet weak var newflixLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        designNewflixLabel()
        designSignButton()
        designSwitch()
        designTextField()
        
    }
    
    func designTextField(){
        emailTextField.designTextField(textFieldPlaceholder: "이메일 주소 또는 전화번호", textFieldKeyboardType: .emailAddress, textFieldSecure: false)
        passwordTextField.designTextField(textFieldPlaceholder: "비밀번호", textFieldKeyboardType: .emailAddress, textFieldSecure: true)
        nameTextField.designTextField(textFieldPlaceholder: "닉네임", textFieldKeyboardType: .emailAddress, textFieldSecure: false)
        cityTextField.designTextField(textFieldPlaceholder: "위치", textFieldKeyboardType: .emailAddress, textFieldSecure: false)
        codeTextField.designTextField(textFieldPlaceholder: "추천 코드 입력", textFieldKeyboardType: .numberPad, textFieldSecure: false)
    }
    
    func designNewflixLabel(){
        newflixLabel.designNewflixLabel()
    }
    
    func designSignButton(){
        signButton.designSignButton()
    }
    
    func designSwitch(){
        infoSwitch.designSwitch()
    }
    
    @IBAction func signButtonClicked(_ sender: UIButton) {
        view.endEditing(true)
        let password = passwordTextField.text?.count
        
        if emailTextField.text == ""{
            Alert(title:"!", message: "아이디를 입력해주세요.")
        } else if passwordTextField.text == "" {
            Alert(title:"!", message: "비밀번호를 입력해주세요.")
        } else if password! >= 1 && password! <= 5 {
            Alert(title:"!", message: "비밀번호는 6자리 이상 입력해주세요.")
        }
        
        if codeTextField.text != "" {
            let codeNum = Int(codeTextField.text!)
            if codeNum == nil {
                Alert(title:"!", message: "추천코드는 숫자로만 입력해주세요.")
            }
        }
           
        Alert(title: "축하합니다!", message: "회원가입이 완료되었습니다.")
        
    }
    
    @IBAction func doneGesture(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
}
