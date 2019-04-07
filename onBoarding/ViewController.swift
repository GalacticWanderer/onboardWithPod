//
//  ViewController.swift
//  onBoarding
//
//  Created by Joy Paul on 4/6/19.
//  Copyright © 2019 Joy Paul. All rights reserved.
//

import UIKit
import OnboardKit //need this pod for onboarding

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //call the func here
        onBoardInstances()
    }
    
    
//**don't worry about this block
//    override func viewDidAppear(_ animated: Bool) {
//        onBoardInstances()
//    }
//**don't worry about this block

    
    //this func stores all of our onboarding data
    func onBoardInstances(){
        //an array of pages that we wish to display. Page must have a titile, image and some descriptions
        let pageOne = OnboardPage(title: "Welcome blah blah",
                               imageName: "hello",
                               description: "page 1 descp")
        let pageTwo = OnboardPage(title: "help clean env and stuff",
                                  imageName: "hola",
                                  description: "page 2 descp")
        let pageThree = OnboardPage(title: "blah blah I'm sleepy",
                                  imageName: "hand",
                                  description: "Page 3 descpp")
        
        //we create a onboardingViewController programatically and pass the pages as an array
        let onboardingViewController = OnboardViewController(pageItems: [pageOne, pageTwo, pageThree])
        
        //finally we present the view controller
        onboardingViewController.presentFrom(self, animated: true)
    }
    
////VERY IMPORTANT NOTES
//   - you must embed your view controller into a NavigationController on the storyboard otherwise you won't see the pages
    
//   - the images if they are too big, they will look weird. I found around 256/256 sizes to work okay but you will need to experiment with it. Just drag and drop your images into the Assets.xcassets folder
    
//   - make sure that your podfile has a line that says "platform :ios, '11.0'" instead of the default 9.0
    
}
