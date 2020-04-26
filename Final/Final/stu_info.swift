//
//  stu_info.swift
//  Final
//
//  Created by 蔡倩 on 12/13/19.
//  Copyright © 2019 Qian Cai. All rights reserved.
//

import UIKit
import CoreData
class stu_info: UIViewController {

    @IBOutlet weak var text: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func show(_ sender: UIButton) {
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
