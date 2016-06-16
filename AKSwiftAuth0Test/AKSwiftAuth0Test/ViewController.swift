//
//  ViewController.swift
//  AKSwiftAuth0Test
//
//  Created by Iuliia Zhelem on 16.06.16.
//  Copyright © 2016 Akvelon. All rights reserved.
//

import UIKit
import Lock
import LockFacebook

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickFacebookLoginButton(sender: AnyObject) {
        let success = { (profile: A0UserProfile, token: A0Token) in
            print("We did it!. Logged in with Auth0.")
        }
        let failure = { (error: NSError) in
            print("Oops something went wrong: \(error)")
        }
        let lock = A0Lock.sharedLock()
            lock.identityProviderAuthenticator().authenticateWithConnectionName("facebook", parameters: nil, success: success, failure: failure)
        
    }
}

