//
//  ProblemViewController.swift
//  SampleMath
//
//  Created by 中田伊織 on 2021/09/27.
//

import UIKit
import GoogleMobileAds

class ProblemViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var ProblemNumberLabel: UILabel!
    @IBOutlet weak var ProblemText: UITextView!
    @IBOutlet weak var UserAnswerText: UITextField!
    @IBOutlet weak var ToAnswerButton: UIButton!
    @IBOutlet weak var NextQuestionButton: UIButton!
    @IBOutlet weak var ReturnTopButton: UIButton!
    @IBOutlet weak var CorrectIncorrect: UITextView!
    
    var bannerView: GADBannerView!
    var questionCount = 0
    let directionList = [direction_1, direction_2, direction_3, direction_4, direction_5, direction_6, direction_7, direction_8, direction_9, direction_10]
    var answer: String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        UserAnswerText.delegate = self
        questionCount += 1
        ProblemNumberLabel.text = "第\(questionCount)問"
        var direction = directionList.randomElement()
        answer = direction!.answer
        ProblemText.text = direction?.problem
        UserAnswerText.placeholder = "答えを入力してください"
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)
        bannerView.adUnitID = "ca-app-pub-9481353025497177/7057784901"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        addBannerViewToView(bannerView)
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let AnswerVC = segue.destination as! AnswerViewController
        AnswerVC.AnswerVCAnswer = answer
        AnswerVC.AnswerVCQCount = questionCount 
    }
    
    
    @IBAction func btnAction(sender: UIButton){
        if sender.tag == 2 {
            nextDirection()
        }
    }
    
        
    

    func nextDirection() {
        questionCount += 1
        UserAnswerText.tag = 0
        UserAnswerText.delegate = self
        CorrectIncorrect.text = ""
        UserAnswerText.text = ""
        ProblemNumberLabel.text = "第\(questionCount)問"
        var direction = directionList.randomElement()
        answer = direction!.answer
        ProblemText.text = direction?.problem
        UserAnswerText.placeholder = "答えを入力してください"
        
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)
        bannerView.adUnitID = "ca-app-pub-9481353025497177/7057784901"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        addBannerViewToView(bannerView)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if UserAnswerText.text ==  answer {
                CorrectIncorrect.text = "正解　◯"
        } else {
                CorrectIncorrect.text = "不正解　❌"
        }
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func toTopButtonAction(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    func addBannerViewToView(_ bannerView: GADBannerView) {
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bannerView)
        view.addConstraints(
            [NSLayoutConstraint(item: bannerView,
                               attribute: .bottom,
                               relatedBy: .equal,
                               toItem: view.safeAreaLayoutGuide,
                               attribute: .bottom,
                               multiplier: 1,
                               constant: 0),
             NSLayoutConstraint(item: bannerView,
                                attribute: .centerX,
                                relatedBy: .equal,
                                toItem: view,
                                attribute: .centerX,
                                multiplier: 1,
                                constant: 0)
            ])
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
