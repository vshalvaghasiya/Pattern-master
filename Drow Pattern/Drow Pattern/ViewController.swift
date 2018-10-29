//
//  ViewController.swift
//  Drow Pattern
//
//  Created by MAC on 14/09/18.
//  Copyright © 2018 vishal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func nextLetter(_ letter: String) -> String? {
        
        // Check if string is build from exactly one Unicode scalar:
        guard let uniCode = UnicodeScalar(letter) else {
            return nil
        }
        switch uniCode {
        case "A" ..< "Z":
            return String(UnicodeScalar(uniCode.value + 1)!)
        default:
            return nil
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Button Click Events
    @IBAction func pattern1ButtonClick(_ sender: Any) {
        // PATTERN 1
        var pattern = String()
        for i in 1..<6 {
            for _ in 1...i {
                pattern += " * "
            }
            pattern += "\n"
        }
        print(pattern)
    }
    
    @IBAction func pattern2ButtonClick(_ sender: UIButton) {
        var pattern = String()
        let n = 6
        for i in 1..<6 {
            for _ in 1...n-i {
                pattern += " * "
            }
            pattern += "\n"
        }
        print(pattern)
    }
    
    @IBAction func pattern3ButtonClick(_ sender: UIButton) {
        var pattern = String()
        let n = 6
        var ans = 1
        for i in 1..<6 {
            ans = i
            for _ in 1...n-i {
                pattern += " \(ans) "
                ans += 1
            }
            pattern += "\n"
        }
        print(pattern)
    }
    
    @IBAction func patter4ButtonClick(_ sender: UIButton) {
        var pattern = String()
        let n = 6
        for i in 1..<6 {
            for _ in 1...n-i {
                pattern += " "
            }
            for _ in 1...i {
                pattern += " * "
            }
            pattern += "\n"
        }
        print(pattern)
    }
    
    @IBAction func pattern5ButtonClick(_ sender: UIButton) {
        var j: Int = 0
        var pattern = String()
        for i in 1...5 {
            for _ in 1...6 - i {
                pattern += " "
            }
            for j in 1...i {
                pattern += "\(j)"
            }
            j = i - 1
            while j >= 1 {
                pattern += "\(j)"
                j -= 1
            }
            pattern += "\n"
        }
        print(pattern)
    }
    
    @IBAction func pattern6ButtonClick(_ sender: UIButton) {
        var alphabet = "A"
        
        var pattern = String()
        var char = String()
        for i in 1..<6 {
            for _ in 1...i {
                pattern += " \(alphabet) "
                char = self.nextLetter(alphabet)!
            }
            alphabet = char
            pattern += "\n"
        }
        print(pattern)
    }
    
    @IBAction func pattern7ButtonClick(_ sender: UIButton) {
        var alphabet = "A"
        let alphabet1 = "A"
        
        var pattern = String()
        var char = String()
        for i in 1..<6 {
            for _ in 1...i {
                char = self.nextLetter(alphabet)!
                pattern += " \(alphabet) "
                alphabet = char
            }
            alphabet = alphabet1
            pattern += "\n"
        }
        print(pattern)
    }
    
    @IBAction func pattern8ButtonClick(_ sender: UIButton) {
        var no = 1
        var pattern = String()
        for i in 1..<6 {
            for _ in 1...i {
                pattern += " \(no) "
                no += 1
            }
            pattern += "\n"
        }
        print(pattern)
    }
    
    @IBAction func pattern9ButtonClick(_ sender: UIButton) {
    }
    
    @IBAction func pattern10ButtonClick(_ sender: UIButton) {
    }
    
    @IBAction func pattern11ButtonClick(_ sender: UIButton) {
    }
    
    @IBAction func pattern12ButtonClick(_ sender: UIButton) {
    }
    
    @IBAction func pattern13ButtonClick(_ sender: UIButton) {
    }
    
    @IBAction func pattern14ButtonClick(_ sender: UIButton) {
    }
    
    @IBAction func pattern15ButtonClick(_ sender: UIButton) {
    }
    
    @IBAction func pattern16ButtonClick(_ sender: UIButton) {
    }
    
    @IBAction func pattern17ButtonClick(_ sender: UIButton) {
    }
    
    @IBAction func pattern18ButtonClick(_ sender: UIButton) {
    }
    
    @IBAction func pattern19ButtonClick(_ sender: UIButton) {
    }
    
    @IBAction func pattern20ButtonClick(_ sender: UIButton) {
    }
    
}

