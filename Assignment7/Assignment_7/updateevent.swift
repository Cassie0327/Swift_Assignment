//
//  updateevent.swift
//  Assignment_7
//
//  Created by 蔡倩 on 2019/11/4.
//  Copyright © 2019年 Qian Cai. All rights reserved.
//

import UIKit

class updateevent: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    var imageAdded = false
    var tp1:UIDatePicker?
    var tp2:UIDatePicker?
    @IBOutlet weak var myimage: UIImageView!
    @IBOutlet var text: [UITextField]!
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            myimage.image = image
            imageAdded = true
        }
        else {
            
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       tp1=UIDatePicker()
        tp1?.datePickerMode = .date
        tp2=UIDatePicker()
        tp2?.datePickerMode = .date
        text[6].inputView = tp1
        text[7].inputView = tp2
        tp1?.addTarget(self, action:#selector(Add_event.dateChanged1(tp:)), for: .valueChanged)
        tp2?.addTarget(self, action:#selector(Add_event.dateChanged2(tp:)), for: .valueChanged)

        // Do any additional setup after loading the view.
    }
    @objc func dateChanged1(tp:UIDatePicker)
    {
        let formatter = DateFormatter()
        formatter.dateFormat="yyyy-MM-dd"
        text[6].text=formatter.string(from: tp.date)
        
       
        
    }
    @objc func dateChanged2(tp:UIDatePicker)
    {
        let formatter = DateFormatter()
        formatter.dateFormat="yyyy-MM-dd"
        text[7].text=formatter.string(from: tp.date)
        
        view.endEditing(true)
        
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Save(_ sender: UIButton) {
        let mid=text[8].text
        let name=text[0].text
        let id=text[1].text
        let street=text[2].text
        let city=text[3].text
        let state=text[4].text
        let description=text[5].text
        let start_date=text[6].text
        let end_date=text[7].text
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
                    NotificationCenter.default.post(name: NSNotification.Name(rawValue: "callForUpdate"), object: nil)
                    let image = myimage.image
                    addItemImage[name!] = image
                    let alert = UIAlertView()
                    alert.title = "Alert"
                    alert.message = "Create Succeed!"
                    alert.addButton(withTitle: "Understood")
                    alert.show()
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
    @IBAction func `import`(_ sender: UIButton) {
        let image = UIImagePickerController()
        image.delegate = self
        
        image.sourceType = UIImagePickerControllerSourceType.photoLibrary
        
        image.allowsEditing = false
        
        self.present(image, animated: true) {
            
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
