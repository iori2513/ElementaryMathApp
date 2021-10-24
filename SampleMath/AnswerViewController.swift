//
//  AnswerViewController.swift
//  SampleMath
//
//  Created by 中田伊織 on 2021/09/27.
//

import UIKit

class AnswerViewController: UIViewController {
    @IBOutlet weak var QuestionCountLabel: UILabel!
    @IBOutlet weak var AnswerTextView: UITextView!
    
    // ProblemViewControllerへ引き継ぐ変数を作成
    var AnswerVCAnswer = ""
    
    // ProblemViewControllerから引き継がれる変数を作成
    var AnswerVCQCount = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        QuestionCountLabel.text = "第\(AnswerVCQCount)問"
        AnswerTextView.text = AnswerVCAnswer

        // Do any additional setup after loading the view.
    }
    
    // 『トップに戻る』ボタンを押した際の処理
    @IBAction func toTopButton(_ sender: Any) {
        self.presentingViewController?.presentingViewController?.dismiss(animated: true)
    }
    
    // 『問題に戻る』ボタンを押した際の処理
    @IBAction func backToDirection(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
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
