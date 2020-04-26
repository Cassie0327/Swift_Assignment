//
//  Update user.swift
//  Assignment_6
//
//  Created by 蔡倩 on 2019/10/27.
//  Copyright © 2019年 Qian Cai. All rights reserved.
//

import UIKit

class Update_user: UIViewController {

    @IBOutlet var Userdetail: [UITextField]!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Return(_ sender: UIBarButtonItem) {
    dismiss(animated: true, completion: nil)
    }
    @IBAction func Save(_ sender: UIBarButtonItem) {
        let mid=Userdetail[10].text
        let name=Userdetail[0].text
        let id=Userdetail[1].text
        let phone=Userdetail[2].text
        let email=Userdetail[3].text
        let street=Userdetail[4].text
        let city=Userdetail[5].text
        let state=Userdetail[6].text
        let interests=Userdetail[7].text
        let skills=Userdetail[8].text
        let subscription=Userdetail[9].text
        var have=false
        var h=true
        var h2=true
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
        let pattern4="^[0-9]+$"
        let regex4 = try? NSRegularExpression(pattern: pattern4, options: [])
        guard let results4 = regex4?.matches(in: mid!, options: [], range: NSRange(location: 0, length: (mid?.count)!)),results1.count != 0
            else{
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "The id is not correct"
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
        if have
        {
            let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "Already have the user"
            alert.addButton(withTitle: "Understood")
            alert.show()
            
        }
        else{
            if h{
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "Not match event"
                alert.addButton(withTitle: "Understood")
                alert.show()
                
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
                        dismiss(animated: true, completion: nil)
                        
                        return
                        
                    }
                    j=j+1
                }
                
                
                if h2{
                    let alert = UIAlertView()
                    alert.title = "Alert"
                    alert.message = "Not match user"
                    alert.addButton(withTitle: "Understood")
                    alert.show()
                    
                }
            }}

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
