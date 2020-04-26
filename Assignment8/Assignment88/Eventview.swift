//
//  Eventview.swift
//  Assignment88
//
//  Created by 蔡倩 on 11/10/19.
//  Copyright © 2019 Qian Cai. All rights reserved.
//

import UIKit

class Eventview:UITableViewController,UISearchBarDelegate,UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    @IBOutlet weak var searchBar: UISearchBar!
    
    var isSearching = false
      var search:[Event]=[Event]()
   
    @IBOutlet var eventview: UITableView!
    
        override func viewDidLoad() {
          super.viewDidLoad()
          NotificationCenter.default.addObserver(self, selector: #selector(updateList), name: NSNotification.Name(rawValue: "callForUpdate"), object: nil)
          self.navigationItem.leftBarButtonItem=self.editButtonItem
          searchBar.delegate=self
          searchBar.returnKeyType=UIReturnKeyType.done
         // searchBar(SearchBtn, textDidChange: SearchBtn.text!)
        
             
          

          
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
          if(isSearching)
          {
              return search.count
          }
          else{
              return eventlist.eventList.count}
      }

       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell=tableView.dequeueReusableCell(withIdentifier: "eventcell", for: indexPath)
          if isSearching
          {
             
              var object=""
              var result=""
              
              object=search[indexPath.row].Name
              result="Event City: \(search[indexPath.row].Address.City)"+"\n"+"start date: \(search[indexPath.row].Start_Date)"+"\n"+"End date: \(search[indexPath.row].End_Date)"
              cell.textLabel?.text=object
              cell.detailTextLabel?.text=result
              cell.imageView?.image=addItemImage[object]
          }
          else
          {
      
              var object=""
          var result=""
          object=eventlist.eventList[indexPath.row].Name
          result="Event City: \(eventlist.eventList[indexPath.row].Address.City)"+"\n"+"start date: \(eventlist.eventList[indexPath.row].Start_Date)"+"\n"+"End date: \(eventlist.eventList[indexPath.row].End_Date)"
              cell.textLabel?.text=object
              cell.detailTextLabel?.text=result
              cell.imageView?.image=addItemImage[object]
          }
          return cell

        
      }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
          if editingStyle == .delete
          {
              eventlist.eventList.remove(at: indexPath.row)
              tableView.deleteRows(at: [indexPath], with: .fade)
          }
      }
    
    
      func searchBar(_ SearchBtn: UISearchBar, textDidChange searchText: String) {
          if searchBar.text == nil || searchBar.text == "" {
              isSearching = false
              view.endEditing(true)
              updateList()
          }
          else {
              isSearching = true
              var str:String
              str=searchBar.text!
              search=eventlist.eventList.filter{$0.Name==str}
              updateList()
          }
      }
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if isSearching
        {
            guard let id=segue.identifier else{return}
             if id=="showeventdetial"
               {
               let row=self.eventview.indexPathForSelectedRow?.row
            if let vcd=segue.destination as? Eventdetail
               {
                  
                vcd.event1=search[row!]
                
               vcd.imagename=search[row!].Name
                   
               }
        }
        }
        else{
         guard let id=segue.identifier else{return}
             if id=="showeventdetial"
                           {
                let row=self.eventview.indexPathForSelectedRow?.row
             if let vcd=segue.destination as? Eventdetail
                {
                    vcd.event1=eventlist.eventList[row!]
                    vcd.labeltext="Event name: \(eventlist.eventList[row!].Name), "+"\n"+"Event id: \(eventlist.eventList[row!].Id), "+"\n"+"Event Address: \(eventlist.eventList[row!].Address.Street),\(eventlist.eventList[row!].Address.City),\(eventlist.eventList[row!].Address.State)"+"\n"+"Event description: \(eventlist.eventList[row!].Description), "+"\n"+"start date: \(eventlist.eventList[row!].Start_Date)"+"\n"+"End date: \(eventlist.eventList[row!].End_Date)"
                vcd.imagename=eventlist.eventList[row!].Name
                    
                            }}
                
        
        }

    }}
          


