//
//  DiscussDetailsViewController.swift
//  Lottery_iOS_Project
//
//  Created by ToyStory on 10/30/2559 BE.
//  Copyright © 2559 ToyStory. All rights reserved.
//

import UIKit

class DiscussDetailsViewController: UIViewController {

    let WIDTH = UIScreen.mainScreen().bounds.width
    let HEIGHT = UIScreen.mainScreen().bounds.height
    
    var discuss_bound_height: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "567"
        drawViewDiscuss()
    }

    func drawViewDiscuss(){
        let scrollView = UIScrollView(frame: CGRectMake( 0, 109, WIDTH, HEIGHT))
        scrollView.backgroundColor = UIColor(red: 249/255, green: 251/255, blue: 255/255, alpha: 1.0)
        
        
        self.view.addSubview(scrollView)
        
        let discussIndex = DiscussIndexViewController()
        let box_discuss:UIView = discussIndex.draw_box_discuss("ToyStory",hourTime: "3 minutes", numbers: "567",  message: "I found this number from my dream!", numLike: "12", isLike: true, numComment: "21")
        discuss_bound_height = box_discuss.bounds.height
        let box_reply:UIView = draw_box_reply()
        
        let replyList_bound_height = box_reply.bounds.height
        box_discuss.frame = CGRect(x: 10, y: 10,
                                   width: WIDTH-20,
                                   height: (discuss_bound_height + replyList_bound_height))
        
        box_discuss.addSubview(box_reply)
        scrollView.addSubview(box_discuss)
        let box_discuss_bound_height:CGFloat = box_discuss.bounds.height
        scrollView.contentSize = CGSize(
            width: WIDTH,
            height: box_discuss_bound_height+180)
    }
    
    func draw_box_reply() -> UIView{
        var count_view_bound_height:CGFloat = 0.0
        var view_bound_height_previous:CGFloat = 0.0
        
        let box_view = UIView(frame: CGRect(x: 10, y: discuss_bound_height, width: WIDTH-20, height: count_view_bound_height))
        
        
        for i in 0 ..< 20 {
            let view = UIView(frame: CGRect(x: 8, y: count_view_bound_height, width: WIDTH-20, height: 68))
            let v_WIDTH = view.bounds.width
            
            let view_line = UIView(frame: CGRect(x: 0, y: 0, width: v_WIDTH-30, height: 1))
            view_line.backgroundColor = UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1.0)
            view.addSubview(view_line)
            
            
            var title_Label = UILabel(frame: CGRect(x: 0, y: 7, width: v_WIDTH-30, height: 30))
            title_Label.textAlignment = .Left
            title_Label.font = UIFont.systemFontOfSize(14)
            title_Label.text = "PomKam"
            view.addSubview(title_Label)
            
            //        title_Label = UILabel(frame: CGRect(x: 15, y: 30, width: v_WIDTH-30, height: 30))
            //        title_Label.textAlignment = .Left
            //        title_Label.font = UIFont.systemFontOfSize(12)
            //        title_Label.text = "6 hours ago"
            //        view.addSubview(title_Label)
            
            title_Label = UILabel(frame: CGRect(x: 0, y: 30, width: v_WIDTH-30, height: 30))
            title_Label.textAlignment = .Left
            title_Label.font = UIFont.systemFontOfSize(13)
            title_Label.text = "I ever have buy this number at last time then I did not got haha"
            view.addSubview(title_Label)
            
            view_bound_height_previous = view.bounds.height
            count_view_bound_height += view_bound_height_previous
            
            box_view.addSubview(view)
        }
        
        box_view.frame = CGRect(x: 10, y: discuss_bound_height,
                                   width: WIDTH-20,
                                   height: count_view_bound_height)
        
        return box_view
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    

}
