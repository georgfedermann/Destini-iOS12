//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    // TODO Step 5: Initialise instance variables here
    let storyLibrary:StoryLibrary = StoryLibrary();
    // start out at state 1, this is where the story begins.
    var currentState:Int = 1;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startStory();
        updateView();
        
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        
    }
    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
        currentState = storyStatemachine(from:currentState, edge:sender.tag);
        updateView();
    }
    
    @IBAction func restartButtonPressed(_ sender: UIButton) {
        startStory();
        updateView();
    }
    
    func startStory(){
        currentState = 1;
//        restartButton.isHidden = true;
    }
    
    func updateView(){
        if currentState == 0 {
            storyTextView.text = "Something went wront, sorry!";
        } else {
            storyTextView.text = storyLibrary.story["story\(currentState)"];
            if(hasStatusQuestions(statusNumber:currentState)){
                topButton.isHidden = false;
                bottomButton.isHidden = false;
                restartButton.isHidden = true;
                topButton.setTitle(storyLibrary.story["answer\(currentState)a"], for: UIControl.State.normal);
                bottomButton.setTitle(storyLibrary.story["answer\(currentState)b"], for: UIControl.State.normal);
            } else {
                topButton.isHidden = true;
                bottomButton.isHidden = true;
                restartButton.isHidden = false;
            }
        }
    }
    
    // implements a statemachine for the story to decide, based on the current
    // state and the route chosen by the player, what will happen next.
    // In each situation, the player has two options to chose from. Thus,
    // edge will have a value 1 or 2. currentState is the current episode from
    // which the user starts out. If input is invalid, the statemachine can
    // return 0 which indicates a broken or dead state from which the statemachine
    // cannot recover (on its own).
    func storyStatemachine(from currentState:Int, edge:Int)->Int{
        switch currentState {
        case 1:
            switch edge {
            case 1:
                return 3;
            case 2:
                return 2;
            default:
                return 0;
            }
        case 2:
            switch edge {
            case 1:
                return 3;
            case 2:
                return 4;
            default:
                return 0;
            }
        case 3:
            switch edge {
            case 1:
                return 6;
            case 2:
                return 5;
            default:
                return 0;
            }
        default:
            return 0;
        }
    }
    
    func hasStatusQuestions(statusNumber:Int)->Bool{
        switch statusNumber {
        case 1:
            return true;
        case 2:
            return true;
        case 3:
            return true;
        case 4:
            return false;
        case 5:
            return false;
        case 6:
            return false;
        default:
            return false;
        }
    }
    
}

