//
//  ViewController.swift
//  WheelPractice
//
//  Created by Tiffany Sakaguchi on 7/19/21.
//

import UIKit
import CircleAnimatedMenu

class ViewController: UIViewController, CircleAnimatedMenuDelegate {

    @IBOutlet weak var wheelMenu: CircleAnimatedMenu!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let widthHeight = view.frame.width * 0.85
        let xPosition = (view.frame.width - widthHeight) / 2
        let yPosition = view.frame.height / 5
        let menuFrame = CGRect(x: xPosition, y: yPosition, width: widthHeight, height: widthHeight)
//        let testMenu = CircleAnimatedMenu(menuFrame: menuFrame, dataArray: [("aquarius", "Aquarius"), ("aries", "Aries"), ("cancer", "Cancer"), ("capricorn", "Capricorn"), ("gemini", "Gemini"), ("leo", "Leo"), ("libra", "Libra"), ("pisces", "Pisces"), ("sagittarius", "Sagittarius\nNovember 22 - December 15"), ("scorpio", "Scorpio"), ("taurus", "Taurus"), ("virgo", "Virgo")])
        let testMenu = CircleAnimatedMenu(menuFrame: menuFrame, dataArray: [("taurus-2-512", "Taurus\nApr 20 - May 20"), ("gemini-2-512", "Gemini\nMay 21 - Jun 20"), ("cancer-2-512", "Cancer\nJun 21 - Jul 22"), ("leo-2-512", "Leo\nJul 23 - Aug 22"),  ("virgo-2-512", "Virgo\nAug 23 - Sep 22"), ("libra-2-512", "Libra\nSep 23 - Oct 22"), ("scorpio-2-512", "Scorpio\nOct 23 - Nov 21"), ("sagittarius-2-512", "Sagittarius\nNov 22 - Dec 21"), ("capricorn-2-512", "Capricorn\nDec 22 - Jan 19"), ("aquarius-2-512", "Aquarius\nJan 20 - Feb 18"), ("pisces-2-512", "Pisces\nFeb 19 - Mar 20"), ("aries-2-512", "Aries\nMar 21 - Apr 19")])
        testMenu.delegate = self
        self.view.addSubview(testMenu)
    
    }

    func sectionSelected(text: String, index: Int) {
        print(text.lowercased())
    }
    
}

