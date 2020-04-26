//
//  Update event.swift
//  Assignment_6
//
//  Created by 蔡倩 on 2019/10/27.
//  Copyright © 2019年 Qian Cai. All rights reserved.
//

import UIKit

class Update_event: UIViewController {
   
    @IBOutlet var Eventdetail: [UITextField]!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func Return(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func Save(_ sender: UIBarButtonItem) {
        let mid=Eventdetail[8].text
        let name=Eventdetail[0].text
        let id=Eventdetail[1].text
        let street=Eventdetail[2].text
        let city=Eventdetail[3].text
        let state=Eventdetail[4].text
        let description=Eventdetail[5].text
        let start_date=Eventdetail[6].text
        let end_date=Eventdetail[7].text
        var have=true
        var h=false
        if(mid==""||name==""||id==""||street==""||city==""||state==""||description==""||start_date==""||end_date=="")
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
        for n in eventlist.eventList
        {
            if(id==n.Id)
            {
                h=true
                break
            }
        }
        if h
        {
            let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "The id has been exist"
            alert.addButton(withTitle: "Understood")
            alert.show()
            return
        }
        else{
        var j=0;
        for m in eventlist.eventList
        {
            
            if(mid==m.Id)
            {
                have=false
                eventlist.eventList.remove(at:j)
                let event:Event=Event(Id:id!,Name:name!,Description:description!,Start_Date:start_date!,End_Date:end_date!,Address: Address.init(Street:street!, City: city!, State: state!))
                eventlist.eventList.insert(event, at: j)
               dismiss(animated: true, completion: nil)
                return
            }
            j=j+1;
            
        }
        
        if have
        {
            let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "Not match event"
            alert.addButton(withTitle: "Understood")
            alert.show()
            
            }}
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
