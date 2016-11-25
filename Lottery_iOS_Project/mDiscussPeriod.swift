//
//  mDiscussPeriod.swift
//  Lottery_iOS_Project
//
//  Created by ToyStory on 10/29/2559 BE.
//  Copyright © 2559 ToyStory. All rights reserved.
//

import Foundation

class mDiscussPeriod {
    
    var discuss_period_id : Int64!
    var discuss_period_date : Int64!
    var discussList : [mDiscuss]!
    var message : String!
    var create_datetime : String!
    
    
    init(dictionary: AnyObject) {
        self.discuss_period_id = dictionary["discuss_period_id"] as? Int64
        self.discuss_period_date = dictionary["discuss_period_date"] as? Int64
        
        //var discussList = dictionary["discussList"] as? [String: AnyObject]
        //self.discussList = mDiscuss(dictionary: discussList!)
        
        let arrayOfDictionaries = dictionary["discussList"] as? [[String: AnyObject]]
        for dictionary in arrayOfDictionaries! {
            discussList.append(mDiscuss(dictionary: dictionary))
        }
        
        self.message = dictionary["message"] as? String
        self.create_datetime = dictionary["create_datetime"] as? String
    }
}
