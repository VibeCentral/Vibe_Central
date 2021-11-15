//
//  LoginViewController.swift
//  Vibe_Central
//
//  Created by Okera Murray on 11/14/21.
//

import UIKit

class LoginViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //check to see if user is logged in
    override func viewDidAppear(_ animated: Bool) {
        
        if UserDefaults.standard.bool(forKey: "userLoggedIn") == true {
            self.performSegue(withIdentifier: "LoginToHome", sender: self)
        }
    }
    
    
    
    
    
    //Code for login
    @IBAction func LoginButton(_ sender: Any) {
        
        let myURL = "https://api.twitter.com/oauth/request_token"
        
        
        
        TwitterAPICaller.client?.login(url: myURL, success: {
        //UserDefaults code to check if the user is still logged in to twitter after closing page
        UserDefaults.standard.set(true, forKey: "userLoggedIn")

    self.performSegue(withIdentifier: "LoginToHome", sender: self)}  , failure:{(Error) in print("Could not log in")})
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

