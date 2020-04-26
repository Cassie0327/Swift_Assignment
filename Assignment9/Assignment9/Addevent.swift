//
//  Addevent.swift
//  Assignment9
//
//  Created by 蔡倩 on 11/18/19.
//  Copyright © 2019 Qian Cai. All rights reserved.
//

import UIKit
import CoreData

class Addevent: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate{

    @IBOutlet weak var myimage: UIImageView!
    
    @IBOutlet var text: [UITextField]!
    var tp1:UIDatePicker?
    var tp2:UIDatePicker?
    var imageAdded = false
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
    
    @IBAction func save(_ sender: UIButton) {
       let name=text[0].text
        let id=text[1].text
        let street=text[2].text
        let city=text[3].text
        let state=text[4].text
        let description=text[5].text
        let start_date=text[6].text
        let end_date=text[7].text
        var have=false
        var app = UIApplication.shared.delegate as! AppDelegate
       var context=app.persistentContainer.viewContext
       let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Event")
       request.returnsObjectsAsFaults = false
        if(name==""||id==""||street==""||city==""||state==""||description==""||start_date==""||end_date=="")
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
              
              do{
                            let result1 = try context.fetch(request)
                          for data in result1 as! [NSManagedObject]
                          {
                              if((data.value(forKey:"event_id") as! String) == id)
                              {
                                  have=true
                                  break
                                
                            }
                         
                          }

                           }
                       catch{
                          print("Failed")

              }
               
              
               if have
               {
                   let alertController = UIAlertController(title: "Alert", message: "Already have the event!", preferredStyle: UIAlertController.Style.alert)
                          let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                              (result : UIAlertAction) -> Void in
                           print("OK")
                          }
                             alertController.addAction(okAction)
                           self.present(alertController, animated: true, completion: nil)
               }
               else
               {
                
                  let entity1 = NSEntityDescription.entity(forEntityName: "Event", in: context)
                  let newEntity1 = NSManagedObject(entity: entity1!, insertInto: context)
                newEntity1.setValue(id!, forKey: "event_id")
                  newEntity1.setValue(name!, forKey: "event_name")
                  newEntity1.setValue(description!, forKey: "event_description")
                  newEntity1.setValue(start_date!, forKey: "start_date")
                  newEntity1.setValue(end_date!, forKey: "end_date")
                  newEntity1.setValue(state!, forKey: "state")
                  newEntity1.setValue(city!, forKey: "city")
                  newEntity1.setValue(street!, forKey: "street")
                   NotificationCenter.default.post(name: NSNotification.Name(rawValue: "callForUpdate"), object: nil)
                    
                
                   let image = myimage.image
                   addItemImage[name!] = image
                    app.saveContext()
                   let alertController = UIAlertController(title: "Alert", message: "Create Succeed!", preferredStyle: UIAlertController.Style.alert)
                  let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                      (result : UIAlertAction) -> Void in
                   print("OK")
                  }
                     alertController.addAction(okAction)
                   self.present(alertController, animated: true, completion: nil)
               }
        
    }
    @IBAction func `import`(_ sender: UIButton) {
        let image = UIImagePickerController()
              image.delegate = self
              
        image.sourceType = UIImagePickerController.SourceType.photoLibrary
              
              image.allowsEditing = false
              
              self.present(image, animated: true) {
                  
              }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
