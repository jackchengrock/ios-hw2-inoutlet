//
//  ViewController.swift
//  ios-hw1-eBook
//
//  Created by Jack Cheng on 2019/3/22.
//  Copyright © 2019 jackrock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var heightnum: Int = 160;
    var weightnum: Int = 50;
    var countnum: Int = 0;
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var gender: UISegmentedControl!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var counter: UILabel!
    @IBOutlet weak var resultview: UITextView!
    @IBOutlet weak var team: UIButton!
    @IBOutlet weak var reset: UIButton!
    @IBAction func heightcontrol(_ sender: UISlider) {
        height.isHidden = false;
        heightnum = Int(sender.value)
        height.text = "\(heightnum)"
    }
    @IBAction func weightcontrol(_ sender: UISlider) {
        weight.isHidden = false;
        weightnum = Int(sender.value)
        weight.text = "\(weightnum)"
    }
    @IBAction func count(_ sender: UIStepper) {
        counter.text = "\(Int(sender.value))"
        countnum = Int(sender.value)
    }
    @IBAction func team(_ sender: AnyObject) {
        let firstSeries:[String] = ["波士頓塞爾蒂克","新澤西籃網","紐約尼克","費城76人","多倫多暴龍","芝加哥公牛","克里夫蘭騎士","底特律活塞","印地安那溜馬","密爾瓦基公鹿","亞特蘭大老鷹","夏洛特山貓","邁阿密熱火","奧蘭多魔術","華盛頓巫師","達拉斯獨行俠","休士頓火箭","孟斐斯灰熊","紐奧良黃蜂","聖安東尼奧馬刺","丹佛金塊","明尼蘇達灰狼","波特蘭拓荒者","奧克拉荷馬雷霆","猶他爵士","金州勇士","洛杉磯快艇","洛杉磯湖人","鳳凰城太陽","沙加緬度國王"]
        
        resultview.text = "恭喜你被" + firstSeries[Int.random(in: 0...29)] + "選中"
        resultview.isHidden = false;
        
    }
    @IBAction func reset(_ sender: AnyObject) {
        resultview.text = ""
        team.isHidden = true;
        reset.isHidden = true;
    }
    @IBAction func finish(_ sender: AnyObject) {
        
        if(countnum)<3
        {
            resultview.text =  name.text! + "我們很遺憾地告訴你因為你練習不夠沒能被選上，希望你多加練習再來參加選秀"
            resultview.isHidden = false;
        }
        else
        {
            if(gender.selectedSegmentIndex) == 0
            {
                resultview.text = "恭喜你" + name.text! + "被NBA選中了"
                resultview.isHidden = false;
                team.isHidden = false;
                reset.isHidden = false;
            }
            else
            {
                resultview.text = "恭喜你" + name.text! + "被ＷNBA選中了"
                resultview.isHidden = false;
                team.isHidden = false;
                reset.isHidden = false;
            }
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

