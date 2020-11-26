//
//  Data.swift
//  Tipsy
//
//  Created by 罗贤甫 on 2020/11/26.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation
class Data{
    var bill : Float?
    var tip : Float?
    var number : Int?
    init(bill: Float, tip: Float, number: Int) {
        self.bill = bill
        self.tip = tip
        self.number = number
    }
    func perPerson() -> Float {
        return (bill!+bill!*tip!)/Float(number!)
    }
}
