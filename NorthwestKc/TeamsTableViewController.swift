//
//  TeamsTableViewController.swift
//  NorthwestKc
//
//  Created by Peddi,Taraka Raviteja on 3/14/19.
//  Copyright © 2019 Peddi,Taraka Raviteja. All rights reserved.
//

import UIKit

class TeamsTableViewController: UITableViewController {

    var school:School!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        navigationItem.title = school.name
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return school.teams.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "teams")
        cell?.textLabel?.text = school.teams[indexPath.row].name
        // Configure the cell...
        
        return cell!
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        if(segue.identifier == "NewTeamView"){
            let schoolsDVC = segue.destination as! NewTeamViewController
            // Pass the selected object to the new view controller.
            schoolsDVC.school = self.school
        }
        
        if(segue.identifier == "StudentView"){
            // Pass the selected object to the new view controller.
            let studentsDVC = segue.destination as! StudentsViewController
            // Pass the selected object to the new view controller.
            studentsDVC.team = school.teams[tableView.indexPathForSelectedRow!.row]
        }
        
    }
   
    
    
    
}
