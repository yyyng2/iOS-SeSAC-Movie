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
        
        designTextField(emailTextField, textFieldPlaceholder: "이메일 주소 또는 전화번호", textFieldKeyboardType: .emailAddress, textFieldSecure: false)
        designTextField(passwordTextField, textFieldPlaceholder: "비밀번호", textFieldKeyboardType: .emailAddress, textFieldSecure: true)
        designTextField(nameTextField, textFieldPlaceholder: "닉네임", textFieldKeyboardType: .emailAddress, textFieldSecure: false)
        designTextField(cityTextField, textFieldPlaceholder: "위치", textFieldKeyboardType: .emailAddress, textFieldSecure: false)
        designTextField(codeTextField, textFieldPlaceholder: "추천 코드 입력", textFieldKeyboardType: .numberPad, textFieldSecure: false)
        
        designSignButton()
        designSwitch()
        
    }
    
    func designNewflixLabel(){
        newflixLabel.text = "NEWFLIX"
        newflixLabel.textColor = .red
        newflixLabel.textAlignment = .center
        newflixLabel.frame.size = newflixLabel.intrinsicContentSize
    }
    
    func designSignButton(){
        signButton.setTitle("회원가입", for: .normal)
        signButton.setTitleColor(UIColor.black, for: .normal)
        signButton.backgroundColor = UIColor.white
        signButton.layer.cornerRadius = 8
    }
    
    func designSwitch(){
        infoSwitch.setOn(true, animated: true)
        infoSwitch.onTintColor = UIColor.red
        infoSwitch.thumbTintColor = .white
    }
    
    func designTextField(_ textFieldName: UITextField, textFieldPlaceholder: String, textFieldKeyboardType: UIKeyboardType, textFieldSecure: Bool){
        textFieldName.attributedPlaceholder = NSAttributedString(string: textFieldPlaceholder, attributes: [.foregroundColor: UIColor.white])
        textFieldName.keyboardType = textFieldKeyboardType
        textFieldName.backgroundColor = .darkGray
        textFieldName.layer.cornerRadius = 8
        textFieldName.textAlignment = .center
        textFieldName.borderStyle = .roundedRect
        textFieldName.isSecureTextEntry = textFieldSecure

    }
    
    func Alert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let cancel = UIAlertAction(title: "cancel", style: UIAlertAction.Style.cancel)
        alert.addAction(cancel)
        
        self.present(alert, animated: false)
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
