//
//  Add event.swift
//  Assignment_7
//
//  Created by 蔡倩 on 2019/11/4.
//  Copyright © 2019年 Qian Cai. All rights reserved.
//

import UIKit

class  Add_event:UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate  {
 var imageAdded = false
   
    @IBOutlet weak var myimage: UIImageView!
    @IBOutlet var text: [UITextField]!
    var tp1:UIDatePicker?
    var tp2:UIDatePicker?
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
 
 
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            myimage.image = image
            imageAdded = true
        }
        else {
            
        }
        
        dismiss(animated: true, completion: nil)
    }
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func save2(_ sender: UIButton) {
        let name=text[0].text
        let id=text[1].text
        let street=text[2].text
        let city=text[3].text
        let state=text[4].text
        let description=text[5].text
        let start_date=text[6].text
        let end_date=text[7].text
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
   
    
    
    @IBAction func imp(_ sender: Any) {
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
