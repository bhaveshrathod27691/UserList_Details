//
//  ViewController.swift
//  GithubUserDetails_SOP
//
//  Created by BhaveshLab Dev on 31/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblUserList: UITableView!
    var arrUserList = [UserCodable]()
    var currentPage : Int = 1
    var isLoadingList : Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Users"
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor(named: "BGDarkMode")]
        navigationController?.navigationBar.titleTextAttributes = textAttributes as [NSAttributedString.Key : Any]
        
        self.registerCell()
        self.callUserListApi(currentPage)
    }
    
    func registerCell(){
        tblUserList.delegate = self
        tblUserList.dataSource = self
        tblUserList.register(UINib(nibName: "ListCell", bundle: nil), forCellReuseIdentifier: "ListCell")
    }

    func callUserListApi(_ pageNumber: Int){
        isLoadingList  = true
        NetworkManagerClass.shared.fetchGenericData(urlString: "https://api.github.com/users/vojtajina/followers?page=\(pageNumber)&per_page=20") { (arrUser : [UserCodable]) in
            DispatchQueue.main.async {
                if self.arrUserList.count > 0 {
                    self.arrUserList.append(contentsOf: arrUser)
                }else{
                    self.arrUserList = arrUser
                }
                self.SaveUserInDB()
                self.tblUserList.reloadData()
                self.tblUserList.tableFooterView?.isHidden = false
                self.isLoadingList = false
            }
        }
    }
    
    func SaveUserInDB(){
        for objUser in self.arrUserList {
            if DatabaseHandler.shared.fetchUserByID(userID: Int64(objUser.uid ?? 0)) == nil  {
                DatabaseHandler.shared.createUser(objUser: objUser)
            }
        }
    }
    
    func loadMoreItemsForList(){
        currentPage += 1
        callUserListApi(currentPage)
    }

}

extension ViewController : UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrUserList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell") as! ListCell
        let objUSerModel = arrUserList[indexPath.row]

        cell.imgView.layer.borderWidth = 1.0
        cell.imgView.layer.masksToBounds = false
        cell.imgView.layer.cornerRadius = 25.0
        cell.imgView.clipsToBounds = true
        
        cell.imgView.loadImageUsingCache(withUrl: objUSerModel.avatarUrl ?? "https://avatars.githubusercontent.com/u/1?v=4")
        cell.lblUserName.text = objUSerModel.login
        cell.lblDetails.text = objUSerModel.avatarUrl
        cell.mainView.backgroundColor = setBackGroundColorForCell(index: Int64(indexPath.row))
        cell.mainView.roundCorners(10)
        cell.mainView.addViewShadow()
        cell.mainView.dropShadow(color: .gray, opacity: 1, offSet: CGSize(width: -1, height: 1), radius: 3, scale: true)
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let lastItem = self.arrUserList.count - 1
        if indexPath.row == lastItem && !isLoadingList{
            print("IndexRow\(indexPath.row)")
            
            let spinner = UIActivityIndicatorView(style: .medium)
            spinner.startAnimating()
            spinner.frame = CGRect(x: CGFloat(0), y: CGFloat(0), width: tableView.bounds.width, height: CGFloat(44))
            tableView.tableFooterView = spinner
            tableView.tableFooterView?.isHidden = false
            
            self.loadMoreItemsForList()
               //Get data from Server
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let objUSerModel = arrUserList[indexPath.row]
        let objDetailsVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailsVC") as! DetailsVC
        objDetailsVC.strUserName = objUSerModel.login ?? ""
        objDetailsVC.objProfileDetails = objUSerModel
        self.navigationController?.pushViewController(objDetailsVC, animated: true)
    }
    
    func setBackGroundColorForCell(index : Int64) -> UIColor?{
        if index % 9 == 0 {
            return UIColor(named: "CLR_1")
        }else if index % 9 == 1 {
            return UIColor(named: "CLR_2")
        }else if index % 9 == 2 {
            return UIColor(named: "CLR_3")
        }else if index % 9 == 3 {
            return UIColor(named: "CLR_4")
        }else if index % 9 == 4 {
            return UIColor(named: "CLR_5")
        }else if index % 9 == 5 {
            return UIColor(named: "CLR_6")
        }else if index % 9 == 6 {
            return UIColor(named: "CLR_7")
        }else if index % 9 == 7 {
            return UIColor(named: "CLR_8")
        }else{
            return UIColor(named: "CLR_9")
        }
    }
    
}
