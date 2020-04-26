//
//  ViewController.swift
//  Assignment_6
//
//  Created by 蔡倩 on 2019/10/27.
//  Copyright © 2019年 Qian Cai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func Addevent(_ sender: UIButton) {
        let adde=Add_event(nibName: "Add event", bundle: nil)
        adde.modalTransitionStyle = .coverVertical
        self.present(adde, animated: true, completion: nil)
    }
    @IBAction func Vevent(_ sender: UIButton) {
        let viewe=View_event(nibName: "View event", bundle: nil)
        viewe.modalTransitionStyle = .coverVertical
        self.present(viewe, animated: true, completion: nil)
    }
    @IBAction func Updateevent(_ sender: UIButton) {
        let updatee=Update_event(nibName: "Update event", bundle: nil)
        updatee.modalTransitionStyle = .coverVertical
        self.present(updatee, animated: true, completion: nil)
        
    }
    @IBAction func Searchevent(_ sender: UIButton) {
        let updatee=Search_event(nibName: "Search event", bundle: nil)
        updatee.modalTransitionStyle = .coverVertical
        self.present(updatee, animated: true, completion: nil)
        
    }
    @IBAction func Deleteevent(_ sender: UIButton) {
        let updatee=Delete_event(nibName: "Delete event", bundle: nil)
        updatee.modalTransitionStyle = .coverVertical
        self.present(updatee, animated: true, completion: nil)
    }
    @IBAction func Adduser(_ sender: UIButton) {
        let addu=Add_user(nibName: "adduser", bundle: nil)
        addu.modalTransitionStyle = .coverVertical
        self.present(addu, animated: true, completion: nil)
        
    }
    
    @IBAction func Updateuser(_ sender: UIButton) {
        let updatee=Update_user(nibName: "Update user", bundle: nil)
        updatee.modalTransitionStyle = .coverVertical
        self.present(updatee, animated: true, completion: nil)
    }
    @IBAction func Deleteuser(_ sender: UIButton) {
        let updatee=Delete_user(nibName: "Delete user", bundle: nil)
        updatee.modalTransitionStyle = .coverVertical
        self.present(updatee, animated: true, completion: nil)
    }
    @IBAction func Viewuser(_ sender: UIButton) {
        let updatee=View_user(nibName: "View user", bundle: nil)
        updatee.modalTransitionStyle = .coverVertical
        self.present(updatee, animated: true, completion: nil)
    }
    @IBAction func Subescription(_ sender: UIButton) {
        let updatee=Describe(nibName: "Describe", bundle: nil)
        updatee.modalTransitionStyle = .coverVertical
        self.present(updatee, animated: true, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

