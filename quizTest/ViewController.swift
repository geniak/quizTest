//
//  ViewController.swift
//  quizTest
//
//  Created by KimGyuho on 2016. 8. 2..
//  Copyright © 2016년 KimGyuho. All rights reserved.
//

import UIKit
import Canvas



class ViewController: UIViewController {

    @IBOutlet weak var button1AnimView: CSAnimationView!
    
    @IBOutlet weak var button2AnimView: CSAnimationView!
    
    @IBOutlet weak var button3AnimView: CSAnimationView!
    
    @IBOutlet weak var button4AnimView: CSAnimationView!
    
    
    
    @IBOutlet weak var QLabel: UILabel!
    
    @IBOutlet var Button: [UIButton]!
    
    @IBOutlet weak var scoreBoard: UILabel!
    
    var Questions = [questionMaker]()
    
    var QNumber = Int()
    
    var AnswerNumber = Int()
//  Alert Menu
//    var alertController = UIAlertController(title: "Kim EunYoung", message: "바보바보바보", preferredStyle: .Alert)
//    
//    var defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
//    
//    var goNextView = UIAlertAction(title: "Success", style: .Default, handler: nil)
//    
    var score : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
                
        Questions = [
            questionMaker(Question:"문제1", Answers: ["보기1_1","보기1_2","보기1_3","보기1_4"], Answer: 0),
            questionMaker(Question:"문제2", Answers: ["보기2_1","보기2_2","보기2_3","보기2_4"], Answer: 0),
            questionMaker(Question:"문제3", Answers: ["보기3_1","보기3_2","보기3_3","보기3_4"], Answer: 0),
            questionMaker(Question:"문제4", Answers: ["보기4_1","보기4_2","보기4_3","보기4_4"], Answer: 0),
            questionMaker(Question:"문제5", Answers: ["보기5_1","보기5_2","보기5_3","보기5_4"], Answer: 0),
            questionMaker(Question:"문제6", Answers: ["보기6_1","보기6_2","보기6_3","보기6_4"], Answer: 0),
            questionMaker(Question:"문제7", Answers: ["보기7_1","보기7_2","보기7_3","보기7_4"], Answer: 0),
            questionMaker(Question:"문제8", Answers: ["보기8_1","보기8_2","보기8_3","보기8_4"], Answer: 0),
            questionMaker(Question:"문제9", Answers: ["보기9_1","보기9_2","보기9_3","보기9_4"], Answer: 0),
            questionMaker(Question:"문제10", Answers: ["보기10_1","보기10_2","보기10_3","보기10_4"], Answer: 0)]

        
        

        PickQuestion()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    

    func PickQuestion() {
        
        
        scoreBoard.text = String("Your Score is \(score)")
        
        if Questions.count > 0 {
//            QNumber = random() % Questions.count
            
            
            
            QNumber = 0
            QLabel.text = Questions[QNumber].Question
            
            AnswerNumber = Questions[QNumber].Answer
            
            for i in 0..<Button.count{
                Button[i].setTitle(Questions[QNumber].Answers[i], forState: UIControlState.Normal)
            }
            Questions.removeAtIndex(QNumber)

        }
        else{
            
            scoreBoard.text = String("Your Final Score is 10!")

        }
    }
    
    

    @IBAction func Button1(sender: AnyObject) {
  
        
        if AnswerNumber == 0{
            
            button1AnimView.type = CSAnimationTypePop
            
            button1AnimView.startCanvasAnimation()
            
            score += 1
            PickQuestion()

        }
        else{
//            NSLog("Wrong!")
//            self.presentViewController(alertController, animated: true, completion: nil)
//
            button1AnimView.type = CSAnimationTypeShake

            button1AnimView.startCanvasAnimation()
  
            
        }
        
    }
    @IBAction func Button2(sender: AnyObject) {
        

        if AnswerNumber == 1{
            
            button2AnimView.type = CSAnimationTypePop
            
            button2AnimView.startCanvasAnimation()
            
            score += 1

            
            
            PickQuestion()
            
            
        }
        else{
//            NSLog("Wrong!")
//
//            self.presentViewController(alertController, animated: true, completion: nil)
            button2AnimView.type = CSAnimationTypeShake

            button2AnimView.startCanvasAnimation()

        }
        
    }
    @IBAction func Button3(sender: AnyObject) {

        
        if AnswerNumber == 2{
            
            button3AnimView.type = CSAnimationTypePop
            
            button3AnimView.startCanvasAnimation()
            
            score += 1

            PickQuestion()
        }
        else{
//            NSLog("Wrong!")
//
//            self.presentViewController(alertController, animated: true, completion: nil)
            button3AnimView.type = CSAnimationTypeShake

            button3AnimView.startCanvasAnimation()

        }
        
    }
    @IBAction func Button4(sender: AnyObject) {
        

        if AnswerNumber == 3{
            
            button4AnimView.type = CSAnimationTypePop
            
            button4AnimView.startCanvasAnimation()
            
            score += 1

            PickQuestion()
        }
        else{
//            NSLog("Wrong!")
//
//            self.presentViewController(alertController, animated: true, completion: nil)

            button4AnimView.type = CSAnimationTypeShake

            button4AnimView.startCanvasAnimation()

        }
        
    }
    

    
}

