//
//  userd.swift
//  Assignment88
//
//  Created by 蔡倩 on 11/11/19.
//  Copyright © 2019 Qian Cai. All rights reserved.
//

import UIKit

class userd: UITableViewController {

 
    @IBOutlet weak var uitext: UITextView!
    
    var section1:[Int:[String]]=[:]
    var section2:[Int:String]=[:]
    var user:User?
    var label:String?
    @IBOutlet var dview: UITableView!
    @IBOutlet weak var myimage: UIImageView!
    
    override func viewDidLoad() {
         super.viewDidLoad()
         section2[0] = "Interests"
         section2[1] = "Skills"
          NotificationCenter.default.addObserver(self, selector: #selector(updateList), name: NSNotification.Name(rawValue: "callForUpdate"), object: nil)
         uitext.text="user name:\(user!.Name)"+"\n"+"user Id:\(user!.Id)"+"\n"+"user Address:\(user!.Address.Street),\(user!.Address.City),\(user!.Address.State)"+"\n"+"user Phone:\(user!.Phone)"+"\n"+"user Email:\(user!.Email)"+"\n"
         myimage.image=addItemImage[user!.Name]
     }

     @objc public func updateList() {
          dview.reloadData()
     }
     override func numberOfSections(in tableView: UITableView) -> Int {
         
         return 2
     }
     override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
         return section2[section]
     }
     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         // #warning Incomplete implementation, return the number of rows
         return section1[section]!.count
         
     }
     
     override func didReceiveMemoryWarning() {
         super.didReceiveMemoryWarning()
         // Dispose of any resources that can be recreated.
     }
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell1=tableView.dequeueReusableCell(withIdentifier: "userin", for: indexPath)
        var object1=""
         //   object1=(user?.Interests[indexPath.row])!
           object1=section1[indexPath.section]![indexPath.row]
         //  result1=addEvent[object1]!
         cell1.textLabel?.text=object1
         // cell.detailTextLabel?.text=result
         cell1.imageView?.image=addItemImage[object1]
         return cell1
         
         
         
         
     }
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         
         guard let id=segue.identifier else{return}
         if id=="showin"
         {
             let section=self.dview.indexPathForSelectedRow?.section
             let row=self.dview.indexPathForSelectedRow?.row
             if let vdd=segue.destination as? indetail
             {
                 vdd.inevent=section1[section!]![row!]
                 
                 //  vc.imagename=userlist.userList[row!].Name
                 
                 
             }
         }
         
         
     }
    }
