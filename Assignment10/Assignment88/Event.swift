//
//  Event.swift
//  Assignment88
//
//  Created by 蔡倩 on 11/25/19.
//  Copyright © 2019 Qian Cai. All rights reserved.
//

import Foundation
struct EventResponse: Decodable{
    var events:[EventDetail]
}

struct EventDetail:Decodable
{
    var name:nameinfo
    var description:descriptioninfo
    var id:String
    var start:startinfo
    var end:endinfo
    var organization_id:String
    var logo:logoifo
    
  
    
}
struct nameinfo:Decodable {
    var text: String
   
  
    
}
struct descriptioninfo:Decodable {
    var text: String
}
struct startinfo:Decodable {
    var local: String
}
struct endinfo:Decodable {
    var local: String
}
struct logoifo:Decodable
{
    var url: String
}

