//
//  Adduser.swift
//  Assignment9
//
//  Created by 蔡倩 on 11/18/19.
//  Copyright © 2019 Qian Cai. All rights reserved.
//

import UIKit
import CoreData
class Adduser:UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate{
    var imageAdded = false

    @IBOutlet weak var myimage: UIImageView!
    @IBOutlet var text: [UITextField]!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
     if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            myimage.image = image
            imageAdded = true
        }
        else {
            
        }
        
        dismiss(animated: true, completion: nil)
    }
    @IBAction func `import`(_ sender: UIButton) {
        let image = UIImagePickerController()
              image.delegate = self
              
              image.sourceType = UIImagePickerController.SourceType.photoLibrary
              
              image.allowsEditing = false
              
              self.present(image, animated: true) {
                  
              }
    }
    
    @IBAction func save(_ sender: UIButton) {
    let name=text[0].text
    let id=text[1].text
    let phone=text[2].text
    let email=text[3].text
    let street=text[4].text
    let city=text[5].text
    let state=text[6].text
    let interests=text[7].text
    let skills=text[8].text
    let subscription=text[9].text
    
    var have=false
    var h=true
        var app=UIApplication.shared.delegate as! AppDelegate
   var context=app.persistentContainer.viewContext
   let request = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
   request.returnsObjectsAsFaults = false
        if(name==""||id==""||street==""||city==""||state==""||interests==""||skills==""||phone==""||email=="")
    {
         let alertController = UIAlertController(title: "Alert", message: "The required field is missing", preferredStyle: UIAlertController.Style.alert)
                           let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                               (result : UIAlertAction) -> Void in
                            print("OK")
                           }
                              alertController.addAction(okAction)
                            self.present(alertController, animated: true, completion: nil)
    }
    
    let pattern1="^[0-9]+$"
    let regex1 = try? NSRegularExpression(pattern: pattern1, options: [])
    guard let results1 = regex1?.matches(in: id!, options: [], range: NSRange(location: 0, length: (id?.count)!)),results1.count != 0
        else{
            let alertController = UIAlertController(title: "Alert", message: "The id is not correct!", preferredStyle: UIAlertController.Style.alert)
                                   let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                                       (result : UIAlertAction) -> Void in
                                    print("OK")
                                   }
                                      alertController.addAction(okAction)
                                    self.present(alertController, animated: true, completion: nil)
            return
    }
    let pattern2="^[0-9]+$"
    let regex2 = try? NSRegularExpression(pattern: pattern2, options: [])
    guard let results2 = regex2?.matches(in: phone!, options: [], range: NSRange(location: 0, length: (phone?.count)!)),results2.count != 0
        else{
         let alertController = UIAlertController(title: "Alert", message: "The phone is not correct", preferredStyle: UIAlertController.Style.alert)
                                let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                                    (result : UIAlertAction) -> Void in
                                 print("OK")
                                }
                                   alertController.addAction(okAction)
                                 self.present(alertController, animated: true, completion: nil)
          
            return
    }
    let pattern3="^[A-Z,a-z,\\d]+([-_.][A-Z,a-z,\\d]+)*@([A-Z,a-z,\\d]+[-.])+[A-Z,a-z,\\d]{2,4}"
    let regex3 = try? NSRegularExpression(pattern: pattern3, options: [])
    guard let results3 = regex3?.matches(in: email!, options: [], range: NSRange(location: 0, length: (email?.count)!)),results3.count != 0
        else{
        let alertController = UIAlertController(title: "Alert", message: "The email is not correct", preferredStyle: UIAlertController.Style.alert)
                                                let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                                                    (result : UIAlertAction) -> Void in
                                                 print("OK")
                                                }
                                                   alertController.addAction(okAction)
                                                 self.present(alertController, animated: true, completion: nil)
        
            return
    }
    
      do{
                             let result1 = try context.fetch(request)
                           for data in result1 as! [NSManagedObject]
                           {
                               if((data.value(forKey:"user_id") as! String) == id)
                               {
                                   have=true
                                   break
                                 
                             }
                          
                           }

                            }
                        catch{
                           print("Failed")

               }

        if have
        {
         let alertController = UIAlertController(title: "Alert", message: "Already have the user", preferredStyle: UIAlertController.Style.alert)
         let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
             (result : UIAlertAction) -> Void in
          print("OK")
         }
            alertController.addAction(okAction)
          self.present(alertController, animated: true, completion: nil)
           
            
        }
        else
        {
            let entity1 = NSEntityDescription.entity(forEntityName: "User", in: context)
                let newEntity1 = NSManagedObject(entity: entity1!, insertInto: context)
                          newEntity1.setValue(id!, forKey: "user_id")
                            newEntity1.setValue(name!, forKey: "user_name")
                            newEntity1.setValue(phone!, forKey: "phone")
                            newEntity1.setValue(email!, forKey: "email")
                            newEntity1.setValue(interests!, forKey: "interests")
                            newEntity1.setValue(skills!, forKey: "skills")
                            newEntity1.setValue(subscription!, forKey: "subscription")
                            newEntity1.setValue(state!, forKey: "state")
                            newEntity1.setValue(city!, forKey: "city")
                            newEntity1.setValue(street!, forKey: "street")
            app.saveContext()
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "callForUpdate"), object: nil)
           
            let image = myimage.image
            addItemImage[name!] = image
         let alertController = UIAlertController(title: "Alert", message: "Create Succeed!", preferredStyle: UIAlertController.Style.alert)
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
