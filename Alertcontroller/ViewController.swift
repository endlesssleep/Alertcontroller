//
//  ViewController.swift
//  Alertcontroller
//
//  Created by D7702_10 on 2019. 4. 11..
//  Copyright © 2019년 D7702_10. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var returnLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func camButtonPressed(_ sender: Any) {
    let myAlertController = UIAlertController(title: "Camera", message: "Take a Pictyre", preferredStyle: .alert)
        
    // UIAlertAction 정의
        let camAction = UIAlertAction(title: "사진촬영", style: .default){
            (action:UIAlertAction) -> Void in
            self.returnLabel.text = "사진촬영을 시작합니다!!"
            self.view.backgroundColor = UIColor.yellow
        }
        
        //
        let libAction = UIAlertAction(title: "사진 라이브러리", style: .default){
            (action:UIAlertAction) -> Void in
                self.returnLabel.text = "사진 라이브러리 가기!!"
                self.view.backgroundColor = UIColor.green
        }
        
     let saveAction = UIAlertAction(title: "사진저장", style: .default , handler: nil)
    
     let cancelAction = UIAlertAction(title: "취소", style: .cancel , handler: nil)
        
    let deleteAction = UIAlertAction(title: "삭제", style: .destructive , handler: nil)
        
    //UIAlertAction을 UIAlertController에 등록(add)
    myAlertController.addAction(camAction)
    myAlertController.addAction(libAction)
    myAlertController.addAction(saveAction)
    myAlertController.addAction(cancelAction)
    myAlertController.addAction(deleteAction)
    self.present(myAlertController, animated: true, completion: nil)
        
    }
}
