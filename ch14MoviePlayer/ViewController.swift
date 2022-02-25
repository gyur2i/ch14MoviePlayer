//
//  ViewController.swift
//  ch14MoviePlayer
//
//  Created by 김규리 on 2022/01/25.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // 앱 내부 비디오 재생

    @IBAction func btnPlayInternalMovie(_ sender: UIButton) {
        let filePath:String? = Bundle.main.path(forResource: "FastTyping", ofType: "mp4") // 파일 경로 불러오기
        let url = NSURL(fileURLWithPath: filePath!) // 앱 내부의 파일명을 NSURL 형식으로 변경
        
        playVideo(url: url)
    }
    
    
    
    // 앱 외부 비디오 재생
    @IBAction func btnPlayExternalMovie(_ sender: UIButton) {
        let url = NSURL(string: "https://dl.dropboxusercontent.com/s/e38auz050w2mvud/Fireworks.mp4")!
        
        playVideo(url: url)
    }
    

    // 비디오 재생 함수
    private func playVideo(url: NSURL) {
        let playerController = AVPlayerViewController()
        
        let player = AVPlayer(url: url as URL)
        playerController.player = player
        
        self.present(playerController, animated: true) {
            player.play()
        }
    }
    
    
}

