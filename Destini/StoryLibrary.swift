//
//  StoryLibrary.swift
//  Destini
//
//  Created by Georg Federmann on 01.01.19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class StoryLibrary {
    
    // Our strings
    var story:[String:String]=[String:String]();
    
    init(){
        story["story1"] = "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\".";
        story["answer1a"] = "I\'ll hop in. Thanks for the help!"
        story["answer1b"] = "Better ask him if he\'s a murderer first."
        
        
        story["story2"] = "He nods slowly, unphased by the question."
        story["answer2a"] = "At least he\'s honest. I\'ll climb in."
        story["answer2b"] = "Wait, I know how to change a tire."
        
        story["story3"] = "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box."
        story["answer3a"] = "I love Elton John! Hand him the cassette tape."
        story["answer3b"] = "It's him or me! You take the knife and stab him."
        
        story["story4"] = "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?"
        story["story5"] = "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in."
        story["story6"] = "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""
    }
    
}
