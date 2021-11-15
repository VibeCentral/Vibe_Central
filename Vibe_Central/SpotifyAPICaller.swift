//
//  SpotifyAPICaller.swift
//  Vibe_Central
//
//  Created by Okera Murray on 11/14/21.
//

import UIKit
import BDBOAuth1Manager

class SpotifyAPICaller: BDBOAuth1SessionManager {
    
    static let client = SpotifyAPICaller(baseURL: URL(string: "https://api.twitter.com"), ClientID: "7beed79fd94c4a50af531571320e32c8" ClientSecret: "2927d5f9eddb4fa485ec84d051c7fc36")
    var loginSuccess: (() -> ())?
    var loginFailure: ((Error) -> ())?
    
    func handleOpenUrl(url: URL){
        let requestToken = BDBOAuth1Credential(queryString: url.query)
        SpotifyAPICaller.client?.fetchAccessToken(withPath: "oauth/access_token", method: "POST", requestToken: requestToken, success: { (accessToken: BDBOAuth1Credential!) in
            self.loginSuccess?()
        }, failure: { (error: Error!) in
            self.loginFailure?(error)
        })
    }
    
    func login(url: String, success: @escaping () -> (), failure: @escaping (Error) -> ()){
        loginSuccess = success
        loginFailure = failure
        SpotifyAPICaller.client?.deauthorize()
        SpotifyAPICaller.client?.fetchRequestToken(withPath: url, method: "GET", callbackURL: URL(string: "alamoTwitter://oauth"), scope: nil, success: { (requestToken: BDBOAuth1Credential!) -> Void in
            let url = URL(string: "https://api.twitter.com/oauth/authorize?oauth_token=\(requestToken.token!)")!
            UIApplication.shared.open(url)
        }, failure: { (error: Error!) -> Void in
            print("Error: \(error.localizedDescription)")
            self.loginFailure?(error)
        })
    }
    func logout (){
        deauthorize()
    }
    
    func getDictionaryRequest(url: String, parameters: [String:Any], success: @escaping (NSDictionary) -> (), failure: @escaping (Error) -> ()){
        SpotifyAPICaller.client?.get(url, parameters: parameters, progress: nil, success: { (task: URLSessionDataTask, response: Any?) in
            success(response as! NSDictionary)
        }, failure: { (task: URLSessionDataTask?, error: Error) in
            failure(error)
        })
    }
    
    func getDictionariesRequest(url: String, parameters: [String:Any], success: @escaping ([NSDictionary]) -> (), failure: @escaping (Error) -> ()){
        print(parameters)
        SpotifyAPICaller.client?.get(url, parameters: parameters, progress: nil, success: { (task: URLSessionDataTask, response: Any?) in
            success(response as! [NSDictionary])
        }, failure: { (task: URLSessionDataTask?, error: Error) in
            failure(error)
        })
    }

    func postRequest(url: String, parameters: [Any], success: @escaping () -> (), failure: @escaping (Error) -> ()){
        SpotifyAPICaller.client?.post(url, parameters: parameters, progress: nil, success: { (task: URLSessionDataTask, response: Any?) in
            success()
        }, failure: { (task: URLSessionDataTask?, error: Error) in
            failure(error)
        })
    }
    
    func postTweet(tweetString:String, success: @escaping () -> (), failure: @escaping (Error) -> ()) {
        
        let url = "https://api.twitter.com/1.1/statuses/update.json"
        SpotifyAPICaller.client?.post(url, parameters: ["status":tweetString], progress: nil, success: { (task: URLSessionDataTask, response: Any?) in
            success()
        }, failure: { (task: URLSessionDataTask?, error: Error) in
            failure(error)
        })
        
}
    
    func favoriteTweet(tweetId:Int, success: @escaping () -> (), failure: @escaping (Error) -> ()) {
        let url = "https://api.twitter.com/1.1/favorites/create.json"
        SpotifyAPICaller.client?.post(url, parameters: ["id":tweetId], progress: nil, success: { (task: URLSessionDataTask, response: Any?) in success()
            
        }, failure: { (task: URLSessionDataTask?, error: Error) in failure(error)
            
        })
    }
    
    func unfavoriteTweet(tweetId:Int, success: @escaping () -> (), failure: @escaping (Error) -> ()) {
        let url = "https://api.twitter.com/1.1/favorites/destroy.json"
        SpotifyAPICaller.client?.post(url, parameters: ["id":tweetId], progress: nil, success: { (task: URLSessionDataTask, response: Any?) in success()
            
        }, failure: { (task: URLSessionDataTask?, error: Error) in failure(error)
            
        })
    
    }
    
    func retweet(tweetId:Int, success: @escaping () -> (), failure: @escaping (Error) -> ()) {
        let url = "https://api.twitter.com/1.1/statuses/retweet/\(tweetId).json"
        SpotifyAPICaller.client?.post(url, parameters: ["id":tweetId], progress: nil, success: { (task: URLSessionDataTask, response: Any?) in success()
            
        }, failure: { (task: URLSessionDataTask?, error: Error) in failure(error)
            
        })
    
    }
    
    
}
