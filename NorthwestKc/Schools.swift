//
//  Schools.swift
//  NorthwestKc
//
//  Created by Student on 3/14/19.
//  Copyright © 2019 Peddi,Taraka Raviteja. All rights reserved.
//

import Foundation
class Schools{
    
    static var shared = Schools()
    
    private var schools:[School]
    private convenience init(){
        self.init(schools:[])
    }
    private init(schools:[School]){
        self.schools = schools
    }
    
    subscript(index:Int)->School{
        
        return schools[index]
    }
    
    
    func numSchools()->Int{
        return schools.count
    }
    
    func add(school:School){
        schools.append(school)
    }
    
    func delete(school:School){
        if schools.count != 0{
            for i in 0..<schools.count{
                if school.name == schools[i].name
                {
                    schools.remove(at: i)
                    return
                }
                
            }
        }
    }
    
}
class School{
    var name:String
    var coach:String
    var teams:[Team]
    
    init(name:String, coach:String, teams:[Team]){
        self.name = name
        self.coach = coach
        self.teams = teams
    }
    func addTeam(name:String,students:[String]){
        let team = Team(name:name, students:students)
        self.teams.append(team)
    }
    
}

class Team{
    var name:String
    var students:[String]
    
    init(name:String, students:[String]){
        self.name = name
        self.students = students
    }
    
}
