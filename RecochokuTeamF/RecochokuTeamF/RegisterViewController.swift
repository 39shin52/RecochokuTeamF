//
//  RegisterViewController.swift
//  RecochokuTeamF
//
//  Created by recochoku02 on 2022/11/13.
//

import UIKit

class RegisterViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {

    var genres: [String] = []
    @IBOutlet weak var genrePickerView: UIPickerView!
    
    @IBOutlet weak var genreTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        genres.append("")
        genres.append("J-pop")
        genres.append("邦楽")
        genres.append("hiphop")
        genres.append("Kpop")
        genres.append("洋楽")
        
        let pv = UIPickerView()
        pv.delegate = self
        pv.dataSource = self

        genreTextField.delegate = self
        genreTextField.inputAssistantItem.leadingBarButtonGroups = []
        genreTextField.inputView = pv
        self.genrePickerView = pv

        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)

        
        
        // Do any additional setup after loading the view.
    }
    @objc func dismissKeyboard() {
        self.view.endEditing(true)
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return genres.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return genres[row]
    }

    func pickerView(_
                    pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        genreTextField.text = genres[row]
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


