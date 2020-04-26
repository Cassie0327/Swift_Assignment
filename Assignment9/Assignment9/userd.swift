//
//  userd.swift
//  Assignment9
//
//  Created by 蔡倩 on 11/18/19.
//  Copyright © 2019 Qian Cai. All rights reserved.
//

import UIKit
import CoreData

class userd: UITableViewController {
    @IBOutlet weak var utext: UITextView!
    

    @IBOutlet weak var myimage: UIImageView!
    @IBOutlet var dview: UITableView!
    var section1:[Int:String]=[:]
       var section2:[Int:String]=[:]
       var label:String?
    var imagename:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        section2[0] = "Interests"
        section2[1] = "Skills"
         NotificationCenter.default.addObserver(self, selector: #selector(updateList), name: NSNotification.Name(rawValue: "callForUpdate"), object: nil)
        
        
        utext.text=label!
        myimage.image=addItemImage[imagename!]
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    
    }

    // MARK: - Table view data source

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
        return 1
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1=tableView.dequeueReusableCell(withIdentifier: "userin", for: indexPath)
       var object1=""
        //   object1=(user?.Interests[indexPath.row])!
        object1=section1[indexPath.section]!
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
                vdd.inevent=section1[section!]!
             
             
                
                
            }
        }
        
        
    }

}
