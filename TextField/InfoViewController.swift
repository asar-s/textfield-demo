//
//  InfoViewController.swift
//  TextField
//
//  Created by Muhammad Mudassar Yasin on 07/06/2022.
//

import UIKit

class InfoViewController: UIViewController {
//    @IBOutlet weak var tf: AddPaddingTextField!
//    @IBOutlet weak var tfLast: AddPaddingTextField!
//    @IBOutlet weak var tfHt: AddPaddingTextField!
//    @IBOutlet weak var tfWt: AddPaddingTextField!
//    @IBOutlet weak var tfAge: AddPaddingTextField!
//    @IBOutlet weak var tfTarget: AddPaddingTextField!
    @IBOutlet weak var tfLifter: AddPaddingTextField!
    
    @IBOutlet var lblCollection: [UILabel]!
    @IBOutlet var tfCollection: [AddPaddingTextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tfCollection.forEach { (tfs) in
        Border(to: tfs)
//        for i in 0..<tfCollection.count{
//            if i <= 5 {
//                Border(to: tfs)
            tfLifter.attributedPlaceholder = NSAttributedString(string:"Select an answer", attributes:[NSAttributedString.Key.foregroundColor: UIColor.opaqueSeparator])
                    
        }
    }


    func Border(to textfield: AddPaddingTextField) {
        textfield.layer.cornerRadius = textfield.frame.height/2
        textfield.layer.borderWidth = 1
        textfield.layer.borderColor = UIColor.opaqueSeparator.cgColor
        textfield.attributedPlaceholder = NSAttributedString(string:"Type answer...", attributes:[NSAttributedString.Key.foregroundColor: UIColor.opaqueSeparator])
    }

}
class AddPaddingTextField: UITextField {
    
    let padding = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)

    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}

