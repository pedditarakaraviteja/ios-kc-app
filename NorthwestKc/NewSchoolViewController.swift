//
//  NewSchoolViewController.swift
//  NorthwestKc
//
//  Created by Peddi,Taraka Raviteja on 3/14/19.
//  Copyright © 2019 Peddi,Taraka Raviteja. All rights reserved.
//

import UIKit

class NewSchoolViewController: UIViewController {

    
    @IBOutlet weak var nameTF: UITextField!
    
    
    
    
    @IBOutlet weak var coachTF: UITextField!
    
    @IBAction func cancelBTN(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func doneBTN(_ sender: Any) {
        
        if nameTF.text != "" , coachTF.text != ""{
            let school = School(name: nameTF.text!, coach: coachTF.text!, teams: [])
            Schools.shared.add(school: school)
            self.dismiss(animated: true, completion: nil)
        }else{
            displayMessage()
        }
        
    }
    
    func displayMessage(){
        let alert = UIAlertController(title: "Warning",
                                      message: "You need to input all values",
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default,
                                      handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
