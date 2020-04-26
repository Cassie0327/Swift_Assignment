//
//  Eventview.swift
//  Assignment9
//
//  Created by 蔡倩 on 11/17/19.
//  Copyright © 2019 Qian Cai. All rights reserved.
//

import UIKit
import CoreData

class Eventview: UITableViewController,UISearchBarDelegate,UISearchResultsUpdating {
    
func updateSearchResults(for searchController: UISearchController) {
    
}
    var isSearching = false
    var search:[NSManagedObject]? = [NSManagedObject]()
      
    @IBOutlet var eventview: UITableView!
    
    @IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(updateList), name: NSNotification.Name(rawValue: "callForUpdate"), object: nil)
                 self.navigationItem.leftBarButtonItem=self.editButtonItem
                 searchBar.delegate=self
                 searchBar.returnKeyType=UIReturnKeyType.done

    }

    @objc public func updateList() {
             eventview.reloadData()
         }

         override func didReceiveMemoryWarning() {
             super.didReceiveMemoryWarning()
             // Dispose of any resources that can be recreated.
         }


         override func numberOfSections(in tableView: UITableView) -> Int {
             return 1
         }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         var context=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Event")
        request.returnsObjectsAsFaults = false
        if isSearching
        {
            return search!.count
        }
        else{
        do{
            let result1 = try context.fetch(request)
            return result1.count
                
            }
        catch
        {
            print("Failed")
            return 0

            }}
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell=tableView.dequeueReusableCell(withIdentifier: "eventcell", for: indexPath)
        if isSearching
        {
            var id = search![indexPath.row].value(forKey: "event_id") as! String
            var start = search![indexPath.row].value(forKey: "start_date") as! String
            var end = search![indexPath.row].value(forKey: "end_date") as! String
            var city = search![indexPath.row].value(forKey: "city") as! String
            var object=search![indexPath.row].value(forKey: "event_name") as! String
             var result="Event id:"+id+"\n"+"Event city:"+city+"\n"+"Start date:"+start+"\n"+"End date:"+end
            cell.textLabel?.text=object
            cell.detailTextLabel?.text=result
            cell.imageView?.image = addItemImage[object]

            
        }
        else{
          var context=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
                 let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Event")
                 request.returnsObjectsAsFaults = false
                 do{
                     let result1 = try context.fetch(request)
                      var id = (result1[indexPath.row] as! NSManagedObject).value(forKey: "event_id") as! String
                    var city = (result1[indexPath.row] as! NSManagedObject).value(forKey: "city") as! String
                    var start = (result1[indexPath.row] as! NSManagedObject).value(forKey: "start_date") as! String
                    var end = (result1[indexPath.row] as! NSManagedObject).value(forKey: "end_date") as! String
                    var object=(result1[indexPath.row] as! NSManagedObject).value(forKey: "event_name") as! String
                    var result="Event id:"+id+"\n"+"Event city:"+city+"\n"+"Start date:"+start+"\n"+"End date:"+end
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
          if editingStyle == .delete
          {
              tableView.deleteRows(at: [indexPath], with: .fade)
          }
      }
    
    
      func searchBar(_ SearchBtn: UISearchBar, textDidChange searchText: String) {
       var context=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
                            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Event")
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
                            if((data.value(forKey:"event_name") as! String) ==  str)
                            {
                                search?.insert(data, at: 0)
                            }
                       
                        }

                         }
                     catch{
                        print("Failed")

            }
            updateList()

            
           
              
          }
      }
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var context=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
                                   let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Event")
                                   request.returnsObjectsAsFaults = false
               
         
         guard let id=segue.identifier else{return}
             if id=="showeventdetial"
                           {
                let row=self.eventview.indexPathForSelectedRow?.row
             if let vcd=segue.destination as? Eventdetail
                {
                    do{
                        let result1 = try context.fetch(request)
                        vcd.imagename=(result1[row!] as! NSManagedObject).value(forKey: "event_name") as! String
                         vcd.labeltext="Event name: \((result1[row!] as! NSManagedObject).value(forKey: "event_name") as! String), "+"\n"+"Event id: \((result1[row!] as! NSManagedObject).value(forKey: "event_id") as! String), "+"\n"+"Event Address: \((result1[row!] as! NSManagedObject).value(forKey: "street") as! String),\((result1[row!] as! NSManagedObject).value(forKey: "city") as! String),\((result1[row!] as! NSManagedObject).value(forKey: "state") as! String)"+"\n"+"Event description: \((result1[row!] as! NSManagedObject).value(forKey: "event_description") as! String), "+"\n"+"start date: \((result1[row!] as! NSManagedObject).value(forKey: "start_date") as! String)"+"\n"+"End date: \((result1[row!] as! NSManagedObject).value(forKey: "end_date") as! String)"

                                 }
                             catch{
                                print("Failed")

                    }
                    
                   
            
                    
                            }}
                
        
        }


        
             


    }
