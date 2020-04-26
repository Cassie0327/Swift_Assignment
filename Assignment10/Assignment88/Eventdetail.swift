//
//  Eventdetail.swift
//  Assignment88
//
//  Created by 蔡倩 on 11/10/19.
//  Copyright © 2019 Qian Cai. All rights reserved.
//

import UIKit

class Eventdetail: UIViewController {
    var labeltext:String?
       var imagename: String?
   
    @IBOutlet weak var utext: UITextView!
    @IBOutlet weak var myimage: UIImageView!
    var event1 : EventDetail?

    override func viewDidLoad() {
        super.viewDidLoad()
        let url=URL.init(string: event1!.logo.url)
        let data : NSData! = NSData(contentsOf: url!)
        myimage?.image=UIImage.init(data: data as Data, scale: 1)
        utext.text = labeltext
        
       

     // Do any additional setup after loading the view.
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
