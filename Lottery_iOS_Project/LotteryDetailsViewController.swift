//
//  LotteryDetailsViewController.swift
//  Lottery_iOS_Project
//
//  Created by ToyStory on 10/30/2559 BE.
//  Copyright © 2559 ToyStory. All rights reserved.
//

import UIKit

class LotteryDetailsViewController: UIViewController {

    let WIDTH = UIScreen.mainScreen().bounds.width
    let HEIGHT = UIScreen.mainScreen().bounds.height
    
    var view_prize_4th_height:CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drawViewLottery()
    }

    func drawViewLottery(){
        let scrollView = UIScrollView(frame: CGRectMake( 0, 109, WIDTH, HEIGHT)) // y = -64
        scrollView.backgroundColor = UIColor(red: 249/255, green: 251/255, blue: 255/255, alpha: 1.0)
        
        
        
        let lotteryIndex = LotteryIndexViewController()
        let view_prize_1st:UIView = lotteryIndex.draw_lottery_prize_1st()
        let view_prize_2rear:UIView = lotteryIndex.draw_lottery_prize_2rear()
        let view_prize_3front_rear:UIView = lotteryIndex.draw_lottery_prize_3front_rear()
        let view_prize_2nd:UIView = draw_lottery_prize_2nd()
        let view_prize_3rd:UIView = draw_lottery_prize_3rd()
        let view_prize_4th:UIView = draw_lottery_prize_4th()
        
        
            self.view_prize_4th_height = view_prize_4th.bounds.height
            let view_prize_5th:UIView = self.draw_lottery_prize_5th()
            scrollView.addSubview(view_prize_1st)
            scrollView.addSubview(view_prize_2rear)
            scrollView.addSubview(view_prize_3front_rear)
            scrollView.addSubview(view_prize_2nd)
            scrollView.addSubview(view_prize_3rd)
            scrollView.addSubview(view_prize_4th)
            scrollView.addSubview(view_prize_5th)
        
        
            let height_all_view:CGFloat = view_prize_1st.bounds.height + view_prize_2rear.bounds.height + view_prize_3front_rear.bounds.height + view_prize_2nd.bounds.height + view_prize_3rd.bounds.height + view_prize_4th.bounds.height + view_prize_5th.bounds.height
        
            scrollView.contentSize = CGSize(
            width: self.WIDTH,
            height: height_all_view+245)
            self.view.addSubview(scrollView)
        
    }
    
    func draw_lottery_prize_2nd() -> UIView{
        let view = UIView(frame: CGRect(x: 10, y: 281, width: WIDTH-20, height: 122))
        view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        view.layer.cornerRadius = 3
        view.layer.shadowColor = UIColor(red: 134/255, green: 134/255, blue: 134/255, alpha: 0.41).CGColor
        
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 1
        
        let v_WIDTH = view.bounds.width
        
        var title_Label = UILabel(frame: CGRect(x: 15, y: 12, width: v_WIDTH, height: 30))
        title_Label.textAlignment = .Left
        title_Label.font = UIFont.systemFontOfSize(16)
        title_Label.text = "รางวัลที่ 2"
        view.addSubview(title_Label)
        
        
        var count_x = 0
        for i in 0 ..< 5 {
            
            let plus_x = CGFloat(count_x)
            let plus_y = CGFloat(35*(i/4))
            
            let position_x = (v_WIDTH/4)*plus_x+15
            let position_y = 45 + plus_y
            
            title_Label = UILabel(frame: CGRect(x: position_x, y: position_y , width: v_WIDTH/4, height: 30))
            title_Label.textAlignment = .Left
            title_Label.font = UIFont.systemFontOfSize(16)
            title_Label.text = "254004"
            view.addSubview(title_Label)
            
            count_x += 1
            if (count_x%4 == 0){
                count_x = 0
            }
        }
        return view
    }
    
    func draw_lottery_prize_3rd() -> UIView{
        let view = UIView(frame: CGRect(x: 10, y: 414, width: WIDTH-20, height: 153))
        view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        view.layer.cornerRadius = 3
        view.layer.shadowColor = UIColor(red: 134/255, green: 134/255, blue: 134/255, alpha: 0.41).CGColor
        
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 1
        
        let v_WIDTH = view.bounds.width
        
        var title_Label = UILabel(frame: CGRect(x: 15, y: 12, width: v_WIDTH, height: 30))
        title_Label.textAlignment = .Left
        title_Label.font = UIFont.systemFontOfSize(16)
        title_Label.text = "รางวัลที่ 3"
        view.addSubview(title_Label)
        
        
        var count_x = 0
        for i in 0 ..< 10 {
            
            let plus_x = CGFloat(count_x)
            let plus_y = CGFloat(35*(i/4))
            
            let position_x = (v_WIDTH/4)*plus_x+15
            let position_y = 45 + plus_y
            
            title_Label = UILabel(frame: CGRect(x: position_x, y: position_y , width: v_WIDTH/4, height: 30))
            title_Label.textAlignment = .Left
            title_Label.font = UIFont.systemFontOfSize(16)
            title_Label.text = "254004"
            view.addSubview(title_Label)
            
            count_x += 1
            if (count_x%4 == 0){
                count_x = 0
            }
        }
        return view
    }
    
    
    func draw_lottery_bar_number(view: UIView, number: String) -> UIView{
        //let view = UIView(frame: CGRect(x: 10, y: 578, width: WIDTH-20, height: 503))
        
        
        return view
    }
    
    func draw_lottery_prize_4th() -> UIView{
        var calculate_height_View:CGFloat = CGFloat(0)
        let view = UIView(frame: CGRect(x: 10, y: 578, width: WIDTH-20, height: 503))
        view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        view.layer.cornerRadius = 3
        view.layer.shadowColor = UIColor(red: 134/255, green: 134/255, blue: 134/255, alpha: 0.41).CGColor
        
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 1
        
        let v_WIDTH = view.bounds.width
        
        var title_Label = UILabel(frame: CGRect(x: 15, y: 12, width: v_WIDTH, height: 30))
        title_Label.textAlignment = .Left
        title_Label.font = UIFont.systemFontOfSize(16)
        title_Label.text = "รางวัลที่ 4"
        view.addSubview(title_Label)
        calculate_height_View += title_Label.bounds.height;
        
        var count_x = 0
        var arr_lottery:[String] = lottery_arr()
        var position_y:CGFloat = CGFloat(45)
        let plus_y:CGFloat = CGFloat(32)
        
        var previous_number_first = "-1"
        for i in 0 ..< 50 {
            var current_number_first = arr_lottery[i]
            current_number_first = String(arr_lottery[i][arr_lottery[i].startIndex.advancedBy(0)])
            
            if (current_number_first != previous_number_first){
                if (previous_number_first != "-1"){
                    position_y += plus_y
                    calculate_height_View += plus_y
                }
                
                let view_bar_number = UIView(frame: CGRect(x: 0, y: position_y, width: WIDTH-20, height: 25))
                
                view_bar_number.backgroundColor = UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1.0)
                let title_Label = UILabel(frame: CGRect(x: 15, y: 0, width: v_WIDTH, height: 25))
                title_Label.textAlignment = .Left
                title_Label.font = UIFont.systemFontOfSize(16)
                title_Label.textColor = UIColor(red: 77/255, green: 77/255, blue: 77/255, alpha: 1.0)
                title_Label.text = current_number_first
                view_bar_number.addSubview(title_Label)
                view.addSubview(view_bar_number)
                
                count_x = 0
                position_y += plus_y
                calculate_height_View += plus_y
            }
            
            
            let plus_x = CGFloat(count_x)
            let position_x = (v_WIDTH/4)*plus_x+15
            
            
            
            
            title_Label = UILabel(frame: CGRect(x: position_x, y: position_y , width: v_WIDTH/4, height: 30))
            title_Label.textAlignment = .Left
            title_Label.font = UIFont.systemFontOfSize(16)
            title_Label.text = arr_lottery[i]
            view.addSubview(title_Label)
            
            count_x += 1
            
            
            if (count_x%4 == 0){
                count_x = 0
                position_y += plus_y
                calculate_height_View += plus_y
            }
            
            previous_number_first = current_number_first
        }
        view.frame = CGRect(x: 10, y: 578, width: WIDTH-20, height: calculate_height_View+57)
        return view
    }
    
    func draw_lottery_prize_5th() -> UIView{
        var calculate_height_View:CGFloat = CGFloat(0)
        let view = UIView(frame: CGRect(x: 10,
            y: (1000),
            width: WIDTH-20,
            height: 503))
        view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        view.layer.cornerRadius = 3
        view.layer.shadowColor = UIColor(red: 134/255, green: 134/255, blue: 134/255, alpha: 0.41).CGColor
        
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 1
        
        let v_WIDTH = view.bounds.width
        
        var title_Label = UILabel(frame: CGRect(x: 15, y: 12, width: v_WIDTH, height: 30))
        title_Label.textAlignment = .Left
        title_Label.font = UIFont.systemFontOfSize(16)
        title_Label.text = "รางวัลที่ 5"
        view.addSubview(title_Label)
        calculate_height_View += title_Label.bounds.height;
        
        var count_x = 0
        var arr_lottery:[String] = lottery_arr()
        var position_y:CGFloat = CGFloat(45)
        let plus_y:CGFloat = CGFloat(32)
        
        var previous_number_first = "-1"
        for i in 0 ..< 100 {
            var current_number_first = arr_lottery[i]
            current_number_first = String(arr_lottery[i][arr_lottery[i].startIndex.advancedBy(0)])
            
            if (current_number_first != previous_number_first){
                if (previous_number_first != "-1"){
                    position_y += plus_y
                    calculate_height_View += plus_y
                }
                
                let view_bar_number = UIView(frame: CGRect(x: 0, y: position_y, width: WIDTH-20, height: 25))
                
                view_bar_number.backgroundColor = UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1.0)
                let title_Label = UILabel(frame: CGRect(x: 15, y: 0, width: v_WIDTH, height: 25))
                title_Label.textAlignment = .Left
                title_Label.font = UIFont.systemFontOfSize(16)
                title_Label.textColor = UIColor(red: 77/255, green: 77/255, blue: 77/255, alpha: 1.0)
                title_Label.text = current_number_first
                view_bar_number.addSubview(title_Label)
                view.addSubview(view_bar_number)
                
                count_x = 0
                position_y += plus_y
                calculate_height_View += plus_y
            }
            
            
            let plus_x = CGFloat(count_x)
            let position_x = (v_WIDTH/4)*plus_x+15
            
            
            
            
            title_Label = UILabel(frame: CGRect(x: position_x, y: position_y , width: v_WIDTH/4, height: 30))
            title_Label.textAlignment = .Left
            title_Label.font = UIFont.systemFontOfSize(16)
            title_Label.text = arr_lottery[i]
            view.addSubview(title_Label)
            
            count_x += 1
            
            
            if (count_x%4 == 0 && count_x != 1){
                count_x = 0
                position_y += plus_y
                calculate_height_View += plus_y
            }
            
            previous_number_first = current_number_first
        }
        view.frame = CGRect(x: 10, y: 578+view_prize_4th_height+10, width: WIDTH-20, height: calculate_height_View+57)
        return view
    }
    
    func lottery_arr()-> [String] {
        var arr:[String] = ["123432","038640", "124114","253356","332818","466185",
            "533774","602068","705313","774142","868134",
            "053966","208006","272358","365636","467728",
            "553324","633244","739096","807824","870190",
            "065711","220308","288442","396239","482319",
            "562671","642311","744470","808930","926836",
            "092407","225962","300793","446083","499345",
            "573093","649356","759498","838930","931329",
            "115729","233464","308217","447326","528828",
            "583070","702530","764768","841544","960288",
            "028424","092381","142658","256195","386035",
            "502973","604498","735020","823846","887227",
            "031348","093720","153002","262187","386274",
            "506977","614282","754962","827108","893837",
            "032557","098994","171875","301038","428578",
            "519868","641756","757223","827366","933070",
            "033396","099519","175640","310496","447822",
            "532514","644404","761575","832870","970012",
            "041645","111823","181703","322856","452262",
            "561545","681601","763462","863809","979162",
            "061810","118177","182438","339855","458581",
            "567774","688401","782068","868565","996119"]
        
        arr = arr.sort(){$0 < $1}
        return arr
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
