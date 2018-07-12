//
//  ColorPickerViewController.swift
//  Color Picker Challenge
//
//  Created by Brendan Krekeler on 7/12/18.
//  Copyright © 2018 Brendan Krekeler. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController {
    
    private let dataSource = [ "Red", "Orange", "Yellow", "Green", "Blue", "Purple"]
    
    @IBOutlet weak var detailColorLabel: UILabel!
    @IBOutlet weak var colorPickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorPickerView.dataSource = self
        colorPickerView.delegate = self
        detailColorLabel.text = dataSource[0]
        view.backgroundColor = UIColor.red

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

extension ColorPickerViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        detailColorLabel.text = dataSource[row]
            if(row == 0)
            {
                self.view.backgroundColor = UIColor.red;
            }
            else if(row == 1)
            {
                self.view.backgroundColor = UIColor.orange;
            }
            else if(row == 2)
            {
                self.view.backgroundColor =  UIColor.yellow;
            }
            else if(row == 3)
            {
                self.view.backgroundColor = UIColor.green;
            }
            else if(row == 4)
            {
                self.view.backgroundColor = UIColor.blue;
            }
            else
            {
                self.view.backgroundColor = UIColor.purple;
            }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSource[row]
    }
    
}

