//
//  ViewController.swift
//  hero_game
//
//  Created by Tyree Stevenson on 1/25/16.
//  Copyright © 2016 Tyree Stevenson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blue_textholder: UIButton!
    @IBOutlet weak var blue_txtlb: UILabel!
    var player1 = Character(hp2: 100, attackPwr2: 20, name2: "player1")
    var player2 = Character(hp2: 100, attackPwr2: 30, name2: "player2")
    
    func winnerlabel(){
        if player1.dead() || player2.dead() {
            if player1.dead() {
                blue_txtlb.text = "Player 2 won. Tap to restart"
            }
            if player2.dead() {
                blue_txtlb.text = "Player 1 won. Tap to restart"
            }
        }
    }
    
    
    @IBAction func restart_btn(sender: UIButton) {
        if player1.dead() || player2.dead() {
            print("i restarted")
            player1.hp = 100
            player2.hp = 100
            blue_txtlb.text = "start attacking"
        }
    }
    
    @IBAction func attackBtn1(sender: UIButton) {
        player2.hp = player2.hp - player1.attackPwr
        print("PLAYER 2: ",player2.hp)
        winnerlabel()
    }
    @IBAction func attackBtn2(sender: UIButton) {
        player1.hp = player1.hp - player2.attackPwr
        print("PLAYER 1:",player1.hp)
        winnerlabel()
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

