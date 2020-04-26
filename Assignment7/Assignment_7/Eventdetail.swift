//
//  Eventdetail.swift
//  Assignment_7
//
//  Created by 蔡倩 on 2019/11/4.
//  Copyright © 2019年 Qian Cai. All rights reserved.
//

import UIKit

class Eventdetail: UIViewController {
    var labeltext:String?
    var imagename: String?
    var event:Event?
    @IBOutlet weak var utext: UITextView!
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labeltext = "Event name: \(event!.Name), "+"\n"+"Event id: \(event!.Id), "+"\n"+"Event Address: \(event!.Address.Street),\(event!.Address.City),\(event!.Address.State)"+"\n"+"Event description: \(event!.Description), "+"\n"+"start date: \(event!.Start_Date)"+"\n"+"End date: \(event!.End_Date)"
        utext?.text=labeltext
        image?.image=addItemImage[imagename!]
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
