//
//  View user.swift
//  Assignment_6
//
//  Created by 蔡倩 on 2019/10/27.
//  Copyright © 2019年 Qian Cai. All rights reserved.
//

import UIKit

class View_user: UIViewController {

    @IBOutlet weak var re: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        var result:String="";
        for i in userlist.userList
        {
            result=result+"\n"+"Name:\(i.Name)"+"\n"+"Id:\(i.Id)"+"\n"+"phone:\(i.Phone)"+"\n"+"Email:\(i.Email)"+"\n"+"Interests:\(i.Interests)"+"\n"+"Skills:\(i.Skills)"+"\n"+"Address:\(i.Address.Street),\(i.Address.City),\(i.Address.State)"+"\n"+"Subscription:"
            var a=0
            for n in i.Subscription
            {
                result=result+"\(i.Subscription[a].Name)),"
                a=a+1
            }
            result=result+"--------------------"
        }
        re.text=result
        // Do any additional setup after loading the view.
    }
    @IBAction func Return(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
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
