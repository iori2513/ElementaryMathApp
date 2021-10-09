//
//  direction1.swift
//  SampleMath
//
//  Created by 中田伊織 on 2021/09/27.
//

import Foundation


class DirectionModel{
    var id: Int
    var problem: String
    var answer: String
    
    init(id: Int, problem: String, answer: String) {
        self.id = id
        self.problem = problem
        self.answer = answer
    }
}




// 問題１
    let direction_1 = DirectionModel(id: 1,
                                     problem: "A君とB君の所持金の合計は10000円でA君はB君よりも1500円多く持っています。B君の所持金はいくらでしょう。",
                                     answer: "4250円")


// 問題２
    let direction_2 = DirectionModel(id: 2,
                                     problem: "おにぎりは１つ150円、サンドイッチは１つ280円です。サトルくんがおにぎりとサンドイッチを合計で30個買ったところ、6840円かかりました。サトルくんはおにぎりを何個買ったでしょう。",
                                     answer: "12個")

// 問題３
    let direction_3 = DirectionModel(id: 3,
                                     problem: "持っていたお金の３分の１を使い、残ったお金の５分の１を使うと400円残りました。初めに持っていたお金は何円でしょう。",
                                     answer: "750円")
//　問題４
    let direction_4 = DirectionModel(id: 4,
                                     problem: "30円切手と50円切手が合わせて３０枚あり、合計金額は1260円です。50円切手は何枚ですか。",
                                     answer: "18枚")
// 問題５
    let direction_5 = DirectionModel(id: 5,
                                     problem: "50円切手、80円切手、100円切手が合わせて60枚あり、合計の金額は4690円で、100円切手は80円切手の枚数の2倍あります。50円切手は何枚ありますか。",
                                     answer: "21枚")

// 問題６
    let direction_6 = DirectionModel(id: 6,
                                     problem: "生徒たちにえんぴつを1人5本ずつ配ると14本余り、1人8本ずつ配ると64本不足します。生徒の人数は何人ですか。",
                                     answer: "26人")

// 問題７
    let direction_7 = DirectionModel(id: 7,
                                     problem: "えんぴつとノートを生徒たちに配ります。えんぴつの本数はノートの冊数の3倍あります。えんぴつを5本ずつ、ノートを4冊ずつ配ると、えんぴつは10本余り、ノートは20冊不足します。生徒は何人いますか。",
                                     answer: "10人")

// 問題８
    let direction_8 = DirectionModel(id: 8,
                                     problem: "現在、母の年齢が40歳、A君の年齢が6歳です。母の年齢がA君の年齢の４倍より４歳多くなるのは今から何年後でしょう。",
                                     answer: "4年後")

// 問題９
    let direction_9 = DirectionModel(id: 9,
                                     problem: "現在、父の年齢は42歳、母は40歳、子の年齢は13歳である。父と母の年齢の和が子の年齢の９倍だったのは何年前か。",
                                     answer: "5年前")

// 問題１０
    let direction_10 = DirectionModel(id: 10,
                                      problem: "祖父は父より25歳年上で、父は息子より24歳年上である。12年後、父と息子の年齢の和が祖父の年齢と等しくなるとすると、現在の息子の年齢はいくつか。",
                                      answer: "13歳")

    

