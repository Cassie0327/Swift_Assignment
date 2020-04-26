//
//  updateuser.swift
//  Assignment88
//
//  Created by 蔡倩 on 11/11/19.
//  Copyright © 2019 Qian Cai. All rights reserved.
//

import UIKit

class updateuser: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate{
    var imageAdded = false
    @IBOutlet var utext: [UITextField]!
    @IBOutlet weak var myimage: UIImageView!
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

    
    
    @IBAction func im(_ sender: UIButton) {
    let image = UIImagePickerController()
    image.delegate = self
    
    image.sourceType = UIImagePickerController.SourceType.photoLibrary
    
    image.allowsEditing = false
    
    self.present(image, animated: true) {
        
    }
    
    }
  
    @IBAction func save(_ sender: UIButton) {
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
          var h=true
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
          
          for i in userlist.userList
          {
              if(id==i.Id)
              {
                  have=true
                  break
              }
          }
          var sub:[Event]=[Event]()
          for n in eventlist.eventList
          {
              if(subscription==n.Id)
              {
                  h=false
                  sub.append(n)
                  break
                  
              }
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
              if h{
                let alert = UIAlertView()
                               let alertController = UIAlertController(title: "Alert", message: "Not match event", preferredStyle: UIAlertController.Style.alert)
                                              let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                                                  (result : UIAlertAction) -> Void in
                                               print("OK")
                                              }
                                                 alertController.addAction(okAction)
                                               self.present(alertController, animated: true, completion: nil)
                                              return
                
            
              }
                  
              else{
                  
                  
                  var j=0;
                  for m in userlist.userList
                  {
                      if(mid==m.Id)
                      {
                          h2=false
                          userlist.userList.remove(at: j)
                          let user:User=User(Name:name!,Id:id!,Phone:phone!,Email:email!,Interests:[interests!],Skills:[skills!],Subsciption:sub,Address:Address.init(Street:street!,City: city!, State: state!))
                          userlist.userList.insert(user, at: j)
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
                                                            return
                      
                      }
                      j=j+1
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
    
    
}
