//
//  Adduser.swift
//  Assignment_7
//
//  Created by 蔡倩 on 2019/11/4.
//  Copyright © 2019年 Qian Cai. All rights reserved.
//

import UIKit

class Adduser: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate  {
    var imageAdded = false
   
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var myimage: UIImageView!
    @IBOutlet var utext: [UITextField]!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
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
        
        image.sourceType = UIImagePickerControllerSourceType.photoLibrary
        
        image.allowsEditing = false
        
        self.present(image, animated: true) {
            
        }
    }
    @IBAction func save1(_ sender: UIButton) {
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
        if(name==""||id==""||street==""||city==""||state==""||interests==""||skills==""||phone==""||email=="")
        {
            let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "The required field is missing"
            alert.addButton(withTitle: "Understood")
            alert.show()
        }
        
        let pattern1="^[0-9]+$"
        let regex1 = try? NSRegularExpression(pattern: pattern1, options: [])
        guard let results1 = regex1?.matches(in: id!, options: [], range: NSRange(location: 0, length: (id?.count)!)),results1.count != 0
            else{
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "The id is not correct"
                alert.addButton(withTitle: "Understood")
                alert.show()
                return
        }
        let pattern2="^[0-9]+$"
        let regex2 = try? NSRegularExpression(pattern: pattern2, options: [])
        guard let results2 = regex2?.matches(in: phone!, options: [], range: NSRange(location: 0, length: (phone?.count)!)),results2.count != 0
            else{
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "The phone is not correct"
                alert.addButton(withTitle: "Understood")
                alert.show()
                return
        }
        let pattern3="^[A-Z,a-z,\\d]+([-_.][A-Z,a-z,\\d]+)*@([A-Z,a-z,\\d]+[-.])+[A-Z,a-z,\\d]{2,4}"
        let regex3 = try? NSRegularExpression(pattern: pattern3, options: [])
        guard let results3 = regex3?.matches(in: email!, options: [], range: NSRange(location: 0, length: (email?.count)!)),results3.count != 0
            else{
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "The email is not correct"
                alert.addButton(withTitle: "Understood")
                alert.show()
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
        if h
        {
            let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "There is not the event that you input"
            alert.addButton(withTitle: "Understood")
            alert.show()
            return
        }
        else{
            if have
            {
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "Already have the user"
                alert.addButton(withTitle: "Understood")
                alert.show()
                
            }
            else
            {
                let user:User=User(Name:name!,Id:id!,Phone:phone!,Email:email!,Interests:[interests!],Skills:[skills!],Subsciption:sub,Address:Address.init(Street:street!,City: city!, State: state!))
                userlist.userList.append(user)
                NotificationCenter.default.post(name: NSNotification.Name(rawValue: "callForUpdate"), object: nil)
                let image = myimage.image
                addItemImage[name!] = image
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "Create Succeed!"
                alert.addButton(withTitle: "Understood")
                alert.show()
            }
        }
    
    }
    
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
