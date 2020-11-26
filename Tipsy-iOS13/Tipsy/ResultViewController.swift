//
//  ResultViewController.swift
//  Tipsy
//
//  Created by 罗贤甫 on 2020/11/26.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var data : Data?
    @IBOutlet weak var personalValue: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        personalValue.text = String(data?.perPerson() ?? 0.0)
        settingsLabel.text = "Split between \(Int(data?.number ?? 0)) people, with \(Int((data?.tip ?? 0.0)*100))% tip."
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
