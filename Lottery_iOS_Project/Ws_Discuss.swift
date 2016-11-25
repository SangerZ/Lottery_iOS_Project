//
//  Ws_Discuss.swift
//  Lottery_iOS_Project
//
//  Created by ToyStory on 10/29/2559 BE.
//  Copyright © 2559 ToyStory. All rights reserved.
//

import Foundation

class Ws_Discuss {
    
    // GetDiscussList
    static func GetDiscussList(period_lottery_date: String,user_id: String,completion:(responseData:mDiscussPeriod,errorMessage:NSError?)->Void)
    {
        var discussPeriod:mDiscussPeriod!
        let url = NSURL(string: "http://tskyonline.com:83/WS_Discuss/GetDiscussList?period_lottery_date=" + period_lottery_date + "&user_id=" + user_id)
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            do {
                let jsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers)
                //                print("================================================================")
                //                print("jsonResult : " + String(jsonResult))
                //                print("================================================================")
                if let arrayOfDictionaries = jsonResult as? AnyObject {
                    discussPeriod = mDiscussPeriod(dictionary: arrayOfDictionaries )
                    
                    completion(responseData: discussPeriod, errorMessage: error)
                } else {
                    print("Error")
                }
                
            } catch let myJSONError {
                print("Error : ", myJSONError)
            }
            
        }
        task.resume()
    }
    
    // AddNewDiscuss
    static func AddNewDiscuss(user_id: Int,period_lottery_date: String,numbers: String,message: String,completion:(responseData:mDiscussPeriod,errorMessage:NSError?)->Void)
    {
        var discussPeriod:mDiscussPeriod!
        let url = NSURL(string: "http://tskyonline.com:83/WS_Discuss/AddNewDiscuss?user_id=" + String(user_id) + "&period_lottery_date=" + period_lottery_date + "&numbers=" + numbers + "&message=" + message)
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            do {
                let jsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers)
                //                print("================================================================")
                //                print("jsonResult : " + String(jsonResult))
                //                print("================================================================")
                if let arrayOfDictionaries = jsonResult as? AnyObject {
                    discussPeriod = mDiscussPeriod(dictionary: arrayOfDictionaries )
                    
                    completion(responseData: discussPeriod, errorMessage: error)
                } else {
                    print("Error")
                }
                
            } catch let myJSONError {
                print("Error : ", myJSONError)
            }
            
        }
        task.resume()
    }
    
    // DeleteDiscuss
    static func DeleteDiscuss(user_id: Int,period_lottery_date: String,discuss_id: Int,completion:(responseData:mDiscussPeriod,errorMessage:NSError?)->Void)
    {
        var discussPeriod:mDiscussPeriod!
        let url = NSURL(string: "http://tskyonline.com:83/WS_Discuss/DeleteDiscuss?user_id=" + String(user_id) + "&period_lottery_date=" + period_lottery_date + "&discuss_id=" + String(discuss_id))
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            do {
                let jsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers)
                //                print("================================================================")
                //                print("jsonResult : " + String(jsonResult))
                //                print("================================================================")
                if let arrayOfDictionaries = jsonResult as? AnyObject {
                    discussPeriod = mDiscussPeriod(dictionary: arrayOfDictionaries )
                    
                    completion(responseData: discussPeriod, errorMessage: error)
                } else {
                    print("Error")
                }
                
            } catch let myJSONError {
                print("Error : ", myJSONError)
            }
            
        }
        task.resume()
    }
    
    //-------------------------------------------------
    
    // GetDiscussReplyList
    static func GetDiscussReplyList(discuss_id: Int64, completion:(responseData:[mDiscussReply],errorMessage:NSError?)->Void)
    {
        var userLottery:[mDiscussReply]!
        let url = NSURL(string: "http://tskyonline.com:83/WS_Discuss/GetDiscussReplyList?discuss_id=" + String(discuss_id))
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            do {
                let jsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers)
                //                print("================================================================")
                //                print("jsonResult : " + String(jsonResult))
                //                print("================================================================")
                if let arrayOfDictionaries = jsonResult as? [[String: AnyObject]] {
                    for dictionary in arrayOfDictionaries {
                        userLottery.append(mDiscussReply(dictionary: dictionary))
                    }
                    completion(responseData: userLottery, errorMessage: error)
                } else {
                    print("Error")
                }
                
            } catch let myJSONError {
                print("Error : ", myJSONError)
            }
            
        }
        task.resume()
    }
    
    // AddCommentDiscuss
    static func AddCommentDiscuss(user_id:Int64 ,discuss_id: Int64,message: String,
                                    completion:(responseData:[mDiscussReply],errorMessage:NSError?)->Void)
    {
        var userLottery:[mDiscussReply]!
        let url = NSURL(string: "http://tskyonline.com:83/WS_Discuss/AddCommentDiscuss?user_id=" + String(user_id) + "&discuss_id=" + String(discuss_id) + "&message=" + message)
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            do {
                let jsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers)
                //                print("================================================================")
                //                print("jsonResult : " + String(jsonResult))
                //                print("================================================================")
                if let arrayOfDictionaries = jsonResult as? [[String: AnyObject]] {
                    for dictionary in arrayOfDictionaries {
                        userLottery.append(mDiscussReply(dictionary: dictionary))
                    }
                    completion(responseData: userLottery, errorMessage: error)
                } else {
                    print("Error")
                }
                
            } catch let myJSONError {
                print("Error : ", myJSONError)
            }
            
        }
        task.resume()
    }
    
    // DeleteCommentDiscuss
    static func DeleteCommentDiscuss(discussReply_id:Int64 ,discuss_id: Int64,message: String,
                                  completion:(responseData:[mDiscussReply],errorMessage:NSError?)->Void)
    {
        var userLottery:[mDiscussReply]!
        let url = NSURL(string: "http://tskyonline.com:83/WS_Discuss/DeleteCommentDiscuss?discussReply_id=" + String(discussReply_id) + "&discuss_id=" + String(discuss_id))
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            do {
                let jsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers)
                //                print("================================================================")
                //                print("jsonResult : " + String(jsonResult))
                //                print("================================================================")
                if let arrayOfDictionaries = jsonResult as? [[String: AnyObject]] {
                    for dictionary in arrayOfDictionaries {
                        userLottery.append(mDiscussReply(dictionary: dictionary))
                    }
                    completion(responseData: userLottery, errorMessage: error)
                } else {
                    print("Error")
                }
                
            } catch let myJSONError {
                print("Error : ", myJSONError)
            }
            
        }
        task.resume()
    }
    
    
    // LikeDiscuss
    static func LikeDiscuss(user_id: String,discuss_id: Int64,completion:(responseData:mMessageResponse,errorMessage:NSError?)->Void)
    {
        var messageResponse:mMessageResponse!
        let url = NSURL(string: "http://tskyonline.com:83/WS_Discuss/LikeDiscuss?user_id=" + String(user_id) + "&discuss_id=" + String(discuss_id))
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            do {
                let jsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers)
                //                print("================================================================")
                //                print("jsonResult : " + String(jsonResult))
                //                print("================================================================")
                if let arrayOfDictionaries = jsonResult as? AnyObject {
                    messageResponse = mMessageResponse(dictionary: arrayOfDictionaries )
                    
                    completion(responseData: messageResponse, errorMessage: error)
                } else {
                    print("Error")
                }
                
            } catch let myJSONError {
                print("Error : ", myJSONError)
            }
            
        }
        task.resume()
    }
    
    // UnLikeDiscuss
    static func UnLikeDiscuss(user_id: String,discuss_id: Int64,completion:(responseData:mMessageResponse,errorMessage:NSError?)->Void)
    {
        var messageResponse:mMessageResponse!
        let url = NSURL(string: "http://tskyonline.com:83/WS_Discuss/UnLikeDiscuss?user_id=" + String(user_id) + "&discuss_id=" + String(discuss_id))
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            do {
                let jsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers)
                //                print("================================================================")
                //                print("jsonResult : " + String(jsonResult))
                //                print("================================================================")
                if let arrayOfDictionaries = jsonResult as? AnyObject {
                    messageResponse = mMessageResponse(dictionary: arrayOfDictionaries )
                    
                    completion(responseData: messageResponse, errorMessage: error)
                } else {
                    print("Error")
                }
                
            } catch let myJSONError {
                print("Error : ", myJSONError)
            }
            
        }
        task.resume()
    }
}
