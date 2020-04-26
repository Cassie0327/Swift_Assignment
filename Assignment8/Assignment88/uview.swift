//
//  uview.swift
//  Assignment88
//
//  Created by 蔡倩 on 11/11/19.
//  Copyright © 2019 Qian Cai. All rights reserved.
//

import UIKit

class uview:UITableViewController,UISearchBarDelegate{
    var isSearching = false
    var search:[User]=[User]()
    @IBOutlet var viewuser: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
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
        if(isSearching)
        {
            return search.count
        }
        else{
            return userlist.userList.count}
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "usercell", for: indexPath)
        if isSearching
        {
            
            var object=""
            var result=""
            
            object=search[indexPath.row].Name
            result="User City: \(search[indexPath.row].Address.City)"+"\n"+"id: \(search[indexPath.row].Id)"+"\n"+"Phone: \(search[indexPath.row].Phone)"
            cell.textLabel?.text=object
            cell.detailTextLabel?.text=result
            cell.imageView?.image=addItemImage[object]
        }
        else
        {
            
            var object=""
            var result=""
            object=userlist.userList[indexPath.row].Name
            result="User City: \(userlist.userList[indexPath.row].Address.City)"+"\n"+"ID: \(userlist.userList[indexPath.row].Id)"+"\n"+"Phone: \(userlist.userList[indexPath.row].Phone)"
            cell.textLabel?.text=object
            cell.detailTextLabel?.text=result
            cell.imageView?.image=addItemImage[object]
        }
        return cell
        
        
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete
        {
            userlist.userList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
       guard let id=segue.identifier else{return}
        if id=="showd"
        {
            let row=self.viewuser.indexPathForSelectedRow?.row
            if let vcg=segue.destination as? userd
            {
                
                vcg.user=userlist.userList[row!]
              //  vc.imagename=userlist.userList[row!].Name
                 vcg.section1[0]=userlist.userList[row!].Interests
                 vcg.section1[1]=userlist.userList[row!].Skills
                
            }
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
            search=userlist.userList.filter{$0.Name==str}
            updateList()
        }
    }
   

}
