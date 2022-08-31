//
//  ViewController.swift
//  TextField
//
//  Created by Muhammad Mudassar Yasin on 07/06/2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var tfImage: UIImageView!
    @IBOutlet weak var tf: PaddingTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        tf.layer.cornerRadius = tf.frame.height/2
        tf.layer.borderWidth = 1
        tf.layer.borderColor = UIColor.opaqueSeparator.cgColor

    }

}


class PaddingTextField: UITextField {


    let padding = UIEdgeInsets(top: 0, left: 50, bottom: 0, right: 50)

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
