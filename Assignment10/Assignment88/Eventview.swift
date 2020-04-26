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
    var listofEvent = [EventDetail]()
    {didSet {
    DispatchQueue.main.async {
        self.eventview.reloadData()
        }}
    }
  
    var isSearching = false
      var search  = [EventDetail]()
   
    @IBOutlet var eventview: UITableView!
        override func viewDidLoad() {
          super.viewDidLoad()
          NotificationCenter.default.addObserver(self, selector: #selector(updateList), name: NSNotification.Name(rawValue: "callForUpdate"), object: nil)
          self.navigationItem.leftBarButtonItem=self.editButtonItem
          searchBar.delegate=self
          searchBar.returnKeyType=UIReturnKeyType.done
         // searchBar(SearchBtn, textDidChange: SearchBtn.text!)
            let eventRequest = EventRequst(Api_key:"CSR42VDQ24T4VBC52COJ")
            eventRequest.getEvents{ [weak self] result in
                switch result
                {
                case.failure(let error):
                    print(error)
                case.success(let events):
                   self?.listofEvent=events
                   print(self!.listofEvent)
                   self!.eventview.reloadData()
                   
                }}

                 
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
            return listofEvent.count
            
        }
      }

       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell=tableView.dequeueReusableCell(withIdentifier: "eventcell", for: indexPath)
          if isSearching
          {
             
              var object=""
              var result=""
              
            object=search[indexPath.row].name.text
              result="start date: \(search[indexPath.row].start.local)"+"\n"+"End date: \(search[indexPath.row].end.local)"
              cell.textLabel?.text=object
              cell.detailTextLabel?.text=result
            let url=URL.init(string: search[indexPath.row].logo.url)
              let data : NSData! = NSData(contentsOf: url!)
              cell.imageView?.image = UIImage.init(data: data as Data, scale: 1)
          }
          else
          {
      
              var object=""
          var result=""
            object = listofEvent[indexPath.row].name.text
            result="start date: \(listofEvent[indexPath.row].start.local)"+"\n"+"End date: \(listofEvent[indexPath.row].end.local)"
              cell.textLabel?.text=object
              cell.detailTextLabel?.text=result
            let url=URL.init(string: listofEvent[indexPath.row].logo.url)
            let data : NSData! = NSData(contentsOf: url!)
            cell.imageView?.image = UIImage.init(data: data as Data, scale: 1)
               
          }
          return cell

        
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
            search=listofEvent.filter{$0.name.text==str}
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
                vcd.labeltext="Event name: \(search[row!].name.text), "+"\n"+"Event id: \(search[row!].id), "+"\n"+"organization_id: \(search[row!].organization_id)"+"\n"+"Event description: \(search[row!].description.text), "+"\n"+"start date: \(search[row!].start.local)"+"\n"+"End date: \(search[row!].end.local)"
                   
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
                    vcd.event1 = listofEvent[row!]
                    vcd.labeltext="Event name: \(listofEvent[row!].name.text), "+"\n"+"Event id: \(listofEvent[row!].id), "+"\n"+"organization_id: \(listofEvent[row!].organization_id)"+"\n"+"Event description: \(listofEvent[row!].description.text), "+"\n"+"start date: \(listofEvent[row!].start.local)"+"\n"+"End date: \(listofEvent[row!].end.local)"
                    
                            }}
                
        
        }

    }}
          


