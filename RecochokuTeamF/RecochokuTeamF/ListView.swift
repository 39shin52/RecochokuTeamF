//
//  ListView.swift
//  RecochokuTeamF
//
//  Created by recochoku04 on 2022/11/12.
//

import Foundation
import UIKit


class ListView: UINavigationController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let dataList = ["bump","oral","king gnu","vaundy"]
    
    override func viewDidLoad(){
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return dataList.count
        }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)
        let cell = UITableViewCell()
            cell.textLabel?.text = dataList[indexPath.row]
            return cell
        }
    
}
