//
//  updateuser.swift
//  Assignment9
//
//  Created by 蔡倩 on 11/18/19.
//  Copyright © 2019 Qian Cai. All rights reserved.
//

import UIKit
import CoreData

class updateuser:UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate{
var imageAdded = false
    @IBOutlet weak var myimage: UIImageView!
    @IBOutlet var utext: [UITextField]!
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
        var app = UIApplication.shared.delegate as! AppDelegate
        var context=app.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        request.returnsObjectsAsFaults=false
        
        
        let mid=utext[10].text
                 let name=utext[0].text
                 let id=utext[1].text
                 let phone=utext[2].text
                 let email=utext[3].text
                 let street=utext[4].text
                 let city=utext[5].text
                 let state=utext[6].text
                 let interests=utext[7].text
                 let skills=utext[8].text
                 let subscription=utext[9].text
                 var have=false
                 var h2=true
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
                       let alertController = UIAlertController(title: "Alert", message: "The id is not correct", preferredStyle: UIAlertController.Style.alert)
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
                         let alert = UIAlertView()
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
                       let alert = UIAlertView()
                       let alertController = UIAlertController(title: "Alert", message: "The email is not correct", preferredStyle: UIAlertController.Style.alert)
                                      let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                                          (result : UIAlertAction) -> Void in
                                       print("OK")
                                      }
                                         alertController.addAction(okAction)
                                       self.present(alertController, animated: true, completion: nil)
                                      return
                       
                       
                 }
                 let pattern4="^[0-9]+$"
                 let regex4 = try? NSRegularExpression(pattern: pattern4, options: [])
                 guard let results4 = regex4?.matches(in: mid!, options: [], range: NSRange(location: 0, length: (mid?.count)!)),results1.count != 0
                     else{
                       let alert = UIAlertView()
                       let alertController = UIAlertController(title: "Alert", message: "The id is not correct", preferredStyle: UIAlertController.Style.alert)
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
                   let alert = UIAlertView()
                       let alertController = UIAlertController(title: "Alert", message: "Already have the user", preferredStyle: UIAlertController.Style.alert)
                                      let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                                          (result : UIAlertAction) -> Void in
                                       print("OK")
                                      }
                                         alertController.addAction(okAction)
                                       self.present(alertController, animated: true, completion: nil)
                                      return
                   
                    
                     
                 }
                 else{
            do {
                         let result1 = try context.fetch(request)
                       for one in result1 as! [User]
                       {
                        if(one.user_id == mid)
                           {
                           have=false
                            one.user_name=name!
                            one.user_id=id!
                            one.phone=phone!
                           one.email=email!
                           one.interests=interests!
                            one.skills=skills!
                           one.state=state!
                           one.city=city!
                           one.street=street!
                   NotificationCenter.default.post(name: NSNotification.Name(rawValue: "callForUpdate"), object: nil)
                           let image = myimage.image
                           addItemImage[name!] = image
                            app.saveContext()
                      
                             let alertController = UIAlertController(title: "Alert", message: "Create Succeed!", preferredStyle: UIAlertController.Style.alert)
                                                         let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                                                             (result : UIAlertAction) -> Void in
                                                          print("OK")
                                                     
                                                      }
                                                      alertController.addAction(okAction)
                                                      self.present(alertController, animated: true, completion: nil)
                           }
                           
                         
                         }
                           
                         
                       } catch  {
                         let nserror = error as NSError
                         fatalError("failed")
                         
                       }
                      
                         if h2{
                           
                           let alertController = UIAlertController(title: "Alert", message: "Not match user", preferredStyle: UIAlertController.Style.alert)
                                                                                      let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                                                                                          (result : UIAlertAction) -> Void in
                                                                                       print("OK")
                                                                                      }
                                                                                         alertController.addAction(okAction)
                                                                                       self.present(alertController, animated: true, completion: nil)
                       
                             
                         }
                     }}
           }
           
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


