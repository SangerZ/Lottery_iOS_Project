//
//  mGlobalproperty.swift
//  Lottery_iOS_Project
//
//  Created by ToyStory on 10/29/2559 BE.
//  Copyright © 2559 ToyStory. All rights reserved.
//

import Foundation

class mGlobalproperty {
    
    var resultResponse: mMessageResponse!
    var userProfile: mUser!
    
    
    init(dictionary: AnyObject) {
        let resultResponse = dictionary["resultResponse"] as? [String: AnyObject]
        self.resultResponse = mMessageResponse(dictionary: resultResponse!) // as? [String: AnyObject] or [AnyObject]
        let user = dictionary["userProfile"] as? [String: AnyObject]
        self.userProfile = mUser(dictionary: user!)
    }
}
