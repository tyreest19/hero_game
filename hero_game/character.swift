//
//  character.swift
//  hero_game
//
//  Created by Tyree Stevenson on 1/25/16.
//  Copyright © 2016 Tyree Stevenson. All rights reserved.
//

import Foundation

class Character {
    private var _hp: Int
    private var _attackPwr: Int
    private var _name: String
    
    var hp: Int {
        get {
            return _hp
        }
        set {
           _hp = newValue
        }

    }
    
    var attackPwr: Int {
        get {
            return _attackPwr
        }
    }
    var name:String {
        get {
            return _name
        }
    }
    func dead() ->Bool {
        if self._hp <= 0 {
            return true
        }
        else {
            return false
        }
    }
    
    init(hp2: Int,attackPwr2: Int, name2: String) {
        self._hp = hp2
        self._attackPwr = attackPwr2
        self._name = name2
    }
}