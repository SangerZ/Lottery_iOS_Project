//
//  DiscussIndexViewController.swift
//  Lottery_iOS_Project
//
//  Created by ToyStory on 10/30/2559 BE.
//  Copyright © 2559 ToyStory. All rights reserved.
//

import UIKit

class DiscussIndexViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    let WIDTH = UIScreen.mainScreen().bounds.width
    let HEIGHT = UIScreen.mainScreen().bounds.height
    
    @IBOutlet var tableView_: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //drawViewDiscuss()
        tableView_.backgroundColor = UIColor(red: 249/255, green: 251/255, blue: 255/255, alpha: 1.0)
        tableView_.contentInset = UIEdgeInsetsMake(45, 0, 8, 0);
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        //tableView.separatorStyle = UIColor(red: 249/255, green: 251/255, blue: 255/255, alpha: 1.0)
        return 10;
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 212.0;//Choose your custom row height
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("discussIndex_Cell") as UITableViewCell!
        cell.backgroundColor = UIColor(red: 249/255, green: 251/255, blue: 255/255, alpha: 1.0)
        let box_discuss:UIView = draw_box_discuss("ToyStory", hourTime: "3 minutes", numbers: "561222",
                         message: "I found this number from my dream!", numLike: "12", isLike: true, numComment: "21")
        
        cell.addSubview(box_discuss)
        
        
        return cell
    }
    
    
    //-------------------------------------- Draw ------------------------------------
    
    func drawViewDiscuss(){
        let scrollView = UIScrollView(frame: CGRectMake( 0, 109, WIDTH, HEIGHT)) // y = -64
        scrollView.backgroundColor = UIColor(red: 249/255, green: 251/255, blue: 255/255, alpha: 1.0)
        
        
        self.view.addSubview(scrollView)
        
        var count_box_discuss_bound_height:CGFloat = 10.0
        for i in 0 ..< 7 {
            
            let box_discuss:UIView = draw_box_discuss("ToyStory",hourTime: "3 minutes", numbers: "56122"+String(i),  message: "I found this number from my dream!", numLike: "12", isLike: true, numComment: "21")
            scrollView.addSubview(box_discuss)
            
            box_discuss.frame = CGRect(x: 10, y: count_box_discuss_bound_height,
                                       width: WIDTH-20,
                                       height: (200))
            
            count_box_discuss_bound_height += box_discuss.bounds.height+10
        }
        
        scrollView.contentSize = CGSize(
            width: WIDTH,
            height: count_box_discuss_bound_height+160)
//        box_discuss = draw_box_discuss("Pom",hourTime: "5 hours", numbers: "123452",  message: "I found this number from my dream!", numLike: "12", isLike: true, numComment: "21")
//        scrollView.addSubview(box_discuss)
        
    }
    
    func draw_box_discuss(userName: String, hourTime:String, numbers:String, message:String, numLike:String, isLike:Bool, numComment:String) -> UIView{
        let view = UIView(frame: CGRect(x: 10, y: 10, width: WIDTH-20, height: 193))
        view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        view.layer.cornerRadius = 3
        view.layer.shadowColor = UIColor(red: 134/255, green: 134/255, blue: 134/255, alpha: 0.41).CGColor
        
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 1
        view.layer.borderWidth = 0
        let v_WIDTH = view.bounds.width
        //let v_HEIGHT = view.bounds.height
        
        var title_Label = UILabel(frame: CGRect(x: 15, y: 10, width: v_WIDTH-30, height: 30))
        title_Label.textAlignment = .Left
        title_Label.font = UIFont.systemFontOfSize(16)
        title_Label.text = userName
        view.addSubview(title_Label)
        
        title_Label = UILabel(frame: CGRect(x: 15, y: 29, width: v_WIDTH-30, height: 30))
        title_Label.textAlignment = .Left
        title_Label.font = UIFont.systemFontOfSize(10)
        title_Label.text = hourTime + " ago"
        view.addSubview(title_Label)
        
        title_Label = UILabel(frame: CGRect(x: 15, y: 60, width: v_WIDTH-30, height: 60))
        title_Label.textAlignment = .Center
        title_Label.font = UIFont.systemFontOfSize(50)
        title_Label.text = numbers
        view.addSubview(title_Label)
        
        title_Label = UILabel(frame: CGRect(x: 15, y: 130, width: v_WIDTH-30, height: 30))
        title_Label.textAlignment = .Left
        title_Label.font = UIFont.systemFontOfSize(13)
        title_Label.text = message
        view.addSubview(title_Label)
        
        let view_bar_number = UIView(frame: CGRect(x: 15, y: 160, width: v_WIDTH-30, height: 1))
        view_bar_number.backgroundColor = UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1.0)
        view.addSubview(view_bar_number)
        
        let button_like = UIButton(frame: CGRect(x: 10, y: 170, width: WIDTH/2-25, height: 19))
        button_like.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        button_like.addTarget(self, action: #selector(btn_pressLikeDiscuss), forControlEvents: .TouchUpInside)
        button_like.setTitleColor(UIColor.grayColor(), forState: UIControlState.Normal)
        button_like.setTitle(numLike, forState: .Normal)
        button_like.titleLabel!.font =  UIFont(name: "Helvetica-Bold", size: 13)
        button_like.setImage(UIImage(named: "icon_like"), forState: UIControlState.Normal)
        button_like.imageEdgeInsets = UIEdgeInsetsMake(0,70,0,70)
        view.addSubview(button_like)
        
        let button_comment = UIButton(frame: CGRect(x: WIDTH/2-20, y: 170, width: WIDTH/2-30, height: 19))
        button_comment.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        button_comment.addTarget(self, action: #selector(btn_pushTosee_DiscussReply), forControlEvents: .TouchUpInside)
        button_comment.setTitleColor(UIColor.grayColor(), forState: UIControlState.Normal)
        button_comment.setTitle(numComment, forState: .Normal)
        button_comment.titleLabel!.font =  UIFont(name: "Helvetica-Bold", size: 13)
        button_comment.setImage(UIImage(named: "icon_comment"), forState: UIControlState.Normal)
        button_comment.imageEdgeInsets = UIEdgeInsetsMake(0,70,0,70)
        view.addSubview(button_comment)
        
        return view
    }
    
    func btn_pressLikeDiscuss(){
        print("LIKE")
    }
    
    func btn_pushTosee_DiscussReply(){
        let vc = self.storyboard?.instantiateViewControllerWithIdentifier("DiscussDetail_Storyboard_id") as! DiscussDetailsViewController
        //vc.faculty_details = foodList[sender.tag] as! NSDictionary
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
