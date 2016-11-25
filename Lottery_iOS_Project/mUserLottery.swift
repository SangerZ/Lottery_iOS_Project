//
//  mUserLottery.swift
//  Lottery_iOS_Project
//
//  Created by ToyStory on 10/29/2559 BE.
//  Copyright © 2559 ToyStory. All rights reserved.
//

import Foundation


class mUserLottery {
    
    var userLottery_id : Int64!
    var user_id : Int64!
    var numbers : String!
    var prize_baht : Int!
    var period_lottery_date : String!
    var status_result : String!
    var create_datetime : String!
    
    
    init(dictionary: AnyObject) {
        self.userLottery_id = dictionary["userLottery_id"] as? Int64
        self.user_id = dictionary["user_id"] as? Int64
        self.numbers = dictionary["numbers"] as? String
        self.prize_baht = dictionary["prize_baht"] as? Int
        self.period_lottery_date = dictionary["period_lottery_date"] as? String
        self.status_result = dictionary["status_result"] as? String
        self.create_datetime = dictionary["create_datetime"] as? String
    }
    
}
