//
//  indetail.swift
//  Assignment88
//
//  Created by 蔡倩 on 11/11/19.
//  Copyright © 2019 Qian Cai. All rights reserved.
//

import UIKit

class indetail: UIViewController {
    @IBOutlet weak var myimage: UIImageView!
    var inevent:String?
    @IBOutlet weak var text: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        text.text=addEvent[inevent!]
        myimage.image=addItemImage[inevent!]
       
    }
    override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
           // Dispose of any resources that can be recreated.
       }


}
