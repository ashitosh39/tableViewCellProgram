//
//  ViewController.swift
//  tableViewCellProgram
//
//  Created by Macintosh on 01/01/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var studentTableView: UITableView!
    
    var studentNames = ["ashu","shailesh","rutik","gajanan"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        studentTableView.dataSource = self
        studentTableView.delegate = self
    }
//    func registerxib(){
//        let uinib = UINib(nibName: tableViewCellidentifier, bundle: nil)
//        self.studentTableView.
        
//    }
}
extension ViewController : UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int
    {
        2
    }
    

func tableView(_ tableView: UITableView,numberOfRowsInSection section : Int) -> Int {
    studentNames.count
}
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let basicCell = self.studentTableView.dequeueReusableCell(withIdentifier: "BasicCell", for : indexPath)
        basicCell.textLabel?.text = studentNames[indexPath.row]
        if indexPath.section % 2 == 0{
            basicCell.backgroundColor = .blue
        }else{
            basicCell.backgroundColor = .orange
        }
        print("Section Id --\(indexPath.section)Row Id --\(indexPath.row)")
        return basicCell
    }
}
    extension ViewController : UITableViewDelegate{
        
        func tableView(_ tableView : UITableView, heightForRowAt indexPath : IndexPath) -> CGFloat{
            100.0
        }
    }

