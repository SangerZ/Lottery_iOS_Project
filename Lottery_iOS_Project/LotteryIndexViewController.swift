//
//  LotteryIndexViewController.swift
//  Lottery_iOS_Project
//
//  Created by ToyStory on 10/30/2559 BE.
//  Copyright © 2559 ToyStory. All rights reserved.
//

import UIKit

class LotteryIndexViewController: UIViewController {

    let WIDTH = UIScreen.mainScreen().bounds.width
    let HEIGHT = UIScreen.mainScreen().bounds.height
    
    var textInput = UITextField(frame: CGRect(x: 0, y: 0, width:0, height: 0))
    
    func tap(gesture: UITapGestureRecognizer) {
        textInput.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(LotteryIndexViewController.tap(_:)))
        view.addGestureRecognizer(tapGesture)
        
        drawViewSearchLottery()
        drawViewLottery()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        let vc = self.storyboard?.instantiateViewControllerWithIdentifier("LotterySearch_Storyboard_id") as! LotterySearchViewController
        //vc.faculty_details = foodList[sender.tag] as! NSDictionary
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func drawViewLottery(){
        let scrollView = UIScrollView(frame: CGRectMake( 0, 160, WIDTH, HEIGHT)) // y = -64
        scrollView.backgroundColor = UIColor(red: 249/255, green: 251/255, blue: 255/255, alpha: 1.0)

        scrollView.contentSize = CGSize(
            width: WIDTH,
            height: HEIGHT)
        self.view.addSubview(scrollView)
        
        let view_prize_1st:UIView = draw_lottery_prize_1st()
        let view_prize_2rear:UIView = draw_lottery_prize_2rear()
        let view_prize_3front_rear:UIView = draw_lottery_prize_3front_rear()
        let button_see_more:UIView = draw_button_see_more()
        scrollView.addSubview(view_prize_1st)
        scrollView.addSubview(view_prize_2rear)
        scrollView.addSubview(view_prize_3front_rear)
        scrollView.addSubview(button_see_more)
    }
    
    func draw_button_see_more() -> UIButton{
        let button = UIButton(frame: CGRect(x: 10, y: 280, width: WIDTH-20, height: 45))
        button.backgroundColor = UIColor(red: 255/255, green: 198/255, blue: 34/255, alpha: 1.0)
        button.layer.cornerRadius = 3
        
        button.addTarget(self, action: #selector(btn_changeTo_seeMore), forControlEvents: .TouchUpInside)
        button.setTitle("ดูเพิ่มเติม", forState: .Normal)
        button.tintColor = UIColor.whiteColor()
    
        return button
    }
    
    func btn_changeTo_seeMore(sender: UIButton){
        let vc = self.storyboard?.instantiateViewControllerWithIdentifier("lotteryDetail_StoryBoard_id") as! LotteryDetailsViewController
        //vc.faculty_details = foodList[sender.tag] as! NSDictionary
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func draw_lottery_prize_1st() -> UIView{
        let view = UIView(frame: CGRect(x: 10, y: 15, width: WIDTH-20, height: 60))
        view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        view.layer.cornerRadius = 3
        view.layer.shadowColor = UIColor(red: 134/255, green: 134/255, blue: 134/255, alpha: 0.41).CGColor
        
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 1
        
        let v_WIDTH = view.bounds.width
        //let v_HEIGHT = view.bounds.height
        
        var title_Label = UILabel(frame: CGRect(x: 15, y: 15, width: v_WIDTH/2, height: 30))
        title_Label.textAlignment = .Left
        title_Label.font = UIFont.systemFontOfSize(16)
        title_Label.text = "รางวัลที่ 1"
        view.addSubview(title_Label)
        
        title_Label = UILabel(frame: CGRect(x: v_WIDTH/2, y: 15, width: v_WIDTH/2-15, height: 30))
        title_Label.textAlignment = .Right
        title_Label.font = UIFont.systemFontOfSize(34)
        
        title_Label.text = "254004"
        view.addSubview(title_Label)
        
        return view
    }
    
    func draw_lottery_prize_2rear() -> UIView{
        let view = UIView(frame: CGRect(x: 10, y: 85, width: WIDTH-20, height: 60))
        view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        view.layer.cornerRadius = 3
        view.layer.shadowColor = UIColor(red: 134/255, green: 134/255, blue: 134/255, alpha: 0.41).CGColor
        
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 1
        
        let v_WIDTH = view.bounds.width
        //let v_HEIGHT = view.bounds.height
        
        var title_Label = UILabel(frame: CGRect(x: 15, y: 15, width: v_WIDTH/2, height: 30))
        title_Label.textAlignment = .Left
        title_Label.font = UIFont.systemFontOfSize(16)
        title_Label.text = "เลขท้าย 2 ตัว"
        view.addSubview(title_Label)
        
        title_Label = UILabel(frame: CGRect(x: v_WIDTH/2, y: 15, width: v_WIDTH/2-15, height: 30))
        title_Label.textAlignment = .Right
        title_Label.font = UIFont.systemFontOfSize(24)
        
        title_Label.text = "45"
        view.addSubview(title_Label)
        
        return view
    }
    
    func draw_lottery_prize_3front_rear() -> UIView{
        let view = UIView(frame: CGRect(x: 10, y: 155, width: WIDTH-20, height: 117))
        view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        view.layer.cornerRadius = 3
        view.layer.shadowColor = UIColor(red: 134/255, green: 134/255, blue: 134/255, alpha: 0.41).CGColor
        
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 1
        
        let v_WIDTH = view.bounds.width
        //let v_HEIGHT = view.bounds.height
        
        var title_Label = UILabel(frame: CGRect(x: 15, y: 15, width: v_WIDTH/2, height: 30))
        title_Label.textAlignment = .Left
        title_Label.font = UIFont.systemFontOfSize(16)
        title_Label.text = "เลขหน้า 3 ตัว"
        view.addSubview(title_Label)
        
        title_Label = UILabel(frame: CGRect(x: v_WIDTH/2, y: 15, width: v_WIDTH/2-15, height: 30))
        title_Label.textAlignment = .Right
        title_Label.font = UIFont.systemFontOfSize(24)
        
        title_Label.text = "366  966"
        view.addSubview(title_Label)
        
        //----
        
        let view_line = UIView(frame: CGRect(x: 15, y: 58, width: WIDTH-50, height: 2))
        view_line.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1.0)
        view_line.layer.cornerRadius = 3
        view.addSubview(view_line)
        //----
        
        title_Label = UILabel(frame: CGRect(x: 15, y: 70, width: v_WIDTH/2, height: 30))
        title_Label.textAlignment = .Left
        title_Label.font = UIFont.systemFontOfSize(16)
        title_Label.text = "เลขหลัง 3 ตัว"
        view.addSubview(title_Label)
        
        title_Label = UILabel(frame: CGRect(x: v_WIDTH/2, y: 70, width: v_WIDTH/2-15, height: 30))
        title_Label.textAlignment = .Right
        title_Label.font = UIFont.systemFontOfSize(24)
        
        title_Label.text = "596  631"
        view.addSubview(title_Label)
        
        return view
    }
}
