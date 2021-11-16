//
//  ViewController.swift
//  SignUp
//
//  Created by yunus oktay on 16.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpTiklandi(_ sender: Any) {
        
        if emailTextField.text == "" {
            //email'ini girmemiş
            alertOlustur(titleGirdisi: "Hata!", messageGirdisi: "Email Eksik")
            
        } else if passwordTextField.text == "" {
            //parolasını girmemiş
            alertOlustur(titleGirdisi: "Hata!", messageGirdisi: "Parola Eksik")
            
        } else if passwordTextField.text != password2TextField.text {
            //parolalar uyuşmuyor
            alertOlustur(titleGirdisi: "Hata!", messageGirdisi: "Parolalar Uyuşmuyor")
           
            
        } else {
            // başarılı kayıt ettik
            alertOlustur(titleGirdisi: "Tebrikler!", messageGirdisi: "Kullanıcı Oluşturuldu")
            
        }
        
        
    }
    
    func alertOlustur(titleGirdisi: String, messageGirdisi: String) {
        
        let uyariMesaji = UIAlertController(title: titleGirdisi, message: messageGirdisi, preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
            (UIAlertAction) in
            // OK Button' una tıklanınca olacaklar
            print("ok button tiklandi")
        }
        
        uyariMesaji.addAction(okButton)
        
        self.present(uyariMesaji, animated: true, completion: nil)
        
    }
    
}

