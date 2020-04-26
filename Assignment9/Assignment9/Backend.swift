//
//  Backend.swift
//  Assignment9
//
//  Created by 蔡倩 on 11/17/19.
//  Copyright © 2019 Qian Cai. All rights reserved.
//

import Foundation
import UIKit
import CoreData
var addItemImage: [String:UIImage] = [:]

func begin(){
    var context=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    let entity1 = NSEntityDescription.entity(forEntityName: "Event", in: context)
    let newEntity1 = NSManagedObject(entity: entity1!, insertInto: context)
    newEntity1.setValue("001", forKey: "event_id")
    newEntity1.setValue("Football", forKey: "event_name")
    newEntity1.setValue("This is football game", forKey: "event_description")
    newEntity1.setValue("2019-10-20", forKey: "start_date")
    newEntity1.setValue("2020-11-20", forKey: "end_date")
    newEntity1.setValue("MA", forKey: "state")
    newEntity1.setValue("Boston", forKey: "city")
    newEntity1.setValue("350 Rivers Edge", forKey: "street")
    
    let entity2 = NSEntityDescription.entity(forEntityName: "Event", in: context)
    let newEntity2 = NSManagedObject(entity: entity1!, insertInto: context)
     
       newEntity2.setValue("002", forKey: "event_id")
       newEntity2.setValue("Running", forKey: "event_name")
       newEntity2.setValue("This is running match", forKey: "event_description")
       newEntity2.setValue("2006-03-21", forKey: "start_date")
       newEntity2.setValue("2010-12-10", forKey: "end_date")
       newEntity2.setValue("MA", forKey: "state")
       newEntity2.setValue("Boston", forKey: "city")
       newEntity2.setValue("100 Rivers Edge", forKey: "street")
    
       let entity3 = NSEntityDescription.entity(forEntityName: "Event", in: context)
        let newEntity3 = NSManagedObject(entity: entity1!, insertInto: context)
      
        newEntity3.setValue("003", forKey: "event_id")
        newEntity3.setValue("Dancing", forKey: "event_name")
        newEntity3.setValue("This is Dance", forKey: "event_description")
        newEntity3.setValue("2015-11-20", forKey: "start_date")
        newEntity3.setValue("2020-12-05", forKey: "end_date")
        newEntity3.setValue("MA", forKey: "state")
        newEntity3.setValue("Boston", forKey: "city")
        newEntity3.setValue("100 Station landing", forKey: "street")
    
     let entity4 = NSEntityDescription.entity(forEntityName: "Event", in: context)
      let newEntity4 = NSManagedObject(entity: entity1!, insertInto: context)
    
      newEntity4.setValue("004", forKey: "event_id")
      newEntity4.setValue("Eating", forKey: "event_name")
      newEntity4.setValue("This is Eating", forKey: "event_description")
      newEntity4.setValue("2015-10-10", forKey: "start_date")
      newEntity4.setValue("2021-12-15", forKey: "end_date")
      newEntity4.setValue("MA", forKey: "state")
      newEntity4.setValue("Boston", forKey: "city")
      newEntity4.setValue("120 Station landing", forKey: "street")
    
   

    let entity11 = NSEntityDescription.entity(forEntityName: "User", in: context)
       let newEntity11 = NSManagedObject(entity: entity11!, insertInto: context)
     
       newEntity11.setValue("001", forKey: "user_id")
       newEntity11.setValue("Cassie", forKey: "user_name")
       newEntity11.setValue("3413241", forKey: "phone")
       newEntity11.setValue("cassie@163.com", forKey: "email")
       newEntity11.setValue("Running", forKey: "skills")
        newEntity11.setValue("Eating", forKey: "interests")
       newEntity11.setValue("MA", forKey: "state")
       newEntity11.setValue("Boston", forKey: "city")
       newEntity11.setValue("350 Rivers Edge", forKey: "street")
    
    let entity12 = NSEntityDescription.entity(forEntityName: "User", in: context)
          let newEntity12 = NSManagedObject(entity: entity11!, insertInto: context)
        
          newEntity12.setValue("002", forKey: "user_id")
          newEntity12.setValue("Mark", forKey: "user_name")
          newEntity12.setValue("3sdf", forKey: "phone")
          newEntity12.setValue("mark@163.com", forKey: "email")
          newEntity12.setValue("Hiking", forKey: "skills")
           newEntity12.setValue("Running", forKey: "interests")
          newEntity12.setValue("MA", forKey: "state")
          newEntity12.setValue("New york", forKey: "city")
          newEntity12.setValue("100 Rivers Edge", forKey: "street")
   

    

 
}

