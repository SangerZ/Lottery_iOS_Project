//
//  LotterySearchViewController.swift
//  Lottery_iOS_Project
//
//  Created by ToyStory on 10/31/2559 BE.
//  Copyright © 2559 ToyStory. All rights reserved.
//

import UIKit

class LotterySearchViewController: UIViewController {

    let WIDTH = UIScreen.mainScreen().bounds.width
    let HEIGHT = UIScreen.mainScreen().bounds.height
    var textInput = UITextField(frame: CGRect(x: 0, y: 0, width:0, height: 0))
    
    func tap(gesture: UITapGestureRecognizer) {
        textInput.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(LotterySearchViewController.tap(_:)))
        view.addGestureRecognizer(tapGesture)
        
        drawViewSearchLottery()
        
        let UI_searchResult = drawSearchResult("รางวัลที่ 5", numbers: "005095", date: "16 สิงหาคม 2559", amountPrizeBaht: "10,000")
        
        self.view.addSubview(UI_searchResult)
    }

    func drawViewSearchLottery(){
        let view_ = UIView(frame: CGRect(x: 0, y: 120, width: WIDTH-20, height: 60))
        view_.backgroundColor = UIColor(red: 249/255, green: 251/255, blue: 255/255, alpha: 1.0)
        
        let v_WIDTH = view.bounds.width
        textInput = UITextField(frame: CGRect(x: 10, y: 0, width: v_WIDTH-20, height: 40))
        
        let paddingView = UIView(frame: CGRectMake(0, 0, 15, 40))
        textInput.leftView = paddingView
        textInput.leftViewMode = UITextFieldViewMode.Always
        textInput.textAlignment = .Left
        textInput.font = UIFont.systemFontOfSize(16)
        textInput.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        textInput.layer.borderWidth = 1
        textInput.layer.borderColor = UIColor(red: 218/255, green: 226/255, blue: 237/255, alpha: 1.0).CGColor
        
        textInput.placeholder = "เลขลอตเตอรี่ 6 ตัว"
        view_.addSubview(textInput)
        
        let btn_search = UIButton(frame: CGRect(x: WIDTH-60, y: 0, width: 50, height: 40))
        btn_search.backgroundColor = UIColor(red: 255/255, green: 198/255, blue: 34/255, alpha: 1.0)
        btn_search.addTarget(self, action: #selector(btn_search_lottery_action), forControlEvents: .TouchUpInside)
        btn_search.setImage(UIImage(named: "icon_search"), forState: UIControlState.Normal)
        btn_search.imageEdgeInsets = UIEdgeInsetsMake(10,15,10,15)
        view_.addSubview(btn_search)
        
        self.view.addSubview(view_)
    }
    
    func btn_search_lottery_action(){
        
    }
    
    func drawSearchResult(namePrize: String, numbers:String, date:String, amountPrizeBaht:String) -> UIView{
        let view = UIView(frame: CGRect(x: 10, y: 175, width: WIDTH-20, height: 180))
        view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        view.layer.cornerRadius = 3
        view.layer.shadowColor = UIColor(red: 134/255, green: 134/255, blue: 134/255, alpha: 0.41).CGColor
        
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 1
        
        let v_WIDTH = view.bounds.width
        //let v_HEIGHT = view.bounds.height
        
        var label = UILabel(frame: CGRect(x: 15, y: 10, width: v_WIDTH-30, height: 30))
        label.textAlignment = .Left
        label.font = UIFont.systemFontOfSize(16)
        label.text = namePrize
        view.addSubview(label)
        
        label = UILabel(frame: CGRect(x: 15, y: 55, width: v_WIDTH-30, height: 60))
        label.textAlignment = .Center
        label.font = UIFont.systemFontOfSize(50)
        label.text = numbers
        view.addSubview(label)
        
        let view_bar_number = UIView(frame: CGRect(x: 15, y: 135, width: v_WIDTH-30, height: 1))
        view_bar_number.backgroundColor = UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1.0)
        view.addSubview(view_bar_number)
        
        label = UILabel(frame: CGRect(x: 15, y: 141, width: v_WIDTH/2, height: 30))
        label.textAlignment = .Left
        label.font = UIFont.systemFontOfSize(16)
        label.text = date
        view.addSubview(label)
        
        label = UILabel(frame: CGRect(x: v_WIDTH/2-15, y: 141, width: v_WIDTH/2, height: 30))
        label.textAlignment = .Right
        label.font = UIFont.systemFontOfSize(18)
        label.text = amountPrizeBaht +  " บาท"
        label.textColor = UIColor(red: 86/255, green: 179/255, blue: 93/255, alpha: 1.0)
        view.addSubview(label)
        
        return view
    }
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}
