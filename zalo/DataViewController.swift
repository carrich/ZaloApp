//
//  DataViewController.swift
//  zalo
//
//  Created by Ngoduc on 5/22/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {
    let listContact = [Person(image: "p1", name: "nguyen van nam", message: "", time: ""),
    Person(image: "p2", name: "Nguyễn Trọng Phú", message: "", time: ""),
    Person(image: "p3", name: "Huy Hùng", message: "", time: ""),
    Person(image: "p4", name: "Hoàng long", message: "", time: ""),
    Person(image: "p5", name: "Nhà đất", message: "", time: "")]
    
    @IBOutlet weak var tableView2: UITableView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableView2.dataSource = self
        tableView2.delegate = self
       tableView2.register(UINib(nibName: "DanhBaTableViewCell", bundle: nil), forCellReuseIdentifier: "DanhBaTableViewCell")
    }


    
}
extension DataViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0 :
            let cell = tableView.dequeueReusableCell(withIdentifier: "DanhBaTableViewCell", for: indexPath) as! DanhBaTableViewCell
            cell.imageName.image = UIImage(named: listContact[indexPath.section].image)
            cell.name.text = listContact[indexPath.section].name
            return cell
        case 1 :
            let cell = tableView.dequeueReusableCell(withIdentifier: "DanhBaTableViewCell", for: indexPath) as! DanhBaTableViewCell
            cell.imageName.image = UIImage(named: listContact[indexPath.section].image)
            cell.name.text = listContact[indexPath.section].name
            return cell
        case 2 :
            let cell = tableView.dequeueReusableCell(withIdentifier: "DanhBaTableViewCell", for: indexPath) as! DanhBaTableViewCell
            cell.imageName.image = UIImage(named: listContact[indexPath.section].image)
            cell.name.text = listContact[indexPath.section].name
            return cell
        case 3 :
            let cell = tableView.dequeueReusableCell(withIdentifier: "DanhBaTableViewCell", for: indexPath) as! DanhBaTableViewCell
            cell.imageName.image = UIImage(named: listContact[indexPath.section].image)
            cell.name.text = listContact[indexPath.section].name
            return cell
       
        
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "DanhBaTableViewCell", for: indexPath) as! DanhBaTableViewCell
            cell.imageName.image = UIImage(named: listContact[indexPath.section].image)
            cell.name.text = listContact[indexPath.section].name
            return cell
        }
    
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
         switch section {
               case 0 : return "A"
            case 1 : return "B"
            case 2 : return "C"
            case 3 : return "D"
         default:
            return ""
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
