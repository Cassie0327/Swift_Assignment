//
//  AppDelegate.swift
//  EmptyApp
//
//Name: Qian Cai
//NU ID:001389278
//  Created by rab on 10/15/17.
//  Copyright © 2017 rab. All rights reserved.
//

import UIKit
import Foundation

@objc
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var addView: UIView?
    var mainView: UIView?
    var addevView:UIView?
    var adduvView:UIView?
    var viewuView: UIView?
    var upevView:UIView?
    var upuvView:UIView?
    var vieweView: UIView?
    var searchView: UIView?
    var deleteeView: UIView?
    var deleteuView: UIView?


    var window: UIWindow?
    var textf_evn: UITextField?
    var textf_evi: UITextField?
    var textf_evstr: UITextField?
    var textf_evc: UITextField?
    var textf_evsta: UITextField?
    var textf_evd: UITextField?
    var textf_evsd: UITextField?
    var textf_eved: UITextField?
    
    var textf_uevn: UITextField?
    var textf_uevi: UITextField?
    var textf_uevstr: UITextField?
    var textf_uevc: UITextField?
    var textf_uevsta: UITextField?
    var textf_uevd: UITextField?
    var textf_uevsd: UITextField?
    var textf_ueved: UITextField?
    
    var textf_uei: UITextField?
    var textf_uui: UITextField?
    var textf_deletee:UITextField?
    var textf_deleteu:UITextField?



    
    var textf_un: UITextField?
    var textf_uid: UITextField?
    var textf_up: UITextField?
    var textf_ue: UITextField?
    var textf_us: UITextField?
    var textf_uc: UITextField?
    var textf_ust: UITextField?
    var textf_uin: UITextField?
    var textf_usk: UITextField?
    var textf_usu: UITextField?
    var textf_es:UITextField?
    
    
    var textf_uun: UITextField?
    var textf_uuid: UITextField?
    var textf_uup: UITextField?
    var textf_uue: UITextField?
    var textf_uus: UITextField?
    var textf_uuc: UITextField?
    var textf_uust: UITextField?
    var textf_uuin: UITextField?
    var textf_uusk: UITextField?
    var textf_uusu: UITextField?
    var textf_ues:UITextField?
    
    var textv_ev:UITextView?
    var textv_es:UITextView?
    var textv_uv:UITextView?
    var textv_us:UITextView?
    var textv_ese:UITextView?


    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        if let window = window {
            window.backgroundColor = UIColor.lightGray
            window.rootViewController = UIViewController()
            window.makeKeyAndVisible()
        }
    
        begin()
        let mainViewRect: CGRect = CGRect(x:0,y:0,width:500, height:800);
        mainView = UIView(frame:mainViewRect)
        mainView?.backgroundColor = UIColor.white
        window?.addSubview(mainView!);
        
        let addEBtn:UIButton = UIButton(frame: CGRect(x:10, y: 300, width: 200, height: 40))
        addEBtn.setTitle("Add Event", for: UIControlState.normal)
        addEBtn.backgroundColor = UIColor.brown
        addEBtn.addTarget(self, action:#selector(showaddeView), for: .touchUpInside)
        mainView?.addSubview(addEBtn)
        
        let updateEBtn:UIButton = UIButton(frame: CGRect(x: 10, y: 350, width: 200, height: 40))
        updateEBtn.setTitle("Update Event", for: UIControlState.normal)
        updateEBtn.backgroundColor = UIColor.brown
        updateEBtn.addTarget(self, action:#selector(showupeView), for: .touchUpInside)
        mainView?.addSubview(updateEBtn)
        
        let searchBtn:UIButton = UIButton(frame: CGRect(x: 10, y: 400, width: 200, height: 40))
        searchBtn.setTitle("Search Event", for: UIControlState.normal)
        searchBtn.backgroundColor = UIColor.brown
        searchBtn.addTarget(self, action:#selector(showSearchView), for: .touchUpInside)
        mainView?.addSubview(searchBtn)
        
        let delEBtn:UIButton = UIButton(frame: CGRect(x: 10, y: 450, width: 200, height: 40))
        delEBtn.setTitle("Delete Event", for: UIControlState.normal)
        delEBtn.backgroundColor = UIColor.brown
        delEBtn.addTarget(self, action:#selector(showdeleteeView), for: .touchUpInside)
        mainView?.addSubview(delEBtn)
        
        let viewEBtn:UIButton = UIButton(frame: CGRect(x: 10, y: 500, width: 200, height: 40))
        viewEBtn.setTitle("View Event", for: UIControlState.normal)
        viewEBtn.backgroundColor = UIColor.brown
        viewEBtn.addTarget(self, action:#selector(showvieweView), for: .touchUpInside)
        mainView?.addSubview(viewEBtn)
        
        
        let addUBtn:UIButton = UIButton(frame: CGRect(x: 220, y: 300, width: 200, height: 40))
        addUBtn.setTitle("Add User", for: UIControlState.normal)
        addUBtn.backgroundColor = UIColor.brown
        addUBtn.addTarget(self, action:#selector(showadduView), for: .touchUpInside)
        mainView?.addSubview(addUBtn)
        
        let updateUBtn:UIButton = UIButton(frame: CGRect(x: 220, y: 350, width: 200, height: 40))
        updateUBtn.setTitle("Update User", for: UIControlState.normal)
        updateUBtn.backgroundColor = UIColor.brown
        updateUBtn.addTarget(self, action:#selector(showupuView), for: .touchUpInside)
        mainView?.addSubview(updateUBtn)
        
        let delUBtn:UIButton = UIButton(frame: CGRect(x: 220, y: 400, width: 200, height: 40))
        delUBtn.setTitle("Delete User", for: UIControlState.normal)
        delUBtn.backgroundColor = UIColor.brown
        delUBtn.addTarget(self, action:#selector(showdeleteuView), for: .touchUpInside)
        mainView?.addSubview(delUBtn)
        
        let viewUBtn:UIButton = UIButton(frame: CGRect(x: 220, y: 450, width: 200, height: 40))
        viewUBtn.setTitle("View User", for: UIControlState.normal)
        viewUBtn.backgroundColor = UIColor.brown
        viewUBtn.addTarget(self, action:#selector(showviewuView), for: .touchUpInside)
        mainView?.addSubview(viewUBtn)
        
        
        //add Event view
        let addevRect: CGRect = CGRect(x:0, y:0, width:500, height: 800);
        addevView = UIView(frame: addevRect)
        addevView?.backgroundColor = UIColor.blue
        addevView?.isHidden = true
        window?.addSubview(addevView!)
        
        let aesButton: UIButton = UIButton(frame: CGRect(x: 10, y: 550, width: 200, height: 40))
        aesButton.setTitle("Save", for: UIControlState.normal)
        aesButton.backgroundColor = UIColor.brown
        aesButton.addTarget(self, action:#selector(addesave), for: .touchUpInside)
        addevView?.addSubview(aesButton)
        
        let aecButton: UIButton = UIButton(frame: CGRect(x: 220, y: 550, width: 200, height: 40))
        aecButton.setTitle("Close", for: UIControlState.normal)
        aecButton.backgroundColor = UIColor.brown
        aecButton.addTarget(self, action:#selector(hideaddeView), for: .touchUpInside)
        addevView?.addSubview(aecButton)
        
        
        //update Event view
        
        let upevRect: CGRect = CGRect(x:0, y:0, width:580, height: 800);
        upevView = UIView(frame: upevRect)
        upevView?.backgroundColor = UIColor.blue
        upevView?.isHidden = true
        window?.addSubview(upevView!)
        
        let uesButton: UIButton = UIButton(frame: CGRect(x: 10, y: 550, width: 200, height: 40))
        uesButton.setTitle("Modify", for: UIControlState.normal)
        uesButton.backgroundColor = UIColor.brown
        uesButton.addTarget(self, action:#selector(modifyevent), for: .touchUpInside)
        upevView?.addSubview(uesButton)
        
        let uecButton: UIButton = UIButton(frame: CGRect(x: 220, y: 550, width: 200, height: 40))
        uecButton.setTitle("Close", for: UIControlState.normal)
        uecButton.backgroundColor = UIColor.brown
        uecButton.addTarget(self, action:#selector(hideupeView), for: .touchUpInside)
        upevView?.addSubview(uecButton)
        
        textf_uei = UITextField(frame: CGRect(x:125.0, y:500.0, width:200.0, height:30.0))
        textf_uei?.textAlignment = NSTextAlignment.center
        textf_uei?.textColor = UIColor.blue
        textf_uei?.backgroundColor = UIColor.white
        textf_uei?.borderStyle = UITextBorderStyle.line
        textf_uei?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_uei?.clearButtonMode = .whileEditing
        textf_uei?.placeholder = "Enter text"
        textf_uei?.keyboardType = .default
        textf_uei?.returnKeyType = .done
        upevView?.addSubview(textf_uei!)
        
        let ueirect: CGRect = CGRect(x:25,y:450,width:300,height:30)
        let ueilabel: UILabel = UILabel(frame: ueirect)
        ueilabel.text = "ID of the event that need to be modified"
        ueilabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        upevView?.addSubview(ueilabel)
        
        textf_uevn = UITextField(frame: CGRect(x:125.0, y:50.0, width:200.0, height:30.0))
        textf_uevn?.textAlignment = NSTextAlignment.center
        textf_uevn?.textColor = UIColor.blue
        textf_uevn?.backgroundColor = UIColor.white
        textf_uevn?.borderStyle = UITextBorderStyle.line
        textf_uevn?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_uevn?.clearButtonMode = .whileEditing
        textf_uevn?.placeholder = "Enter text"
        textf_uevn?.keyboardType = .default
        textf_uevn?.returnKeyType = .done
        upevView?.addSubview(textf_uevn!)
        
        
        let uenrect: CGRect = CGRect(x:25,y:50,width:100,height:30)
        let uenlabel: UILabel = UILabel(frame: uenrect)
        uenlabel.text = "Event Name"
        uenlabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        upevView?.addSubview(uenlabel)
        
        
        textf_uevi = UITextField(frame: CGRect(x:125.0, y:100.0, width:200.0, height:30.0))
        textf_uevi?.textAlignment = NSTextAlignment.center
        textf_uevi?.textColor = UIColor.blue
        textf_uevi?.backgroundColor = UIColor.white
        textf_uevi?.borderStyle = UITextBorderStyle.line
        textf_uevi?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_uevi?.clearButtonMode = .whileEditing
        textf_uevi?.placeholder = "Enter text"
        textf_uevi?.keyboardType = .default
        textf_uevi?.returnKeyType = .done
        upevView?.addSubview(textf_uevi!)
        
        let ueirect2: CGRect = CGRect(x:25,y:100,width:100,height:30)
        let ueilabel2: UILabel = UILabel(frame: ueirect2)
        ueilabel2.text = "Event Id"
        ueilabel2.font = UIFont.boldSystemFont(ofSize: 16.0)
        upevView?.addSubview(ueilabel2)
        
        
        textf_uevstr = UITextField(frame: CGRect(x:125.0, y:150.0, width:200.0, height:30.0))
        textf_uevstr?.textAlignment = NSTextAlignment.center
        textf_uevstr?.textColor = UIColor.blue
        textf_uevstr?.backgroundColor = UIColor.white
        textf_uevstr?.borderStyle = UITextBorderStyle.line
        textf_uevstr?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_uevstr?.clearButtonMode = .whileEditing
        textf_uevstr?.placeholder = "Enter text"
        textf_uevstr?.keyboardType = .default
        textf_uevstr?.returnKeyType = .done
        upevView?.addSubview(textf_uevstr!)
        
        let uesrect: CGRect = CGRect(x:25,y:150,width:100,height:30)
        let ueslabel: UILabel = UILabel(frame: uesrect)
        ueslabel.text = "Street"
        ueslabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        upevView?.addSubview(ueslabel)
        
        
        textf_uevc = UITextField(frame: CGRect(x:125.0, y:200.0, width:200.0, height:30.0))
        textf_uevc?.textAlignment = NSTextAlignment.center
        textf_uevc?.textColor = UIColor.blue
        textf_uevc?.backgroundColor = UIColor.white
        textf_uevc?.borderStyle = UITextBorderStyle.line
        textf_uevc?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_uevc?.clearButtonMode = .whileEditing
        textf_uevc?.placeholder = "Enter text"
        textf_uevc?.keyboardType = .default
        textf_uevc?.returnKeyType = .done
        upevView?.addSubview(textf_uevc!)
        
        
        let uecrect: CGRect = CGRect(x:25,y:200,width:100,height:30)
        let ueclabel: UILabel = UILabel(frame: uecrect)
        ueclabel.text = "City"
        ueclabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        upevView?.addSubview(ueclabel)
        
        
        textf_uevsta = UITextField(frame: CGRect(x:125.0, y:250.0, width:200.0, height:30.0))
        textf_uevsta?.textAlignment = NSTextAlignment.center
        textf_uevsta?.textColor = UIColor.blue
        textf_uevsta?.backgroundColor = UIColor.white
        textf_uevsta?.borderStyle = UITextBorderStyle.line
        textf_uevsta?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_uevsta?.clearButtonMode = .whileEditing
        textf_uevsta?.placeholder = "Enter text"
        textf_uevsta?.keyboardType = .default
        textf_uevsta?.returnKeyType = .done
        upevView?.addSubview(textf_uevsta!)

        let uessrect: CGRect = CGRect(x:25,y:250,width:100,height:30)
        let uesslabel: UILabel = UILabel(frame: uessrect)
        uesslabel.text = "State"
        uesslabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        upevView?.addSubview(uesslabel)

        
        textf_uevd = UITextField(frame: CGRect(x:125.0, y:300.0, width:200.0, height:30.0))
        textf_uevd?.textAlignment = NSTextAlignment.center
        textf_uevd?.textColor = UIColor.blue
        textf_uevd?.backgroundColor = UIColor.white
        textf_uevd?.borderStyle = UITextBorderStyle.line
        textf_uevd?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_uevd?.clearButtonMode = .whileEditing
        textf_uevd?.placeholder = "Enter text"
        textf_uevd?.keyboardType = .default
        textf_uevd?.returnKeyType = .done
        upevView?.addSubview(textf_uevd!)
        
        
        
        let uedrect: CGRect = CGRect(x:25,y:300,width:100,height:30)
        let uedlabel: UILabel = UILabel(frame: uedrect)
        uedlabel.text = "Description"
        uedlabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        upevView?.addSubview(uedlabel)
        
        
        textf_uevsd = UITextField(frame: CGRect(x:125.0, y:350.0, width:200.0, height:30.0))
        textf_uevsd?.textAlignment = NSTextAlignment.center
        textf_uevsd?.textColor = UIColor.blue
        textf_uevsd?.backgroundColor = UIColor.white
        textf_uevsd?.borderStyle = UITextBorderStyle.line
        textf_uevsd?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_uevsd?.clearButtonMode = .whileEditing
        textf_uevsd?.placeholder = "Enter text"
        textf_uevsd?.keyboardType = .default
        textf_uevsd?.returnKeyType = .done
        upevView?.addSubview(textf_uevsd!)
        
        let uesdrect: CGRect = CGRect(x:25,y:350,width:100,height:30)
        let uesdlabel: UILabel = UILabel(frame: uesdrect)
        uesdlabel.text = "Start Date"
        uesdlabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        upevView?.addSubview(uesdlabel)
        
        textf_ueved = UITextField(frame: CGRect(x:125.0, y:400.0, width:200.0, height:30.0))
        textf_ueved?.textAlignment = NSTextAlignment.center
        textf_ueved?.textColor = UIColor.blue
        textf_ueved?.backgroundColor = UIColor.white
        textf_ueved?.borderStyle = UITextBorderStyle.line
        textf_ueved?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_ueved?.clearButtonMode = .whileEditing
        textf_ueved?.placeholder = "Enter text"
        textf_ueved?.keyboardType = .default
        textf_ueved?.returnKeyType = .done
        upevView?.addSubview(textf_ueved!)
        
        
        let ueedrect: CGRect = CGRect(x:25,y:400,width:100,height:30)
        let ueedlabel: UILabel = UILabel(frame: ueedrect)
        ueedlabel.text = "End Date"
        ueedlabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        upevView?.addSubview(ueedlabel)
        
        
        //add  event

        textf_evn = UITextField(frame: CGRect(x:125.0, y:50.0, width:200.0, height:30.0))
        textf_evn?.textAlignment = NSTextAlignment.center
        textf_evn?.textColor = UIColor.blue
        textf_evn?.backgroundColor = UIColor.white
        textf_evn?.borderStyle = UITextBorderStyle.line
        textf_evn?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_evn?.clearButtonMode = .whileEditing
        textf_evn?.placeholder = "Enter text"
        textf_evn?.keyboardType = .default
        textf_evn?.returnKeyType = .done
        addevView?.addSubview(textf_evn!)
      //  upevView?.addSubview(textf_evn!)

        
        let enrect: CGRect = CGRect(x:25,y:50,width:100,height:30)
        let enlabel: UILabel = UILabel(frame: enrect)
        enlabel.text = "Event Name"
        enlabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        addevView?.addSubview(enlabel)
     //   upevView?.addSubview(enlabel)
        
        
        textf_evi = UITextField(frame: CGRect(x:125.0, y:100.0, width:200.0, height:30.0))
        textf_evi?.textAlignment = NSTextAlignment.center
        textf_evi?.textColor = UIColor.blue
        textf_evi?.backgroundColor = UIColor.white
        textf_evi?.borderStyle = UITextBorderStyle.line
        textf_evi?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_evi?.clearButtonMode = .whileEditing
        textf_evi?.placeholder = "Enter text"
        textf_evi?.keyboardType = .default
        textf_evi?.returnKeyType = .done
        addevView?.addSubview(textf_evi!)
     //   upevView?.addSubview(textf_evi!)
        
        let eirect: CGRect = CGRect(x:25,y:100,width:100,height:30)
        let eilabel: UILabel = UILabel(frame: eirect)
        eilabel.text = "Event Id"
        eilabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        addevView?.addSubview(eilabel)
      //  upevView?.addSubview(eilabel)
        
        
        textf_evstr = UITextField(frame: CGRect(x:125.0, y:150.0, width:200.0, height:30.0))
        textf_evstr?.textAlignment = NSTextAlignment.center
        textf_evstr?.textColor = UIColor.blue
        textf_evstr?.backgroundColor = UIColor.white
        textf_evstr?.borderStyle = UITextBorderStyle.line
        textf_evstr?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_evstr?.clearButtonMode = .whileEditing
        textf_evstr?.placeholder = "Enter text"
        textf_evstr?.keyboardType = .default
        textf_evstr?.returnKeyType = .done
        addevView?.addSubview(textf_evstr!)
     //   upevView?.addSubview(textf_evstr!)
        
        let esrect: CGRect = CGRect(x:25,y:150,width:100,height:30)
        let eslabel: UILabel = UILabel(frame: esrect)
        eslabel.text = "Street"
        eslabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        addevView?.addSubview(eslabel)
      //  upevView?.addSubview(eslabel)
        
        
        textf_evc = UITextField(frame: CGRect(x:125.0, y:200.0, width:200.0, height:30.0))
        textf_evc?.textAlignment = NSTextAlignment.center
        textf_evc?.textColor = UIColor.blue
        textf_evc?.backgroundColor = UIColor.white
        textf_evc?.borderStyle = UITextBorderStyle.line
        textf_evc?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_evc?.clearButtonMode = .whileEditing
        textf_evc?.placeholder = "Enter text"
        textf_evc?.keyboardType = .default
        textf_evc?.returnKeyType = .done
        addevView?.addSubview(textf_evc!)
     //   upevView?.addSubview(textf_evc!)

        
        let ecrect: CGRect = CGRect(x:25,y:200,width:100,height:30)
        let eclabel: UILabel = UILabel(frame: ecrect)
        eclabel.text = "City"
        eclabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        addevView?.addSubview(eclabel)
    //    upevView?.addSubview(eclabel)
        
        
        textf_evsta = UITextField(frame: CGRect(x:125.0, y:250.0, width:200.0, height:30.0))
        textf_evsta?.textAlignment = NSTextAlignment.center
        textf_evsta?.textColor = UIColor.blue
        textf_evsta?.backgroundColor = UIColor.white
        textf_evsta?.borderStyle = UITextBorderStyle.line
        textf_evsta?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_evsta?.clearButtonMode = .whileEditing
        textf_evsta?.placeholder = "Enter text"
        textf_evsta?.keyboardType = .default
        textf_evsta?.returnKeyType = .done
        addevView?.addSubview(textf_evsta!)

        let essrect: CGRect = CGRect(x:25,y:250,width:100,height:30)
        let esslabel: UILabel = UILabel(frame: essrect)
        esslabel.text = "State"
        esslabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        addevView?.addSubview(esslabel)
        
        
        textf_evd = UITextField(frame: CGRect(x:125.0, y:300.0, width:200.0, height:30.0))
        textf_evd?.textAlignment = NSTextAlignment.center
        textf_evd?.textColor = UIColor.blue
        textf_evd?.backgroundColor = UIColor.white
        textf_evd?.borderStyle = UITextBorderStyle.line
        textf_evd?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_evd?.clearButtonMode = .whileEditing
        textf_evd?.placeholder = "Enter text"
        textf_evd?.keyboardType = .default
        textf_evd?.returnKeyType = .done
        addevView?.addSubview(textf_evd!)
       
        
        let edrect: CGRect = CGRect(x:25,y:300,width:100,height:30)
        let edlabel: UILabel = UILabel(frame: edrect)
        edlabel.text = "Description"
        edlabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        addevView?.addSubview(edlabel)
    
        
        textf_evsd = UITextField(frame: CGRect(x:125.0, y:350.0, width:200.0, height:30.0))
        textf_evsd?.textAlignment = NSTextAlignment.center
        textf_evsd?.textColor = UIColor.blue
        textf_evsd?.backgroundColor = UIColor.white
        textf_evsd?.borderStyle = UITextBorderStyle.line
        textf_evsd?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_evsd?.clearButtonMode = .whileEditing
        textf_evsd?.placeholder = "Enter text"
        textf_evsd?.keyboardType = .default
        textf_evsd?.returnKeyType = .done
        addevView?.addSubview(textf_evsd!)
        
        let esdrect: CGRect = CGRect(x:25,y:350,width:100,height:30)
        let esdlabel: UILabel = UILabel(frame: esdrect)
        esdlabel.text = "Start Date"
        esdlabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        addevView?.addSubview(esdlabel)
        
        textf_eved = UITextField(frame: CGRect(x:125.0, y:400.0, width:200.0, height:30.0))
        textf_eved?.textAlignment = NSTextAlignment.center
        textf_eved?.textColor = UIColor.blue
        textf_eved?.backgroundColor = UIColor.white
        textf_eved?.borderStyle = UITextBorderStyle.line
        textf_eved?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_eved?.clearButtonMode = .whileEditing
        textf_eved?.placeholder = "Enter text"
        textf_eved?.keyboardType = .default
        textf_eved?.returnKeyType = .done
        addevView?.addSubview(textf_eved!)
        
        
        let eedrect: CGRect = CGRect(x:25,y:400,width:100,height:30)
        let eedlabel: UILabel = UILabel(frame: eedrect)
        eedlabel.text = "End Date"
        eedlabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        addevView?.addSubview(eedlabel)
        
      
        
        //add user view
        let adduvRect: CGRect = CGRect(x:0, y:0, width:500, height: 800);
        adduvView = UIView(frame: adduvRect)
        adduvView?.backgroundColor = UIColor.blue
        adduvView?.isHidden = true
        window?.addSubview(adduvView!)
        
        let ausButton: UIButton = UIButton(frame: CGRect(x: 10, y: 600, width: 200, height: 40))
        ausButton.setTitle("Save", for: UIControlState.normal)
        ausButton.backgroundColor = UIColor.brown
        ausButton.addTarget(self, action:#selector(adduser), for: .touchUpInside)
        adduvView?.addSubview(ausButton)
        
        let aucButton: UIButton = UIButton(frame: CGRect(x: 220, y: 600, width: 200, height: 40))
        aucButton.setTitle("Close", for: UIControlState.normal)
        aucButton.backgroundColor = UIColor.brown
        aucButton.addTarget(self, action:#selector(hideadduView), for: .touchUpInside)
        adduvView?.addSubview(aucButton)
        
        textf_un = UITextField(frame: CGRect(x:125.0, y:100.0, width:200.0, height:30.0))
        textf_un?.textAlignment = NSTextAlignment.center
        textf_un?.textColor = UIColor.blue
        textf_un?.backgroundColor = UIColor.white
        textf_un?.borderStyle = UITextBorderStyle.line
        textf_un?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_un?.clearButtonMode = .whileEditing
        textf_un?.placeholder = "Enter text"
        textf_un?.keyboardType = .default
        textf_un?.returnKeyType = .done
        adduvView?.addSubview(textf_un!)
        
        let unrect: CGRect = CGRect(x:25,y:100,width:75,height:30)
        let unlabel: UILabel = UILabel(frame: unrect)
        unlabel.text = "Name"
        unlabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        adduvView?.addSubview(unlabel)
        
        textf_uid = UITextField(frame: CGRect(x:125.0, y:150.0, width:200.0, height:30.0))
        textf_uid?.textAlignment = NSTextAlignment.center
        textf_uid?.textColor = UIColor.blue
        textf_uid?.backgroundColor = UIColor.white
        textf_uid?.borderStyle = UITextBorderStyle.line
        textf_uid?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_uid?.clearButtonMode = .whileEditing
        textf_uid?.placeholder = "Enter text"
        textf_uid?.keyboardType = .default
        textf_uid?.returnKeyType = .done
        adduvView?.addSubview(textf_uid!)
        
        let uirect: CGRect = CGRect(x:25,y:150,width:75,height:30)
        let uilabel: UILabel = UILabel(frame: uirect)
        uilabel.text = "Id"
        uilabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        adduvView?.addSubview(uilabel)
        
        textf_up = UITextField(frame: CGRect(x:125.0, y:200.0, width:200.0, height:30.0))
        textf_up?.textAlignment = NSTextAlignment.center
        textf_up?.textColor = UIColor.blue
        textf_up?.backgroundColor = UIColor.white
        textf_up?.borderStyle = UITextBorderStyle.line
        textf_up?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_up?.clearButtonMode = .whileEditing
        textf_up?.placeholder = "Enter text"
        textf_up?.keyboardType = .default
        textf_up?.returnKeyType = .done
        adduvView?.addSubview(textf_up!)
        
        let uprect: CGRect = CGRect(x:25,y:200,width:75,height:30)
        let uplabel: UILabel = UILabel(frame: uprect)
        uplabel.text = "Phone"
        uplabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        adduvView?.addSubview(uplabel)
        
        textf_ue = UITextField(frame: CGRect(x:125.0, y:250.0, width:200.0, height:30.0))
        textf_ue?.textAlignment = NSTextAlignment.center
        textf_ue?.textColor = UIColor.blue
        textf_ue?.backgroundColor = UIColor.white
        textf_ue?.borderStyle = UITextBorderStyle.line
        textf_ue?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_ue?.clearButtonMode = .whileEditing
        textf_ue?.placeholder = "Enter text"
        textf_ue?.keyboardType = .default
        textf_ue?.returnKeyType = .done
        adduvView?.addSubview(textf_ue!)
        
        let uerect: CGRect = CGRect(x:25,y:250,width:75,height:30)
        let uelabel: UILabel = UILabel(frame: uerect)
        uelabel.text = "Email"
        uelabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        adduvView?.addSubview(uelabel)
        
        textf_us = UITextField(frame: CGRect(x:125.0, y:300.0, width:200.0, height:30.0))
        textf_us?.textAlignment = NSTextAlignment.center
        textf_us?.textColor = UIColor.blue
        textf_us?.backgroundColor = UIColor.white
        textf_us?.borderStyle = UITextBorderStyle.line
        textf_us?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_us?.clearButtonMode = .whileEditing
        textf_us?.placeholder = "Enter text"
        textf_us?.keyboardType = .default
        textf_us?.returnKeyType = .done
        adduvView?.addSubview(textf_us!)
        
        let usrect: CGRect = CGRect(x:25,y:300,width:75,height:30)
        let uslabel: UILabel = UILabel(frame: usrect)
        uslabel.text = "Street"
        uslabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        adduvView?.addSubview(uslabel)
        upuvView?.addSubview(uslabel)
        
        textf_uc = UITextField(frame: CGRect(x:125.0, y:350.0, width:200.0, height:30.0))
        textf_uc?.textAlignment = NSTextAlignment.center
        textf_uc?.textColor = UIColor.blue
        textf_uc?.backgroundColor = UIColor.white
        textf_uc?.borderStyle = UITextBorderStyle.line
        textf_uc?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_uc?.clearButtonMode = .whileEditing
        textf_uc?.placeholder = "Enter text"
        textf_uc?.keyboardType = .default
        textf_uc?.returnKeyType = .done
        adduvView?.addSubview(textf_uc!)
        
        let ucrect: CGRect = CGRect(x:25,y:350,width:75,height:30)
        let uclabel: UILabel = UILabel(frame: ucrect)
        uclabel.text = "City"
        uclabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        adduvView?.addSubview(uclabel)
        
        textf_ust = UITextField(frame: CGRect(x:125.0, y:400.0, width:200.0, height:30.0))
        textf_ust?.textAlignment = NSTextAlignment.center
        textf_ust?.textColor = UIColor.blue
        textf_ust?.backgroundColor = UIColor.white
        textf_ust?.borderStyle = UITextBorderStyle.line
        textf_ust?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_ust?.clearButtonMode = .whileEditing
        textf_ust?.placeholder = "Enter text"
        textf_ust?.keyboardType = .default
        textf_ust?.returnKeyType = .done
        adduvView?.addSubview(textf_ust!)
        
        let ussrect: CGRect = CGRect(x:25,y:400,width:75,height:30)
        let usslabel: UILabel = UILabel(frame: ussrect)
        usslabel.text = "State"
        usslabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        adduvView?.addSubview(usslabel)
        
        textf_uin = UITextField(frame: CGRect(x:125.0, y:450.0, width:200.0, height:30.0))
        textf_uin?.textAlignment = NSTextAlignment.center
        textf_uin?.textColor = UIColor.blue
        textf_uin?.backgroundColor = UIColor.white
        textf_uin?.borderStyle = UITextBorderStyle.line
        textf_uin?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_uin?.clearButtonMode = .whileEditing
        textf_uin?.placeholder = "Enter text"
        textf_uin?.keyboardType = .default
        textf_uin?.returnKeyType = .done
        adduvView?.addSubview(textf_uin!)
        
        let uinrect: CGRect = CGRect(x:25,y:450,width:75,height:30)
        let uinlabel: UILabel = UILabel(frame: uinrect)
        uinlabel.text = "Interest"
        uinlabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        adduvView?.addSubview(uinlabel)
        
        textf_usk = UITextField(frame: CGRect(x:125.0, y:500.0, width:200.0, height:30.0))
        textf_usk?.textAlignment = NSTextAlignment.center
        textf_usk?.textColor = UIColor.blue
        textf_usk?.backgroundColor = UIColor.white
        textf_usk?.borderStyle = UITextBorderStyle.line
        textf_usk?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_usk?.clearButtonMode = .whileEditing
        textf_usk?.placeholder = "Enter text"
        textf_usk?.keyboardType = .default
        textf_usk?.returnKeyType = .done
        adduvView?.addSubview(textf_usk!)
        
        let uskrect: CGRect = CGRect(x:25,y:500,width:75,height:30)
        let usklabel: UILabel = UILabel(frame: uskrect)
        usklabel.text = "Skills"
        usklabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        adduvView?.addSubview(usklabel)
        
        textf_usu = UITextField(frame: CGRect(x:125.0, y:550.0, width:200.0, height:30.0))
        textf_usu?.textAlignment = NSTextAlignment.center
        textf_usu?.textColor = UIColor.blue
        textf_usu?.backgroundColor = UIColor.white
        textf_usu?.borderStyle = UITextBorderStyle.line
        textf_usu?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_usu?.clearButtonMode = .whileEditing
        textf_usu?.placeholder = "Enter text"
        textf_usu?.keyboardType = .default
        textf_usu?.returnKeyType = .done
        adduvView?.addSubview(textf_usu!)
        
        let usurect: CGRect = CGRect(x:25,y:550,width:100,height:30)
        let usulabel: UILabel = UILabel(frame: usurect)
        usulabel.text = "Subscription"
        usulabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        adduvView?.addSubview(usulabel)
        
        
        
        //update User view
        
        let upuvRect: CGRect = CGRect(x:0, y:0, width:500, height: 800);
        upuvView = UIView(frame: upevRect)
        upuvView?.backgroundColor = UIColor.blue
        upuvView?.isHidden = true
        window?.addSubview(upuvView!)
        
        let uusButton: UIButton = UIButton(frame: CGRect(x: 10, y: 650, width: 200, height: 40))
        uusButton.setTitle("Modify", for: UIControlState.normal)
        uusButton.backgroundColor = UIColor.brown
        uusButton.addTarget(self, action:#selector(upuser), for: .touchUpInside)
        upuvView?.addSubview(uusButton)
        
        let uucButton: UIButton = UIButton(frame: CGRect(x: 220, y: 650, width: 200, height: 40))
        uucButton.setTitle("Close", for: UIControlState.normal)
        uucButton.backgroundColor = UIColor.brown
        uucButton.addTarget(self, action:#selector(hideupuView), for: .touchUpInside)
        upuvView?.addSubview(uucButton)
        
        textf_uui = UITextField(frame: CGRect(x:125.0, y:600.0, width:200.0, height:30.0))
        textf_uui?.textAlignment = NSTextAlignment.center
        textf_uui?.textColor = UIColor.blue
        textf_uui?.backgroundColor = UIColor.white
        textf_uui?.borderStyle = UITextBorderStyle.line
        textf_uui?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_uui?.clearButtonMode = .whileEditing
        textf_uui?.placeholder = "Enter text"
        textf_uui?.keyboardType = .default
        textf_uui?.returnKeyType = .done
        upuvView?.addSubview(textf_uui!)
        
        
        let uuirect: CGRect = CGRect(x:25,y:550,width:400,height:30)
        let uuilabel: UILabel = UILabel(frame: uuirect)
        uuilabel.text = "ID of the user that need to be modified"
        uuilabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        upuvView?.addSubview(uuilabel)
        
        textf_uun = UITextField(frame: CGRect(x:125.0, y:50.0, width:200.0, height:30.0))
        textf_uun?.textAlignment = NSTextAlignment.center
        textf_uun?.textColor = UIColor.blue
        textf_uun?.backgroundColor = UIColor.white
        textf_uun?.borderStyle = UITextBorderStyle.line
        textf_uun?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_uun?.clearButtonMode = .whileEditing
        textf_uun?.placeholder = "Enter text"
        textf_uun?.keyboardType = .default
        textf_uun?.returnKeyType = .done
        upuvView?.addSubview(textf_uun!)
        
        let uunrect: CGRect = CGRect(x:25,y:50,width:75,height:30)
        let uunlabel: UILabel = UILabel(frame: uunrect)
        uunlabel.text = "Name"
        uunlabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        upuvView?.addSubview(uunlabel)
        
        textf_uuid = UITextField(frame: CGRect(x:125.0, y:100.0, width:200.0, height:30.0))
        textf_uuid?.textAlignment = NSTextAlignment.center
        textf_uuid?.textColor = UIColor.blue
        textf_uuid?.backgroundColor = UIColor.white
        textf_uuid?.borderStyle = UITextBorderStyle.line
        textf_uuid?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_uuid?.clearButtonMode = .whileEditing
        textf_uuid?.placeholder = "Enter text"
        textf_uuid?.keyboardType = .default
        textf_uuid?.returnKeyType = .done
        upuvView?.addSubview(textf_uuid!)
        
        let uuidrect: CGRect = CGRect(x:25,y:100,width:75,height:30)
        let uuidlabel: UILabel = UILabel(frame: uuidrect)
        uuidlabel.text = "Id"
        uuidlabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        upuvView?.addSubview(uuidlabel)
        
        textf_uup = UITextField(frame: CGRect(x:125.0, y:150.0, width:200.0, height:30.0))
        textf_uup?.textAlignment = NSTextAlignment.center
        textf_uup?.textColor = UIColor.blue
        textf_uup?.backgroundColor = UIColor.white
        textf_uup?.borderStyle = UITextBorderStyle.line
        textf_uup?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_uup?.clearButtonMode = .whileEditing
        textf_uup?.placeholder = "Enter text"
        textf_uup?.keyboardType = .default
        textf_uup?.returnKeyType = .done
        upuvView?.addSubview(textf_uup!)
        
        let uuprect: CGRect = CGRect(x:25,y:150,width:75,height:30)
        let uuplabel: UILabel = UILabel(frame: uuprect)
        uuplabel.text = "Phone"
        uuplabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        upuvView?.addSubview(uuplabel)
        
        textf_uue = UITextField(frame: CGRect(x:125.0, y:200.0, width:200.0, height:30.0))
        textf_uue?.textAlignment = NSTextAlignment.center
        textf_uue?.textColor = UIColor.blue
        textf_uue?.backgroundColor = UIColor.white
        textf_uue?.borderStyle = UITextBorderStyle.line
        textf_uue?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_uue?.clearButtonMode = .whileEditing
        textf_uue?.placeholder = "Enter text"
        textf_uue?.keyboardType = .default
        textf_uue?.returnKeyType = .done
        upuvView?.addSubview(textf_uue!)
        
        let uuerect: CGRect = CGRect(x:25,y:200,width:75,height:30)
        let uuelabel: UILabel = UILabel(frame: uuerect)
        uuelabel.text = "Email"
        uuelabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        upuvView?.addSubview(uuelabel)
        
        textf_uus = UITextField(frame: CGRect(x:125.0, y:250.0, width:200.0, height:30.0))
        textf_uus?.textAlignment = NSTextAlignment.center
        textf_uus?.textColor = UIColor.blue
        textf_uus?.backgroundColor = UIColor.white
        textf_uus?.borderStyle = UITextBorderStyle.line
        textf_uus?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_uus?.clearButtonMode = .whileEditing
        textf_uus?.placeholder = "Enter text"
        textf_uus?.keyboardType = .default
        textf_uus?.returnKeyType = .done
        upuvView?.addSubview(textf_uus!)
        
        let uusrect: CGRect = CGRect(x:25,y:250,width:75,height:30)
        let uuslabel: UILabel = UILabel(frame: uusrect)
        uuslabel.text = "Street"
        uuslabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        upuvView?.addSubview(uuslabel)
        
        textf_uuc = UITextField(frame: CGRect(x:125.0, y:300.0, width:200.0, height:30.0))
        textf_uuc?.textAlignment = NSTextAlignment.center
        textf_uuc?.textColor = UIColor.blue
        textf_uuc?.backgroundColor = UIColor.white
        textf_uuc?.borderStyle = UITextBorderStyle.line
        textf_uuc?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_uuc?.clearButtonMode = .whileEditing
        textf_uuc?.placeholder = "Enter text"
        textf_uuc?.keyboardType = .default
        textf_uuc?.returnKeyType = .done
        upuvView?.addSubview(textf_uuc!)
        
        let uucrect: CGRect = CGRect(x:25,y:300,width:75,height:30)
        let uuclabel: UILabel = UILabel(frame: uucrect)
        uuclabel.text = "City"
        uuclabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        upuvView?.addSubview(uuclabel)
        
        textf_uust = UITextField(frame: CGRect(x:125.0, y:350.0, width:200.0, height:30.0))
        textf_uust?.textAlignment = NSTextAlignment.center
        textf_uust?.textColor = UIColor.blue
        textf_uust?.backgroundColor = UIColor.white
        textf_uust?.borderStyle = UITextBorderStyle.line
        textf_uust?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_uust?.clearButtonMode = .whileEditing
        textf_uust?.placeholder = "Enter text"
        textf_uust?.keyboardType = .default
        textf_uust?.returnKeyType = .done
        upuvView?.addSubview(textf_uust!)
        
        let uussrect: CGRect = CGRect(x:25,y:350,width:75,height:30)
        let uusslabel: UILabel = UILabel(frame: uussrect)
        uusslabel.text = "State"
        uusslabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        upuvView?.addSubview(uusslabel)
        
        textf_uuin = UITextField(frame: CGRect(x:125.0, y:400.0, width:200.0, height:30.0))
        textf_uuin?.textAlignment = NSTextAlignment.center
        textf_uuin?.textColor = UIColor.blue
        textf_uuin?.backgroundColor = UIColor.white
        textf_uuin?.borderStyle = UITextBorderStyle.line
        textf_uuin?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_uuin?.clearButtonMode = .whileEditing
        textf_uuin?.placeholder = "Enter text"
        textf_uuin?.keyboardType = .default
        textf_uuin?.returnKeyType = .done
        upuvView?.addSubview(textf_uuin!)
        
        let uuinrect: CGRect = CGRect(x:25,y:400,width:75,height:30)
        let uuinlabel: UILabel = UILabel(frame: uuinrect)
        uuinlabel.text = "Interest"
        uuinlabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        upuvView?.addSubview(uuinlabel)
        
        textf_uusk = UITextField(frame: CGRect(x:125.0, y:450.0, width:200.0, height:30.0))
        textf_uusk?.textAlignment = NSTextAlignment.center
        textf_uusk?.textColor = UIColor.blue
        textf_uusk?.backgroundColor = UIColor.white
        textf_uusk?.borderStyle = UITextBorderStyle.line
        textf_uusk?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_uusk?.clearButtonMode = .whileEditing
        textf_uusk?.placeholder = "Enter text"
        textf_uusk?.keyboardType = .default
        textf_uusk?.returnKeyType = .done
        upuvView?.addSubview(textf_uusk!)
        
        let uuskrect: CGRect = CGRect(x:25,y:450,width:75,height:30)
        let uusklabel: UILabel = UILabel(frame: uuskrect)
        uusklabel.text = "Skills"
        uusklabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        upuvView?.addSubview(uusklabel)
        
        textf_uusu = UITextField(frame: CGRect(x:125.0, y:500.0, width:200.0, height:30.0))
        textf_uusu?.textAlignment = NSTextAlignment.center
        textf_uusu?.textColor = UIColor.blue
        textf_uusu?.backgroundColor = UIColor.white
        textf_uusu?.borderStyle = UITextBorderStyle.line
        textf_uusu?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_uusu?.clearButtonMode = .whileEditing
        textf_uusu?.placeholder = "Enter text"
        textf_uusu?.keyboardType = .default
        textf_uusu?.returnKeyType = .done
        upuvView?.addSubview(textf_uusu!)
        
        let uusurect: CGRect = CGRect(x:25,y:500,width:100,height:30)
        let uusulabel: UILabel = UILabel(frame: uusurect)
        uusulabel.text = "Subscription"
        uusulabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        upuvView?.addSubview(uusulabel)

        
       
        
        // view event detail
        let vieweRect: CGRect = CGRect(x:0, y:0, width:500, height: 800);
        vieweView = UIView(frame:  vieweRect)
        vieweView?.backgroundColor = UIColor.blue
        vieweView?.isHidden = true
        window?.addSubview(vieweView!)
        
        
        let vecButton: UIButton = UIButton(frame: CGRect(x: 100, y: 450, width: 200, height: 40))
        vecButton.setTitle("Close", for: UIControlState.normal)
        vecButton.backgroundColor = UIColor.brown
        vecButton.addTarget(self, action:#selector(hidevieweView), for: .touchUpInside)
        vieweView?.addSubview(vecButton)
        
        let ltextRect: CGRect = CGRect(x:50, y:50, width: 320, height: 350)
        textv_ev = UITextView(frame: ltextRect)
        textv_ev?.isEditable = false
        vieweView?.addSubview(textv_ev!)
        
        //search event
        let searchRect: CGRect = CGRect(x:0, y:0, width:500, height: 800);
        searchView = UIView(frame: searchRect)
        searchView?.backgroundColor = UIColor.blue
        searchView?.isHidden = true
        window?.addSubview(searchView!)
        
        let searchButton: UIButton = UIButton(frame: CGRect(x: 50, y: 550, width: 150, height: 40))
        searchButton.setTitle("Search", for: UIControlState.normal)
        searchButton.backgroundColor = UIColor.brown
        searchButton.addTarget(self, action:#selector(showSearchResultView), for: .touchUpInside)
        searchView?.addSubview(searchButton)
        
        let rSearchButton: UIButton = UIButton(frame: CGRect(x: 250, y: 550, width: 150, height: 40))
        rSearchButton.setTitle("Close", for: UIControlState.normal)
        rSearchButton.backgroundColor = UIColor.brown
        rSearchButton.addTarget(self, action:#selector(hideSearchView), for: .touchUpInside)
        searchView?.addSubview(rSearchButton)
        
        textf_es = UITextField(frame: CGRect(x:125.0, y:450.0, width:200.0, height:30.0))
        textf_es?.textAlignment = NSTextAlignment.center
        textf_es?.textColor = UIColor.blue
        textf_es?.backgroundColor = UIColor.white
        textf_es?.borderStyle = UITextBorderStyle.line
        textf_es?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_es?.clearButtonMode = .whileEditing
        textf_es?.placeholder = "Enter the id of event."
        textf_es?.keyboardType = .default
        textf_es?.returnKeyType = .done
        searchView?.addSubview(textf_es!)
        
        let stextRect: CGRect = CGRect(x:50, y:50, width: 320, height: 350)
        textv_ese = UITextView(frame: stextRect)
        textv_ese?.isEditable = false
        searchView?.addSubview(textv_ese!)
        
        //delete event
        let deleteeRect: CGRect = CGRect(x:0, y:0, width:500, height: 800);
        deleteeView = UIView(frame: searchRect)
        deleteeView?.backgroundColor = UIColor.blue
        deleteeView?.isHidden = true
        window?.addSubview(deleteeView!)
        
        let deleteeButton: UIButton = UIButton(frame: CGRect(x: 50, y: 550, width: 150, height: 40))
        deleteeButton.setTitle("delete", for: UIControlState.normal)
        deleteeButton.backgroundColor = UIColor.brown
        deleteeButton.addTarget(self, action:#selector(deletee), for: .touchUpInside)
        deleteeView?.addSubview(deleteeButton)
        
        let cdeleteeButton: UIButton = UIButton(frame: CGRect(x: 250, y: 550, width: 150, height: 40))
        cdeleteeButton.setTitle("Close", for: UIControlState.normal)
        cdeleteeButton.backgroundColor = UIColor.brown
        cdeleteeButton.addTarget(self, action:#selector(hidedeleteeView), for: .touchUpInside)
        deleteeView?.addSubview(cdeleteeButton)
        
        textf_deletee = UITextField(frame: CGRect(x:125.0, y:450.0, width:200.0, height:30.0))
        textf_deletee?.textAlignment = NSTextAlignment.center
        textf_deletee?.textColor = UIColor.blue
        textf_deletee?.backgroundColor = UIColor.white
        textf_deletee?.borderStyle = UITextBorderStyle.line
        textf_deletee?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_deletee?.clearButtonMode = .whileEditing
        textf_deletee?.placeholder = "Enter the id of event."
        textf_deletee?.keyboardType = .default
        textf_deletee?.returnKeyType = .done
        deleteeView?.addSubview(textf_deletee!)
        //delete user
        
        let deleteuRect: CGRect = CGRect(x:0, y:0, width:500, height: 800);
        deleteuView = UIView(frame: searchRect)
        deleteuView?.backgroundColor = UIColor.blue
        deleteuView?.isHidden = true
        window?.addSubview(deleteuView!)
        
        let deleteuButton: UIButton = UIButton(frame: CGRect(x: 50, y: 550, width: 150, height: 40))
        deleteuButton.setTitle("delete", for: UIControlState.normal)
        deleteuButton.backgroundColor = UIColor.brown
        deleteuButton.addTarget(self, action:#selector(deleteu), for: .touchUpInside)
        deleteuView?.addSubview(deleteuButton)
        
        let cdeleteuButton: UIButton = UIButton(frame: CGRect(x: 250, y: 550, width: 150, height: 40))
        cdeleteuButton.setTitle("Close", for: UIControlState.normal)
        cdeleteuButton.backgroundColor = UIColor.brown
        cdeleteuButton.addTarget(self, action:#selector(hidedeleteuView), for: .touchUpInside)
        deleteuView?.addSubview(cdeleteuButton)
        
        textf_deleteu = UITextField(frame: CGRect(x:125.0, y:450.0, width:200.0, height:30.0))
        textf_deleteu?.textAlignment = NSTextAlignment.center
        textf_deleteu?.textColor = UIColor.blue
        textf_deleteu?.backgroundColor = UIColor.white
        textf_deleteu?.borderStyle = UITextBorderStyle.line
        textf_deleteu?.autocapitalizationType = UITextAutocapitalizationType.words
        textf_deleteu?.clearButtonMode = .whileEditing
        textf_deleteu?.placeholder = "Enter the id of user."
        textf_deleteu?.keyboardType = .default
        textf_deleteu?.returnKeyType = .done
        deleteuView?.addSubview(textf_deleteu!)
        
        //view user detail
        let viewuRect: CGRect = CGRect(x:0, y:0, width:500, height: 800);
        viewuView = UIView(frame:  vieweRect)
        viewuView?.backgroundColor = UIColor.blue
        viewuView?.isHidden = true
        window?.addSubview(viewuView!)
        
        let vucButton: UIButton = UIButton(frame: CGRect(x: 100, y: 450, width: 200, height: 40))
        vucButton.setTitle("Close", for: UIControlState.normal)
        vucButton.backgroundColor = UIColor.brown
        vucButton.addTarget(self, action:#selector(hideviewuView), for: .touchUpInside)
        viewuView?.addSubview(vucButton)
        
        let uvtextRect: CGRect = CGRect(x:50, y:50, width: 320, height: 350)
        textv_uv = UITextView(frame: uvtextRect)
        textv_uv?.isEditable = false
        viewuView?.addSubview(textv_uv!)
        
        


        return true
    }
    @objc func showaddeView() {
        addevView?.isHidden = false
    }
    @objc func showupeView() {
        upevView?.isHidden = false
    }
    @objc func hideaddeView() {
        addevView?.isHidden = true
    }
    @objc func hideupeView() {
        upevView?.isHidden = true
    }
    @objc func showadduView() {
        adduvView?.isHidden = false
    }
    @objc func showupuView() {
        upuvView?.isHidden = false
    }
    @objc func hideadduView() {
        adduvView?.isHidden = true
    }
    @objc func hideupuView() {
        upuvView?.isHidden = true
    }
    @objc func showvieweView()
    {
        var result:String="";
        for i in eventlist.eventList
        {
            result = result + "\n"+"Name:\(i.Name),Id:\(i.Id),Description:\(i.Description),Start Date:\(i.Start_Date),End Date:\(i.End_Date),Address:\(i.Address.Street),\(i.Address.City),\(i.Address.State)"+"____________________________"
        }
        textv_ev?.text=result
        vieweView?.isHidden=false
    }
    @objc func hidevieweView()
    {
        vieweView?.isHidden=true
    }
    @objc func showviewuView()
    {
        var result:String="";
        for i in userlist.userList
         {
            result=result+"\n"+"Name:\(i.Name)"+"\n"+"Id:\(i.Id)"+"\n"+"phone:\(i.Phone)"+"\n"+"Email:\(i.Email)"+"\n"+"Interests:\(i.Interests)"+"\n"+"Skills:\(i.Skills)"+"\n"+"Address:\(i.Address.Street),\(i.Address.City),\(i.Address.State)"+"\n"+"Subscription:\(i.Subscription[0].Name))"+"_________NEXT"
            
        }
        textv_uv?.text=result
        viewuView?.isHidden=false
    }
    @objc func hideviewuView()
    {
        viewuView?.isHidden=true
    }
    @objc func showSearchView()
    {
        searchView?.isHidden=false
    }
    @objc func hideSearchView()
    {
        searchView?.isHidden=true
    }
    
    @objc func showdeleteeView()
    {
        deleteeView?.isHidden=false
    }
    @objc func hidedeleteeView()
    {
        deleteeView?.isHidden=true
    }
    @objc func showdeleteuView()
    {
        deleteuView?.isHidden=false
    }
  @objc  func hidedeleteuView()
    {
        deleteuView?.isHidden=true
    }
   @objc func deletee()
    {
        let i=textf_deletee?.text
        var have=true
        var m:Int=0;

        for n in eventlist.eventList
        {
            if(n.Id==i)
            {
                have=false
                eventlist.eventList.remove(at: m)
                deleteeView?.isHidden=true
                break
            }
            m=m+1
        }
        if(have==true)
        {
            let alert = UIAlertView()
        alert.title = "Alert"
        alert.message = "Not match event"
        alert.addButton(withTitle: "Understood")
            alert.show()
            
        }
        
    }
    @objc func deleteu()
    {
        let i=textf_deleteu?.text
        var have=true
        var m:Int=0;
        
        for n in userlist.userList
        {
            if(n.Id==i)
            {
                have=false
                userlist.userList.remove(at: m)
                deleteuView?.isHidden=true
                break
            }
            m=m+1
        }
        if(have==true)
        {let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "Not match user"
            alert.addButton(withTitle: "Understood")
            alert.show()}
        
    }
    
    
    
    
    @objc func addesave()
    {
        let name=textf_evn?.text
        let id=textf_evi?.text
        let street=textf_evstr?.text
        let city=textf_evc?.text
        let state=textf_evsta?.text
        let description=textf_evd?.text
        let start_date=textf_evsd?.text
        let end_date=textf_eved?.text
        var have=false
        if(name==""||id==""||street==""||city==""||state==""||description==""||start_date==""||end_date=="")
        {
            let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "The required field is missing"
            alert.addButton(withTitle: "Understood")
            alert.show()
        }
     
        let pattern1="^[0-9]+$"
        let regex1 = try? NSRegularExpression(pattern: pattern1, options: [])
        guard let results1 = regex1?.matches(in: id!, options: [], range: NSRange(location: 0, length: (id?.count)!)),results1.count != 0
        else{
            let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "The id is not correct"
            alert.addButton(withTitle: "Understood")
            alert.show()
            return
            }
        let pattern2="^[0-9]{4}-[0-1]{1}[0-9]{1}-[0-9]{2}$"
        let regex2 = try? NSRegularExpression(pattern: pattern2, options: [])
        guard let results2 = regex2?.matches(in: end_date!, options: [], range: NSRange(location: 0, length: (end_date?.count)!)),results2.count != 0
            else{
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "The date is not correct"
                alert.addButton(withTitle: "Understood")
                alert.show()
                return
        }
        let pattern3="^[0-9]{4}-[0-9]{2}-[0-9]{2}$"
        let regex3 = try? NSRegularExpression(pattern: pattern3, options: [])
        guard let results3 = regex3?.matches(in: start_date!, options: [], range: NSRange(location: 0, length: (start_date?.count)!)),results3.count != 0
            else{
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "The date is not correct"
                alert.addButton(withTitle: "Understood")
                alert.show()
                return
        }
    
        for i in eventlist.eventList
        {
            if( id==i.Id)
            {
                have=true
                break
            }
        }
        if have
        {
            let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "Already have the event"
            alert.addButton(withTitle: "Understood")
            alert.show()
            
        }
        else
        {
            let event:Event=Event(Id:id!,Name:name!,Description:description!,Start_Date:start_date!,End_Date:end_date!,Address: Address.init(Street:street!, City: city!, State: state!))
            eventlist.eventList.append(event)
            addevView?.isHidden=true
    
        }
    }
    @objc func  modifyevent()
    {
        let mid=textf_uei?.text
        let name=textf_uevn?.text
        let id=textf_uevi?.text
        let street=textf_uevstr?.text
        let city=textf_uevc?.text
        let state=textf_uevsta?.text
        let description=textf_uevd?.text
        let start_date=textf_uevsd?.text
        let end_date=textf_ueved?.text
        var have=true
        var h=false
        if(mid==""||name==""||id==""||street==""||city==""||state==""||description==""||start_date==""||end_date=="")
        {
            let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "The required field is missing"
            alert.addButton(withTitle: "Understood")
            alert.show()
        }
        
        let pattern1="^[0-9]+$"
        let regex1 = try? NSRegularExpression(pattern: pattern1, options: [])
        guard let results1 = regex1?.matches(in: id!, options: [], range: NSRange(location: 0, length: (id?.count)!)),results1.count != 0
            else{
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "The id is not correct"
                alert.addButton(withTitle: "Understood")
                alert.show()
                return
        }
        let pattern2="^[0-9]{4}-[0-1]{1}[0-9]{1}-[0-9]{2}$"
        let regex2 = try? NSRegularExpression(pattern: pattern2, options: [])
        guard let results2 = regex2?.matches(in: end_date!, options: [], range: NSRange(location: 0, length: (end_date?.count)!)),results2.count != 0
            else{
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "The date is not correct"
                alert.addButton(withTitle: "Understood")
                alert.show()
                return
        }
        let pattern3="^[0-9]{4}-[0-9]{2}-[0-9]{2}$"
        let regex3 = try? NSRegularExpression(pattern: pattern3, options: [])
        guard let results3 = regex3?.matches(in: start_date!, options: [], range: NSRange(location: 0, length: (start_date?.count)!)),results3.count != 0
            else{
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "The date is not correct"
                alert.addButton(withTitle: "Understood")
                alert.show()
                return
        }
        let pattern4="^[0-9]+$"
        let regex4 = try? NSRegularExpression(pattern: pattern4, options: [])
        guard let results4 = regex4?.matches(in: mid!, options: [], range: NSRange(location: 0, length: (mid?.count)!)),results1.count != 0
            else{
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "The id is not correct"
                alert.addButton(withTitle: "Understood")
                alert.show()
                return
        }
        for n in eventlist.eventList
        {
            if(id==n.Id)
            {
                h=true
                break
            }
        }
        if h
        {
            let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "The id has been exist"
            alert.addButton(withTitle: "Understood")
            alert.show()
            return
        }
        
        for i in eventlist.eventList
        {
            var m=0;
            if(mid==i.Id)
            {
                have=false
                eventlist.eventList.remove(at:m)
                let event:Event=Event(Id:id!,Name:name!,Description:description!,Start_Date:start_date!,End_Date:end_date!,Address: Address.init(Street:street!, City: city!, State: state!))
                eventlist.eventList.insert(event, at: m)
                upevView?.isHidden=true
                return
            }
            m+1;

        }
        if have
        {
            let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "Not match event"
            alert.addButton(withTitle: "Understood")
            alert.show()
            
        }
       
    }
   @objc func showSearchResultView()
    {
        var result:String="";
        let id=textf_es?.text
        for i in eventlist.eventList
        {
            if i.Id==id{
         result = result + "\n"+"Name:\(i.Name),Id:\(i.Id),Description:\(i.Description),Start Date:\(i.Start_Date),End Date:\(i.End_Date),Address:\(i.Address.Street),\(i.Address.City),\(i.Address.State)"
                textv_ese?.text=result
                return
            }
            else
            {let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "No match item"
                alert.addButton(withTitle: "Understood")
                alert.show()
                return
            }
        }
        
    }
    @objc func adduser()
    {
        let name=textf_un?.text
        let id=textf_uid?.text
        let phone=textf_up?.text
        let email=textf_ue?.text
        let street=textf_us?.text
        let city=textf_uc?.text
        let state=textf_ust?.text
        let interests=textf_uin?.text
        let skills=textf_usk?.text
        let subscription=textf_usu?.text
        var have=false
        var h=true
        if(name==""||id==""||street==""||city==""||state==""||interests==""||skills==""||phone==""||email=="")
        {
            let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "The required field is missing"
            alert.addButton(withTitle: "Understood")
            alert.show()
        }
        
        let pattern1="^[0-9]+$"
        let regex1 = try? NSRegularExpression(pattern: pattern1, options: [])
        guard let results1 = regex1?.matches(in: id!, options: [], range: NSRange(location: 0, length: (id?.count)!)),results1.count != 0
            else{
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "The id is not correct"
                alert.addButton(withTitle: "Understood")
                alert.show()
                return
        }
        let pattern2="^[0-9]+$"
        let regex2 = try? NSRegularExpression(pattern: pattern2, options: [])
        guard let results2 = regex2?.matches(in: phone!, options: [], range: NSRange(location: 0, length: (phone?.count)!)),results2.count != 0
            else{
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "The phone is not correct"
                alert.addButton(withTitle: "Understood")
                alert.show()
                return
        }
        let pattern3="^[A-Z,a-z,\\d]+([-_.][A-Z,a-z,\\d]+)*@([A-Z,a-z,\\d]+[-.])+[A-Z,a-z,\\d]{2,4}"
        let regex3 = try? NSRegularExpression(pattern: pattern3, options: [])
        guard let results3 = regex3?.matches(in: email!, options: [], range: NSRange(location: 0, length: (email?.count)!)),results3.count != 0
            else{
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "The email is not correct"
                alert.addButton(withTitle: "Understood")
                alert.show()
                return
        }
        
        for i in userlist.userList
        {
            if(id==i.Id)
            {
                have=true
                break
            }
        }
        var sub:[Event]=[Event]()
        for n in eventlist.eventList
        {
            if(subscription==n.Id)
            {
                h=false
                sub.append(n)
                break
            }
        }
        if h
        {
            let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "There is not the event that you input"
            alert.addButton(withTitle: "Understood")
            alert.show()
            return
        }
        else{
        if have
        {
            let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "Already have the user"
            alert.addButton(withTitle: "Understood")
            alert.show()
            
        }
        else
        {
            let user:User=User(Name:name!,Id:id!,Phone:phone!,Email:email!,Interests:[interests!],Skills:[skills!],Subsciption:sub,Address:Address.init(Street:street!,City: city!, State: state!))
            userlist.userList.append(user)
            adduvView?.isHidden=true
        }
        }}
    @objc func upuser()
    {
        let mid=textf_uui?.text
        let name=textf_uun?.text
        let id=textf_uuid?.text
        let phone=textf_uup?.text
        let email=textf_uue?.text
        let street=textf_uus?.text
        let city=textf_uuc?.text
        let state=textf_uust?.text
        let interests=textf_uuin?.text
        let skills=textf_uusk?.text
        let subscription=textf_uusu?.text
        var have=false
        var h=true
        var h2=true
        if(name==""||id==""||street==""||city==""||state==""||interests==""||skills==""||phone==""||email=="")
        {
            let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "The required field is missing"
            alert.addButton(withTitle: "Understood")
            alert.show()
        }
        
        let pattern1="^[0-9]+$"
        let regex1 = try? NSRegularExpression(pattern: pattern1, options: [])
        guard let results1 = regex1?.matches(in: id!, options: [], range: NSRange(location: 0, length: (id?.count)!)),results1.count != 0
            else{
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "The id is not correct"
                alert.addButton(withTitle: "Understood")
                alert.show()
                return
        }
        let pattern2="^[0-9]+$"
        let regex2 = try? NSRegularExpression(pattern: pattern2, options: [])
        guard let results2 = regex2?.matches(in: phone!, options: [], range: NSRange(location: 0, length: (phone?.count)!)),results2.count != 0
            else{
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "The phone is not correct"
                alert.addButton(withTitle: "Understood")
                alert.show()
                return
        }
        let pattern3="^[A-Z,a-z,\\d]+([-_.][A-Z,a-z,\\d]+)*@([A-Z,a-z,\\d]+[-.])+[A-Z,a-z,\\d]{2,4}"
        let regex3 = try? NSRegularExpression(pattern: pattern3, options: [])
        guard let results3 = regex3?.matches(in: email!, options: [], range: NSRange(location: 0, length: (email?.count)!)),results3.count != 0
            else{
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "The email is not correct"
                alert.addButton(withTitle: "Understood")
                alert.show()
                return
        }
        let pattern4="^[0-9]+$"
        let regex4 = try? NSRegularExpression(pattern: pattern4, options: [])
        guard let results4 = regex4?.matches(in: mid!, options: [], range: NSRange(location: 0, length: (mid?.count)!)),results1.count != 0
            else{
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "The id is not correct"
                alert.addButton(withTitle: "Understood")
                alert.show()
                return
        }
        
        for i in userlist.userList
        {
            if(id==i.Id)
            {
                have=true
                break
            }
        }
        var sub:[Event]=[Event]()
        for n in eventlist.eventList
        {
            if(subscription==n.Id)
            {
                h=false
                sub.append(n)
                break
                
            }
        }
        if have
        {
            let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "Already have the user"
            alert.addButton(withTitle: "Understood")
            alert.show()
            
        }
        else{
        if h{
            let alert = UIAlertView()
            alert.title = "Alert"
            alert.message = "Not match event"
            alert.addButton(withTitle: "Understood")
            alert.show()
            
            }
        
        else{
            
            
           
        for m in userlist.userList
        {    var j=0;
            if(mid==m.Id)
            {
                h2=false
                userlist.userList.remove(at: j)
                let user:User=User(Name:name!,Id:id!,Phone:phone!,Email:email!,Interests:[interests!],Skills:[skills!],Subsciption:sub,Address:Address.init(Street:street!,City: city!, State: state!))
                userlist.userList.insert(user, at: j)
                upuvView?.isHidden=true
                
                return
                
            }
            j=j+1
                }
            
            
            if h2{
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "Not match user"
                alert.addButton(withTitle: "Understood")
                alert.show()
                
            }
            }}

    }
   
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

