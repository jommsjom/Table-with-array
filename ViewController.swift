//
//  ViewController.swift
//  Tableviewandcollectionview
//
//  Created by Jomms on 28/09/22.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    

    var fruit:[UIImage] = []
    var furitsname:[String] = ["Apple","Orang","Mango"]
    var cell = TableviewcellTableViewCell()

  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    func tableView(_ tableView: UITableView, didBeginMultipleSelectionInteractionAt indexPath: IndexPath) {
    
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        cell = tableview.dequeueReusableCell(withIdentifier:"cell", for: indexPath) as! TableviewcellTableViewCell
        cell.imgview?.image = fruit[indexPath.row]
       // cell.lbl.text? = furitsname[indexPath.row]
         //cell.txtfld.text = str2[indexPath.row]
        return cell
        
       }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        100
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView(frame:CGRect(x: 0, y: 0, width:view.frame.size.width, height:1000 ))
        header.backgroundColor = .yellow
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .black
        lbl.backgroundColor = .brown
        lbl.text = furitsname[section]
        header.addSubview(lbl)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.topAnchor.constraint(equalTo:header.topAnchor ,constant:20).isActive = true
        lbl.leadingAnchor.constraint(equalTo:header.leadingAnchor,constant: 120).isActive = true
        //lbl.trailingAnchor.constraint(equalTo:header.trailingAnchor,constant: 60).isActive = true
       // lbl.bottomAnchor.constraint(equalTo:header.bottomAnchor,constant: 30)
      //  lbl.leadingAnchor.constraint(equalTo: header.leadingAnchor, constant: 50).isActive = true
       lbl.widthAnchor.constraint(equalToConstant: 200).isActive = true
       lbl.heightAnchor.constraint(equalToConstant: 70).isActive = true
        lbl.contentMode = .scaleAspectFit
        return header
}
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
       if let vc = storyboard?.instantiateViewController(withIdentifier:"collectionviw") as? CollectionViewController{
           vc.img = fruit[indexPath.row]as!UIImage
        self.navigationController?.pushViewController(vc, animated: true)
       }

    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    
    @IBOutlet var tableview: UITableView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //view.addSubview(tableviw)
        tableview.delegate = self
        tableview.dataSource = self
       
       
       
        loadarray()
    }
    func loadarray() {
        fruit.append(UIImage(imageLiteralResourceName:"image1"))
        fruit.append(UIImage(imageLiteralResourceName:"image2"))
        fruit.append(UIImage(imageLiteralResourceName:"image3"))
        fruit.append(UIImage(imageLiteralResourceName:"image4"))
        fruit.append(UIImage(imageLiteralResourceName:"images"))
        fruit.append(UIImage(imageLiteralResourceName:"download1"))
        fruit.append(UIImage(imageLiteralResourceName:"download 2"))
        
    }
  override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
       // tableviw.frame = view.bounds
        
    }


}

