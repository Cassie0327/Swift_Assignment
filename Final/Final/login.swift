//
//  login.swift
//  Final
//
//  Created by 蔡倩 on 12/12/19.
//  Copyright © 2019 Qian Cai. All rights reserved.
//

import UIKit
import CoreData
class login: UIViewController {

    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func login(_ sender: UIButton) {
    var have=true
        let account1=text1.text
        let password1=text2.text
        let app = UIApplication.shared.delegate as! AppDelegate
        let context=app.persistentContainer.viewContext
              let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Student")
    do {
        let result1 = try context.fetch(request)
        for one in result1 as! [Student]
        {
            print(one)
            if(one.account==account1)
            {
                
                if (one.password==password1)
                {
                    have=false
                   UserDefaults().setValue(account1, forKey: "userName")
                   

                    
                   
                
                }
        
            }
            
          
          }
            
        }catch  {
            _ = error as NSError
          fatalError("failed")
        }
        if(have)
        {
            let alertController = UIAlertController(title: "Alert", message: "The account of password is incorrect!", preferredStyle: UIAlertController.Style.alert)
                let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                    (result : UIAlertAction) -> Void in
                 print("OK")
            
             }
             alertController.addAction(okAction)
             self.present(alertController, animated: true, completion: nil)
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

}
