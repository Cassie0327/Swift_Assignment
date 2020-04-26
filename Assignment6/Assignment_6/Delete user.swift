//
//  Delete user.swift
//  Assignment_6
//
//  Created by 蔡倩 on 2019/10/27.
//  Copyright © 2019年 Qian Cai. All rights reserved.
//

import UIKit

class Delete_user: UIViewController {

    @IBOutlet weak var Id: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func Return(_ sender: UIBarButtonItem) {
    dismiss(animated: true, completion: nil)
    }
    @IBAction func Confirm(_ sender: UIBarButtonItem) {
        let i=Id.text
        var have=true
        var m:Int=0;
        
        for n in userlist.userList
        {
            if(n.Id==i)
            {
                have=false
                userlist.userList.remove(at: m)
                dismiss(animated: true, completion: nil)
                break
            }
            m=m+1
        }
        if(have==true)
        {let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "Not match user"
            alert.addButton(withTitle: "Understood")
            alert.show()}
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
