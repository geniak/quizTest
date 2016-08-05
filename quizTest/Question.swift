//
//  Question.swift
//  quizTest
//
//  Created by KimGyuho on 2016. 8. 3..
//  Copyright © 2016년 KimGyuho. All rights reserved.
//

import Foundation

struct Question {
    var Question : String!
    var Answers : [String]!
    var Answer : Int!
}

class questionMaker {
    
    
    var Question : String!
    var Answers : [String]!
    var Answer : Int!
    
    init(Question:String, Answers: [String], Answer: Int){
        
        self.Question = Question
        self.Answers = Answers
        self.Answer = Answer
        
    
    }
    
}