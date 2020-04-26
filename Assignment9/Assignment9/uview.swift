//
//  uview.swift
//  Assignment9
//
//  Created by 蔡倩 on 11/18/19.
//  Copyright © 2019 Qian Cai. All rights reserved.
//

import UIKit
import CoreData

class uview: UITableViewController,UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet var viewuser: UITableView!
    var isSearching = false
    var search:[NSManagedObject]? = [NSManagedObject]()
    var app = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

       NotificationCenter.default.addObserver(self, selector: #selector(updateList), name: NSNotification.Name(rawValue: "callForUpdate"), object: nil)
                    self.navigationItem.leftBarButtonItem=self.editButtonItem
                    searchBar.delegate=self
                    searchBar.returnKeyType=UIReturnKeyType.done

         }
         override func didReceiveMemoryWarning() {
             super.didReceiveMemoryWarning()
             // Dispose of any resources that can be recreated.
         }
         @objc public func updateList() {
             viewuser.reloadData()
         }

         // MARK: - Table view data source

         override func numberOfSections(in tableView: UITableView) -> Int {
             // #warning Incomplete implementation, return the number of sections
             return 1
         }

         override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
             // #warning Incomplete implementation, return the number of rows
            var context=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
             let request = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
             request.returnsObjectsAsFaults = false
             if isSearching
             {
                return search!.count
             }
             else{
             do{
                 let result1 = try context.fetch(request)
                 print("fdsafa\(result1.count)")
                 return result1.count
                     
                 }
             catch
             {
                 print("Failed")
                 return 0

                 }}
         }
         override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            var context=app.persistentContainer.viewContext
             let cell=tableView.dequeueReusableCell(withIdentifier: "usercell", for: indexPath)
             if isSearching
             {
                 
                 var object=""
                 var result=""
                 
                object=search![indexPath.row].value(forKey: "user_name") as! String
                result="User City: \(search![indexPath.row].value(forKey: "city") as! String)"+"\n"+"id: \(search![indexPath.row].value(forKey: "user_id") as! String)"+"\n"+"Phone: \(search![indexPath.row].value(forKey: "phone") as! String)"
                 cell.textLabel?.text=object
                 cell.detailTextLabel?.text=result
                 cell.imageView?.image=addItemImage[object]
             }
             else
             {
              
                          let request = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
                          request.returnsObjectsAsFaults = false
                          do{
                              let result1 = try context.fetch(request)
                               var id = (result1[indexPath.row] as! NSManagedObject).value(forKey: "user_id") as! String
                             var city = (result1[indexPath.row] as! NSManagedObject).value(forKey: "city") as! String
                             var phone = (result1[indexPath.row] as! NSManagedObject).value(forKey: "phone") as! String
                             var email = (result1[indexPath.row] as! NSManagedObject).value(forKey: "email") as! String
                             var object=(result1[indexPath.row] as! NSManagedObject).value(forKey: "user_name") as! String
                             var result="User id:"+id+"\n"+"User city:"+city+"\n"+"phone:"+phone+"\n"+"email:"+email
                                 cell.textLabel?.text=object
                                 cell.detailTextLabel?.text=result
                                 cell.imageView?.image = addItemImage[object]
                                 
                              }
                          catch{
                             print("Failed")
                     }
                 }
                 return cell

             
             
         }
         override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            var context=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
            request.returnsObjectsAsFaults = false
             if editingStyle == .delete
             {
                do
                {
                    let result1 = try context.fetch(request)
                    var id = (result1[indexPath.row] as! NSManagedObject).value(forKey: "user_id") as! String
                    for one in result1 as! [User]
                    {
                        if(id==one.user_id)
                        {
                            context.delete(one)}
                    }
                    app.saveContext()
                }
                catch{
                                          print("Failed")
                                  }
                 tableView.deleteRows(at: [indexPath], with: .fade)
             }
         }
         
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
             var context=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
             let request = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
             request.returnsObjectsAsFaults = false
            
            guard let id=segue.identifier else{return}
             if id=="showd"
             {
                 let row=self.viewuser.indexPathForSelectedRow?.row
                 if let vcg=segue.destination as? userd
                 {
                     
                    do{
                        let result1 = try context.fetch(request)
                        vcg.section1[0]=(result1[row!] as! NSManagedObject).value(forKey: "interests") as! String
                        vcg.section1[1]=(result1[row!] as! NSManagedObject).value(forKey: "skills") as! String
                        
                        vcg.label="user name:\((result1[row!] as! NSManagedObject).value(forKey: "user_name") as! String)"+"\n"+"user Id:\((result1[row!] as! NSManagedObject).value(forKey: "user_id") as! String)"+"\n"+"user Address:\((result1[row!] as! NSManagedObject).value(forKey: "street") as! String),\((result1[row!] as! NSManagedObject).value(forKey: "city") as! String),\((result1[row!] as! NSManagedObject).value(forKey: "state") as! String)"+"\n"+"user Phone:\((result1[row!] as! NSManagedObject).value(forKey: "phone") as! String)"+"\n"+"user Email:\((result1[row!] as! NSManagedObject).value(forKey: "email") as! String)"+"\n"
                        vcg.imagename=(result1[row!] as! NSManagedObject).value(forKey: "user_name") as! String
                       
                          

                                  }
                              catch{
                                 print("Failed")

                     }
                     
                     
                 }
             }
             
             
         }
         func searchBar(_ SearchBtn: UISearchBar, textDidChange searchText: String) {
            var context=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
                                       let request = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
                                       request.returnsObjectsAsFaults = false
             if searchBar.text == nil || searchBar.text == "" {
                 isSearching = false
                 view.endEditing(true)
                 updateList()
             }
             else {
                isSearching = true
                 
                 var str:String
                 str=searchBar.text!
                        do{
                               let result1 = try context.fetch(request)
                             for data in result1 as! [NSManagedObject]
                             {
                                 if((data.value(forKey:"user_name") as! String) ==  str)
                                 {
                                    search?.insert(data as! User, at: 0)
                                 }
                            
                             }

                              }
                          catch{
                             print("Failed")

                 }
                 updateList()

                 
             }
         }
        

}
