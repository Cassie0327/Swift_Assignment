//
//  Delete event.swift
//  Assignment_6
//
//  Created by 蔡倩 on 2019/10/27.
//  Copyright © 2019年 Qian Cai. All rights reserved.
//

import UIKit

class Delete_event: UIViewController {

    @IBOutlet weak var uit: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func confirm(_ sender: UIBarButtonItem) {
        let i=uit?.text
        var have=true
        var m:Int=0;
        
        for n in eventlist.eventList
        {
            if(n.Id==i)
            {
                have=false
                eventlist.eventList.remove(at: m)
                dismiss(animated:true, completion: nil)
                break
            }
            m=m+1
        }
        if(have==true)
        {
            let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "Not match event"
            alert.addButton(withTitle: "Understood")
            alert.show()
            
        }
        
    }
    @IBAction func Return(_ sender: UIBarButtonItem) {
        dismiss(animated:true, completion: nil)
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
