//
//  ViewController.swift
//  sampleOmikuji
//
//  Created by Eriko Ichinohe on 2016/04/29.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //占いの結果を配列で用意する
    var omikuji = ["大吉","吉","中吉","小吉","末吉","凶","大凶"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapBtn(sender: UIButton) {
        print("占いボタン押された")
        //占いのどれか一つをランダムに選ぶ
        var r = Int(arc4random()) % omikuji.count
        
        print(r)
        //アラートをつくる
        var alertController = UIAlertController(title: "今日の運勢", message: omikuji[r], preferredStyle: .Alert)
        
        //OKボタン追加
        alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler:{ action in self.kekka()}))
        
        //アラートを表示
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    // ヒント：引数をひとつ追加するとよいです
    func kekka(){
    
        print("結果表示")
        
        //ここに運勢ごとに表示する画像を変える処理を記述する！
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

