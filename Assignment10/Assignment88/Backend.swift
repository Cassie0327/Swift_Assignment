//
//  Backend.swift
//  EmptyApp
//Name: Qian Cai
//NU ID:001389278
//  Created by 蔡倩 on 2019/10/20.
//  Copyright © 2019年 rab. All rights reserved.
//

import Foundation
import UIKit
class Address {
    var Street: String
    var City: String
    var State: String
    init(Street: String,City: String,State: String) {
        self.Street=Street
        self.City=City
        self.State=State
    }
    
}

class Event
{
    var Id:String
    var Name: String
    var Description: String
    var Start_Date:Any
    var End_Date:Any
    var Address:Address
    init(Id:String,Name:String,Description:String,Start_Date:Any,End_Date:Any,Address:Address) {
        self.Id=Id
        self.Name=Name
        self.Description=Description
        self.Start_Date=Start_Date
        self.End_Date=End_Date
        self.Address=Address
    }
    
    func addEvent(){
        
        /*      let e=Event()
         print("Please input event Id")
         guard let input1=readLine()
         else {print("No data")
         return
         }
         e.Id=IDexist(Id: input1)
         print("Please input event name")
         let input2=readLine()
         e.Name=input2
         print("Please input description")
         let input3=readLine()
         e.Description=input3
         print("Please input Start Date")
         let input4=readLine()
         e.Start_Date=input4
         print("Please input end Date")
         let input5=readLine()
         e.End_Date=input5
         print("Please input Street")
         let input6=readLine()
         e.address?.Street=input6
         print("Please input City")
         let input7=readLine()
         e.address?.City=input7
         print("Please input State")
         let input8=readLine()
         e.address?.State=input8
         eventList.append(e)*/
    }
    func UpdateEvent()
    {
        print("which Event information do you want to update?")
        guard  let d=readLine()
            else {print("No data")
                return
        }
        guard  let i=Int(d)
            else {print("No data")
                return
        }
        print("Please input event Id")
        guard let input1=readLine()
            else {print("No data")
                return
        }
        /*   eventList[i].Id=IDexist(Id: input1)
         print("Please input event name")
         let input2=readLine()
         eventList[i].Name=input2
         print("Please input description")
         let input3=readLine()
         eventList[i].Description=input3
         print("Please input Start Date")
         let input4=readLine()
         eventList[i].Start_Date=input4
         print("Please input end Date")
         let input5=readLine()
         eventList[i].End_Date=input5
         print("Please input Street")
         let input6=readLine()
         eventList[i].address?.City=input6
         print("Please input City")
         let input7=readLine()
         eventList[i].address?.City=input7
         print("Please input State")
         let input8=readLine()
         eventList[i].address?.State=input8*/
        
    }
    /*  func DeleteEvent()
     {
     print("which Event do you want to delete?")
     guard  let d=readLine()
     else {print("No data")
     return
     }
     guard  let i=Int(d)
     else {print("No data")
     return
     }
     eventList.remove(at: i)
     
     }*/
    func View()
    {
        /* var i:Int=0
         while(i<eventList.count)
         {
         print("ID of event is\(eventList[i].Id)")
         print("Name of event is\(eventList[i].Name)")
         print("Description of event is\(eventList[i].Description)")
         print("Start Date of event is\(eventList[i].Start_Date)")
         print("End Date of event is\(eventList[i].End_Date)")
         print("Address of event is\(eventList[i].address?.Street),\(eventList[i].address?.City),\(eventList[i].address?.State)")
         i=i+1
         
         
         
         }
         */
        
    }
    func Search()
    {
        /* print("which Event do you want to Search?Plese input ID of event")
         let input1=readLine()
         var i:Int=0
         while(i<eventList.count)
         {
         if(eventList[i].Id==input1)
         {
         print("ID of event is \(eventList[i].Id)")
         print("Name of event is \(eventList[i].Name)")
         print("Description of event is \(eventList[i].Description)")
         print("Start Date of event is \(eventList[i].Start_Date)")
         print("End Date of event is \(eventList[i].End_Date)")
         print("Address of event is \(eventList[i].address?.Street),\(eventList[i].address?.City),\(eventList[i].address?.State)")
         
         
         }
         i=i+1
         
         }
         */
    }
    
    
    
    /* func  IDexist(Id:String) ->  String{
     var i:Int=0
     var Idd:String
     Idd=Id
     while(i<eventList.count)
     {
     if(eventList[i].Id==Id)
     {
     
     print("The ID already exist.Please input new ID")
     
     guard let input33=readLine()
     else {print("No data")
     return ""
     }
     Idd=input33
     IDexist(Id:input33)
     
     }
     i=i+1
     
     }
     return Idd
     
     }*/
}


class User
{
    var Name: String
    var Phone: String
    var Id:String
    var Email:String
    var Interests:[String]
    var Skills:[String]
    var Subscription:[Event]=[Event]()
    var Address:Address
    init(Name:String,Id:String,Phone:String,Email:String,Interests:[String],Skills:[String],Subsciption:[Event],Address:Address) {
        self.Name=Name
        self.Id=Id
        self.Phone=Phone
        self.Email=Email
        self.Interests=Interests
        self.Skills=Skills
        self.Subscription=Subsciption
        self.Address=Address
    }
    
    
    func addUser(event:Event)
    {  /* let u=User()
         print("Please input your name")
         let input1=readLine()
         u.Name=input1
         print("Please input your Phone")
         let input2=readLine()
         u.Phone=input2
         print("Please input your ID")
         guard let input3=readLine()
         else {print("No data")
         return
         }
         u.Id=IDexist(Id: input3)
         print("Please input your Email")
         let input4=readLine()
         u.Email=input4
         print("Please input your Interests")
         guard let input5=readLine()
         else {print("No data")
         return
         }
         u.Interests.append(input5)
         print("Please input your skills")
         guard let input6=readLine()
         else {print("No data")
         return
         }
         u.Skills.append(input6)
         print("Please input the ID of Subscription")
         u.Subscription.append(u.Subscript())
         print("Please input Street")
         let input8=readLine()
         u.Address?.Street=input8
         print("Please input City")
         let input9=readLine()
         u.Address?.City=input9
         print("Please input State")
         let input10=readLine()
         u.Address?.State=input10
         userList.append(u)
         */
        
    }
    /* func  IDexist(Id:String) ->  String{
     var i:Int=0
     while(i<userList.count)
     {
     if(userList[i].Id==Id)
     {
     
     print("The ID already exist.Please input new ID")
     
     guard let input33=readLine()
     else {print("No data")
     return ""
     }
     IDexist(Id:input33)
     
     }
     i=i+1
     
     }
     return Id
     
     }
     */
    func UpdateUser(event:Event)
    {
        /*  print("whose User information do you want to update?")
         guard  let d=readLine()
         else {print("No data")
         return
         }
         guard  let i=Int(d)
         else {print("No data")
         return
         }
         print("Please input your name")
         let input1=readLine()
         userList[i].Name=input1
         print("Please input your Phone")
         let input2=readLine()
         userList[i].Phone=input2
         print("Please input your ID")
         guard let input3=readLine()
         else {print("No data")
         return
         }
         userList[i].Id=IDexist(Id: input3)
         print("Please input your Email")
         let input4=readLine()
         userList[i].Email=input4
         print("Please input your Interests")
         guard let input5=readLine()
         else {print("No data")
         return
         }
         userList[i].Interests.append(input5)
         print("Please input your skills")
         guard let input6=readLine()
         else {print("No data")
         return
         }
         userList[i].Skills.append(input6)
         print("Please input the Id of Subscription")
         userList[i].Subscription.append(Subscript())
         print("Please input Street")
         let input8=readLine()
         userList[i].Address?.Street=input8
         print("Please input City")
         let input9=readLine()
         userList[i].Address?.City=input9
         print("Please input State")
         let input10=readLine()
         userList[i].Address?.State=input10*/
        
    }
    func DeleteUser()
    {
        /*  print("which User do you want to delete?")
         guard  let d=readLine()
         else {print("No data")
         return
         }
         guard  let i=Int(d)
         else {print("No data")
         return
         }
         userList.remove(at: i)*/
    }
    func view()
    {
        /* var i:Int=0
         while(i<userList.count)
         {
         
         print("Name of user is\(userList[i].Name)")
         print("Phone of user is\(userList[i].Phone)")
         print("ID of user is\(userList[i].Id)")
         print("Email of user is\(userList[i].Email)")
         print("Interests of user is\(userList[i].Interests)")
         print("Skills of user is\(userList[i].Skills)")
         print("Subscription of user is\(userList[i].Subscription[0])")
         print("Address of user is\(userList[i].Address?.Street),\(userList[i].Address?.City),\(userList[i].Address?.State)")
         i=i+1
         */
        
        
    }
    
}
//  func Subscript()->Event
// {
/*let input7=readLine()
 var i:Int=0
 var c:Int=0
 while(i<e.eventList.count)
 {
 
 if( e.eventList[i].Id==input7)
 {   c=1
 break
 }
 
 i=i+1
 
 
 }
 while(c==0)
 {
 print("Please reinput the id")
 Subscript()
 }
 return e.eventList[i]
 */

//   }
class Eventlist
{    var eventList: [Event]=[Event]()
   
    
}
class Userlist
{
    var userList: [User]=[User]()
    
}
/*class interest
{
    var name:[String]
    var description:[String]
    init(name:[String],description:[String]) {
        self.name=name
        self.description=description
    }
}
class skil
{
    var name:[String]
    var description:[String]
    init(name:[String],description:[String]) {
        self.name=name
        self.description=description
    }
}*/
/*var sklist:[skil]=[skil]()
var inlist:[interest]=[interest]()
let in1:interest=interest(name:)

*/


let eventlist:Eventlist=Eventlist()
let userlist:Userlist=Userlist()
var interest:Eventlist=Eventlist()
var skill:Eventlist=Eventlist()
var addItemImage: [String:UIImage] = [:]
var addEvent:[String:String]=[:]


func begin()
{
    let event1:Event=Event(Id:"001",Name:"Football",Description:"This is football game",Start_Date:"2019-10-20",End_Date:"2020-1-2",Address: Address.init(Street: "360 Huntington ave", City: "Boston", State: "MA"))
    eventlist.eventList.append(event1)
    let event2:Event=Event(Id:"002",Name:"Running",Description:"This is running match",Start_Date:"2019-5-20",End_Date:"2019-10-2",Address:Address.init(Street:"327 Huntington ave" , City: "Boston", State: "MA"))
    eventlist.eventList.append(event2)
    let event3:Event=Event(Id:"003",Name:"Dancing",Description:"This is Dance",Start_Date:"2019-5-20",End_Date:"2019-10-2",Address:Address.init(Street:"150 Rivers Edge" , City: "Boston", State: "MA"))
    eventlist.eventList.append(event3)
    let event4:Event=Event(Id:"004",Name:"Eating",Description:"This is Dance",Start_Date:"2019-06-20",End_Date:"2019-11-2",Address:Address.init(Street:"250 Rivers Edge" , City: "Boston", State: "MA"))
    eventlist.eventList.append(event4)
    let event5:Event=Event(Id:"005",Name:"Hiking",Description:"This is Dance",Start_Date:"2019-06-20",End_Date:"2010-05-12",Address:Address.init(Street:"350 Rivers Edge" , City: "Boston", State: "MA"))
    eventlist.eventList.append(event5)
    
    let user1:User=User(Name:"Cassie",Id:"001",Phone:"51848383",Email:"cassie@163.com",Interests:["Eating","Running"],Skills:["Running"],Subsciption:[event2],Address:Address.init(Street:"150 Rivers Edge" , City: "Boston", State: "MA"))
    userlist.userList.append(user1)
    let user2:User=User(Name:"Mark",Id:"002",Phone:"45423823",Email:"Mark@163.com",Interests:["Football","Hiking"],Skills:["Hiking"],Subsciption:[event1],Address:Address.init(Street:"100 Rivers Edge" , City: "Boston", State: "MA"))
    userlist.userList.append(user2)
    let user3:User=User(Name:"Merry",Id:"003",Phone:"51f23483",Email:"Merry@163.com",Interests:["Eating","Dancing"],Skills:["Dancing"],Subsciption:[event2],Address:Address.init(Street:"250 Rivers Edge" , City: "New York", State: "MA"))
    userlist.userList.append(user3)
    
    addEvent[eventlist.eventList[0].Name]=eventlist.eventList[0].Description
    addEvent[eventlist.eventList[1].Name]=eventlist.eventList[1].Description
    addEvent[eventlist.eventList[2].Name]=eventlist.eventList[2].Description
    addEvent[eventlist.eventList[3].Name]=eventlist.eventList[3].Description
    addEvent[eventlist.eventList[4].Name]=eventlist.eventList[4].Description
    

 
    addItemImage["Football"]=UIImage(named:"Football.jpeg")
    addItemImage["Dancing"]=UIImage(named:"Dancing.jpeg")
    addItemImage["Running"]=UIImage(named:"Running.jpeg")
    addItemImage["Hiking"]=UIImage(named:"Hiking.jpeg")
    addItemImage["Eating"]=UIImage(named:"Eating.jpeg")
    addItemImage["Cassie"]=UIImage(named:"Cassie.jpeg")
    addItemImage["Mark"]=UIImage(named:"Mark.jpeg")
    addItemImage["Merry"]=UIImage(named:"Merry.jpeg")

    
}








