//
//  Describe.swift
//  Assignment_6
//
//  Created by 蔡倩 on 2019/10/27.
//  Copyright © 2019年 Qian Cai. All rights reserved.
//

import UIKit

class Describe: UIViewController {

    @IBOutlet weak var userid: UITextField!
    @IBOutlet weak var Id: UITextField!
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
    @IBAction func Confirm(_ sender: UIBarButtonItem) {
        let uid=userid.text
        let eid=Id.text
        var u=0
        var e=0
        var have=true
        var h=true
        var a=true
        for useri in userlist.userList
        {
            if useri.Id==uid
            {
               have=false
                break
               
            }
            
            u=u+1
            
        }
        if(have==true)
        {
            let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "No match user id"
            alert.addButton(withTitle: "Understood")
            alert.show()
        }
        else{
            for evid in eventlist.eventList
            {
                if evid.Id==eid
                {
                    h=false
                    break
                    
                }
            }
            if(h==true)
            {let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "No match event id"
                alert.addButton(withTitle: "Understood")
                alert.show()
                
            }
            else
            {
                for sub in userlist.userList[u].Subscription
                {
                    if(eid==sub.Id)
                    {
                        a=false
                        break
                        
                    }
                    
                }
                
            if(a==true)
            {
                for evidd in eventlist.eventList
                {
                    if(evidd.Id==eid)
                    {
                        userlist.userList[u].Subscription.append(evidd)
                        dismiss(animated: true, completion: nil)}
                }
            }
            else {
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "Already subscribe this event"
                alert.addButton(withTitle: "Understood")
                alert.show()
                }
            
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
