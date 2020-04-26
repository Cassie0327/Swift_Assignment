//
//  indetail.swift
//  Assignment9
//
//  Created by 蔡倩 on 11/18/19.
//  Copyright © 2019 Qian Cai. All rights reserved.
//

import UIKit
import CoreData

class indetail: UIViewController {
    var inevent:String?
    var intext:String?

    @IBOutlet weak var text: UITextView!
    @IBOutlet weak var myimage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
       var context=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
       let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Event")
       request.returnsObjectsAsFaults=false
        do{
        let result1 = try context.fetch(request)
            for one in result1 as! [Event]
                {
                    if(one.event_name == inevent)
                {
                    text.text=one.event_description
                    myimage.image=addItemImage[one.event_name!]
            
        
        }
           
       
    }
        }
        catch  {
          let nserror = error as NSError
          fatalError("failed")
          
        }
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    let s=UserDefaults().string(forKey: "userName") ?? ""
      var context=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Student")
    request.returnsObjectsAsFaults = false
      do {
          let result1 = try context.fetch(request)
         for two in result1 as! [Student]
          {
            if(two.account==s)
                  {
                      text.text="student id: "+two.student_id!+"\n"+"student name: "+two.student_name
                      +"\n"+"student account: "+two.account!+"\n"+"password: "+two.password!+"\n"+"student major: "+two.major!+"\n"
                      
                      
              
                  }
                 
                  
         }
         
              
          }catch  {
            print("failed")
          }
    }
    
}
