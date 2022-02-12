//
//  DetailsVC.swift
//  GithubUserDetails_SOP
//
//  Created by BhaveshLab Dev on 31/01/22.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var imgPoster: UIImageView!
    
    @IBOutlet weak var viewSocialInfo: UIView!
    @IBOutlet weak var lblFollowers: UILabel!
    @IBOutlet weak var lblFollowing: UILabel!
    
    @IBOutlet weak var viewUserInfo: UIView!
    @IBOutlet weak var lblNameTitle: UILabel!
    @IBOutlet weak var lblNameValue: UILabel!
    @IBOutlet weak var lblCompanyTitle: UILabel!
    @IBOutlet weak var lblCompanyValue: UILabel!
    @IBOutlet weak var lblBlogTitle: UILabel!
    @IBOutlet weak var lblBlogValue: UILabel!
    
    @IBOutlet weak var viewNoteInfo: UIView!
    @IBOutlet weak var lblNoteTitle: UILabel!
    @IBOutlet weak var tvNotes: UITextView!
    
    @IBOutlet weak var btnSave: UIButton!
    var strUserName = String()
    var objProfileDetails : UserCodable?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = strUserName
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor(named: "BGDarkMode")]
        navigationController?.navigationBar.titleTextAttributes = textAttributes as [NSAttributedString.Key : Any]
        
        self.setViewDesign()
        self.callProfileDetails()
    }
    
    func setViewDesign(){
        imgPoster.contentMode = .scaleAspectFill
        imgPoster.layer.borderWidth = 1.0
        imgPoster.layer.masksToBounds = false
        imgPoster.layer.cornerRadius = 10.0
        imgPoster.clipsToBounds = true
        
        viewSocialInfo.roundCorners(10.0)
        viewUserInfo.roundCorners(10.0)
        tvNotes.roundCorners(10.0)
        
        viewSocialInfo.addBorderAroundView()
        viewUserInfo.addBorderAroundView()
        tvNotes.addBorderAroundView()
        
        btnSave.backgroundColor = UIColor(named: "CLR_1")
        btnSave.addBorderAroundView()
        btnSave.setTitle("Save", for: .normal)
        btnSave.setTitleColor(UIColor(named: "BGDarkMode"), for: .normal)
        btnSave.roundCorners(5.0)

    }
    func callProfileDetails(){
        if DatabaseHandler.shared.fetchUserProfileByID(userID: Int64(objProfileDetails?.uid ?? 0)) == nil{
            NetworkManagerClass.shared.fetchGenericDataWithObject(urlString: "https://api.github.com/users/\(strUserName)") { ( objProfile : ProfileModel) in
                DispatchQueue.main.async {
                    self.SaveUserInDB(objProfile: objProfile)
                    self.setProfileData(objProfile: objProfile)
                }
            }
        }else{
            guard let objProfileModel =  DatabaseHandler.shared.fetchUserProfileByID(userID: Int64(objProfileDetails?.uid ?? 0)) else{
                return
            }
            guard let objFetchProfile = objProfileModel.toJSON()?.parse(to: ProfileModel.self) else { return }
            self.setProfileData(objProfile: objFetchProfile)
        }
    }
    
    func SaveUserInDB(objProfile: ProfileModel){
        DatabaseHandler.shared.createUserProfile(objUserProfile: objProfile)
    }
    
    func setProfileData(objProfile : ProfileModel){
        self.imgPoster.loadImageUsingCache(withUrl: objProfile.avatarUrl ?? "https://avatars.githubusercontent.com/u/1?v=4")
        self.lblFollowers.text = "Followers:\(objProfile.followers ?? 0)"
        self.lblFollowing.text = "Following:\(objProfile.following ?? 0)"
        self.lblNameValue.text = objProfile.name?.count ?? 0 > 0 ? objProfile.name : "-"
        self.lblCompanyValue.text = objProfile.company?.count ?? 0 > 0 ? objProfile.company : "-"
        self.lblBlogValue.text = objProfile.blog?.count ?? 0 > 0 ? objProfile.blog : "-"
        self.tvNotes.text = objProfile.nodeId
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func actionSave(_ sender: Any) {
        
    }
}
