//
//  updateevent.swift
//  Assignment88
//
//  Created by 蔡倩 on 11/11/19.
//  Copyright © 2019 Qian Cai. All rights reserved.
//

import UIKit

class updateevent: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    var imageAdded = false
     var tp1:UIDatePicker?
     var tp2:UIDatePicker?
  
    @IBOutlet var text: [UITextField]!
    @IBOutlet weak var myimage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tp1=UIDatePicker()
                  tp1?.datePickerMode = .date
                  tp2=UIDatePicker()
                  tp2?.datePickerMode = .date
                  text[6].inputView = tp1
                  text[7].inputView = tp2
                  tp1?.addTarget(self, action:#selector(Addevent.dateChanged1(tp:)), for: .valueChanged)
                  tp2?.addTarget(self, action:#selector(Addevent.dateChanged2(tp:)), for: .valueChanged)
                  
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
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
           if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                  myimage.image = image
                  imageAdded = true
              }
              else {
                  
              }
              
              dismiss(animated: true, completion: nil)
          }
    @IBAction func import2(_ sender: UIButton) {
        let image = UIImagePickerController()
               image.delegate = self
               
        image.sourceType = UIImagePickerController.SourceType.photoLibrary
               
               image.allowsEditing = false
               
               self.present(image, animated: true) {
                   
               }
    }
    @IBAction func save2(_ sender: UIButton) {
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
                     let alertController = UIAlertController(title: "Alert", message: "The required field is missing", preferredStyle: UIAlertController.Style.alert)
                      let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                          (result : UIAlertAction) -> Void in
                       print("OK")
                      }
                         alertController.addAction(okAction)
                       self.present(alertController, animated: true, completion: nil)
                  }
                  
                  let pattern1="^[0-9]+$"
                  let regex1 = try? NSRegularExpression(pattern: pattern1, options: [])
                  guard let results1 = regex1?.matches(in: id!, options: [], range: NSRange(location: 0, length: (id?.count)!)),results1.count != 0
                      else{
                          let alertController = UIAlertController(title: "Alert", message: "The id is not correct!", preferredStyle: UIAlertController.Style.alert)
                                  let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                                      (result : UIAlertAction) -> Void in
                                   print("OK")
                                  }
                                     alertController.addAction(okAction)
                                   self.present(alertController, animated: true, completion: nil)
                          return
                  }
                
                  let pattern4="^[0-9]+$"
                  let regex4 = try? NSRegularExpression(pattern: pattern4, options: [])
                  guard let results4 = regex4?.matches(in: mid!, options: [], range: NSRange(location: 0, length: (mid?.count)!)),results1.count != 0
                      else{
                     let alertController = UIAlertController(title: "Alert", message: "The id is not correct!", preferredStyle: UIAlertController.Style.alert)
                                  let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                                      (result : UIAlertAction) -> Void in
                                   print("OK")
                                  }
                                     alertController.addAction(okAction)
                                   self.present(alertController, animated: true, completion: nil)
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
                     let alertController = UIAlertController(title: "Alert", message: "Create Succeed!", preferredStyle: UIAlertController.Style.alert)
                          let okAction = UIAlertAction(title: "The id has been exist", style: UIAlertAction.Style.default) {
                              (result : UIAlertAction) -> Void in
                           print("OK")
                      
                       }
                   alertController.addAction(okAction)
                   self.present(alertController, animated: true, completion: nil)
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
                              let alertController = UIAlertController(title: "Alert", message: "Create Succeed!", preferredStyle: UIAlertController.Style.alert)
                              let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                                  (result : UIAlertAction) -> Void in
                               print("OK")
                          
                           }
                           alertController.addAction(okAction)
                           self.present(alertController, animated: true, completion: nil)
                       }
                          j=j+1;
                          
                      }
                      
                      if have
                      {
                        let alertController = UIAlertController(title: "Alert", message: "No match event", preferredStyle: UIAlertController.Style.alert)
                          let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                              (result : UIAlertAction) -> Void in
                           print("OK")
                       }
                          
                      }
               }}
           
           @IBAction func `import`(_ sender: UIButton) {
           let image = UIImagePickerController()
                  image.delegate = self
                  
               image.sourceType = UIImagePickerController.SourceType.photoLibrary
                  
                  image.allowsEditing = false
                  
                  self.present(image, animated: true) {
                      
                  }
           }
    }
   
