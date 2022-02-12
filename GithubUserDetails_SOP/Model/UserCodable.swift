//
//    RootClass.swift
//    Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct UserCodable : Codable {

    let avatarUrl : String?
    let eventsUrl : String?
    let followersUrl : String?
    let followingUrl : String?
    let gistsUrl : String?
    let gravatarId : String?
    let htmlUrl : String?
    let uid : Int?
    let login : String?
    let nodeId : String?
    let organizationsUrl : String?
    let receivedEventsUrl : String?
    let reposUrl : String?
    let siteAdmin : Bool?
    let starredUrl : String?
    let subscriptionsUrl : String?
    let type : String?
    let url : String?


    enum CodingKeys: String, CodingKey {
        case avatarUrl = "avatar_url"
        case eventsUrl = "events_url"
        case followersUrl = "followers_url"
        case followingUrl = "following_url"
        case gistsUrl = "gists_url"
        case gravatarId = "gravatar_id"
        case htmlUrl = "html_url"
        case uid = "id"
        case login = "login"
        case nodeId = "node_id"
        case organizationsUrl = "organizations_url"
        case receivedEventsUrl = "received_events_url"
        case reposUrl = "repos_url"
        case siteAdmin = "site_admin"
        case starredUrl = "starred_url"
        case subscriptionsUrl = "subscriptions_url"
        case type = "type"
        case url = "url"
    }
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        avatarUrl = try values.decodeIfPresent(String.self, forKey: .avatarUrl)
        eventsUrl = try values.decodeIfPresent(String.self, forKey: .eventsUrl)
        followersUrl = try values.decodeIfPresent(String.self, forKey: .followersUrl)
        followingUrl = try values.decodeIfPresent(String.self, forKey: .followingUrl)
        gistsUrl = try values.decodeIfPresent(String.self, forKey: .gistsUrl)
        gravatarId = try values.decodeIfPresent(String.self, forKey: .gravatarId)
        htmlUrl = try values.decodeIfPresent(String.self, forKey: .htmlUrl)
        uid = try values.decodeIfPresent(Int.self, forKey: .uid)
        login = try values.decodeIfPresent(String.self, forKey: .login)
        nodeId = try values.decodeIfPresent(String.self, forKey: .nodeId)
        organizationsUrl = try values.decodeIfPresent(String.self, forKey: .organizationsUrl)
        receivedEventsUrl = try values.decodeIfPresent(String.self, forKey: .receivedEventsUrl)
        reposUrl = try values.decodeIfPresent(String.self, forKey: .reposUrl)
        siteAdmin = try values.decodeIfPresent(Bool.self, forKey: .siteAdmin)
        starredUrl = try values.decodeIfPresent(String.self, forKey: .starredUrl)
        subscriptionsUrl = try values.decodeIfPresent(String.self, forKey: .subscriptionsUrl)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        url = try values.decodeIfPresent(String.self, forKey: .url)
    }

//    func ConvertManagedObjectToCodableUserModel(objUserModelDB : User){
//
//        self.avatarUrl =  objUserModelDB.avatarUrl
//        self.eventsUrl = objUserModelDB.eventsUrl
//        self.followersUrl = objUserModelDB.followersUrl
//        self.followingUrl = objUserModelDB.followingUrl
//        self.gistsUrl = objUserModelDB.gistsUrl
//        self.gravatarId = objUserModelDB.gravatarId
//        self.htmlUrl = objUserModelDB.htmlUrl
//        self.id = Int16(objUserModelDB.id )
//        self.login = objUserModelDB.login
//        self.nodeId = objUserModelDB.nodeId
//        self.organizationsUrl = objUserModelDB.organizationsUrl
//        self.receivedEventsUrl = objUserModelDB.receivedEventsUrl
//        self.reposUrl = objUserModelDB.reposUrl
//        self.siteAdmin = Bool(objUserModelDB.siteAdmin )
//        self.starredUrl = objUserModelDB.starredUrl
//        self.subscriptionsUrl = objUserModelDB.subscriptionsUrl
//        self.type = objUserModelDB.type
//        self.url = objUserModelDB.url
//    }

}
