//
//  NewTeamViewController.swift
//  NorthwestKc
//
//  Created by Peddi,Taraka Raviteja on 3/14/19.
//  Copyright © 2019 Peddi,Taraka Raviteja. All rights reserved.
//

import UIKit

class NewTeamViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var teamNameTF: UITextField!
    
    @IBOutlet weak var student0TF: UITextField!
    
    @IBOutlet weak var student1TF: UITextField!
    
    @IBOutlet weak var student2TF: UITextField!
    
    var school:School!
    
    @IBAction func cancelBTN(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func doneBTN(_ sender: Any) {
        let team = Team(name: teamNameTF.text!, students:[student0TF.text!,student1TF.text!,student2TF.text!])
        
        if teamNameTF.text != "" && (student0TF.text != "" || student1TF.text != "" || student2TF.text != "")  {
            school.addTeam(name: team.name, students: team.students)
            self.dismiss(animated: true, completion: nil)
        }else{
            
            displayMessage()
        }
    }
    
    
    func displayMessage(){
        let alert = UIAlertController(title: "Warning",
                                      message: "You need to input student name",
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default,
                                      handler: nil))
        self.present(alert, animated: true, completion: nil)

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
