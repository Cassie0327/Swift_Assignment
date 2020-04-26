//
//  Add event.swift
//  Assignment_6
//
//  Created by 蔡倩 on 2019/10/27.
//  Copyright © 2019年 Qian Cai. All rights reserved.
//

import UIKit

class Add_event: UIViewController {

    @IBOutlet weak var textf_evn: UITextField!
    @IBOutlet weak var textf_evi: UITextField!
    @IBOutlet weak var textf_evstr: UITextField!
    @IBOutlet weak var textf_evsta: UITextField!
    @IBOutlet weak var textf_evd: UITextField!
    @IBOutlet weak var textf_evc: UITextField!
    @IBOutlet weak var textf_evsd: UITextField!
    @IBOutlet weak var textf_eved: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func Return(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func Save(_ sender: UIBarButtonItem) {
        let name=textf_evn?.text
        let id=textf_evi?.text
        let street=textf_evstr?.text
        let city=textf_evc?.text
        let state=textf_evsta?.text
        let description=textf_evd?.text
        let start_date=textf_evsd?.text
        let end_date=textf_eved?.text
        var have=false
        if(name==""||id==""||street==""||city==""||state==""||description==""||start_date==""||end_date=="")
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
        let pattern2="^[0-9]{4}-[0-1]{1}[0-9]{1}-[0-9]{2}$"
        let regex2 = try? NSRegularExpression(pattern: pattern2, options: [])
        guard let results2 = regex2?.matches(in: end_date!, options: [], range: NSRange(location: 0, length: (end_date?.count)!)),results2.count != 0
            else{
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "The date is not correct"
                alert.addButton(withTitle: "Understood")
                alert.show()
                return
        }
        let pattern3="^[0-9]{4}-[0-9]{2}-[0-9]{2}$"
        let regex3 = try? NSRegularExpression(pattern: pattern3, options: [])
        guard let results3 = regex3?.matches(in: start_date!, options: [], range: NSRange(location: 0, length: (start_date?.count)!)),results3.count != 0
            else{
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "The date is not correct"
                alert.addButton(withTitle: "Understood")
                alert.show()
                return
        }
        
        for i in eventlist.eventList
        {
            if( id==i.Id)
            {
                have=true
                break
            }
        }
        if have
        {
            let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "Already have the event"
            alert.addButton(withTitle: "Understood")
            alert.show()
            
        }
        else
        {
            let event:Event=Event(Id:id!,Name:name!,Description:description!,Start_Date:start_date!,End_Date:end_date!,Address: Address.init(Street:street!, City: city!, State: state!))
            eventlist.eventList.append(event)
            dismiss(animated: true, completion:nil)
        }
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
