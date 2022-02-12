//
//	RootClass.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

//import Foundation
//import CoreData
//
//class UserModel : NSManagedObject {
//
//	@NSManaged var avatarUrl : String!
//	@NSManaged var eventsUrl : String!
//	@NSManaged var followersUrl : String!
//	@NSManaged var followingUrl : String!
//	@NSManaged var gistsUrl : String!
//	@NSManaged var gravatarId : String!
//	@NSManaged var htmlUrl : String!
//	@NSManaged var id : Int
//	@NSManaged var login : String!
//	@NSManaged var nodeId : String!
//	@NSManaged var organizationsUrl : String!
//	@NSManaged var receivedEventsUrl : String!
//	@NSManaged var reposUrl : String!
//	@NSManaged var siteAdmin : Bool
//	@NSManaged var starredUrl : String!
//	@NSManaged var subscriptionsUrl : String!
//	@NSManaged var type : String!
//	@NSManaged var url : String!
//
//
//	/**
//	 * Instantiate the instance using the passed dictionary values to set the properties values
//	 */
//	init(fromDictionary dictionary: [String:Any], context: NSManagedObjectContext)	{
//        let entity = NSEntityDescription.entity(forEntityName: "User", in: context)!
//        super.init(entity: entity, insertInto: context)
//		if let avatarUrlValue = dictionary["avatar_url"] as? String{
//			avatarUrl = avatarUrlValue
//		}
//		if let eventsUrlValue = dictionary["events_url"] as? String{
//			eventsUrl = eventsUrlValue
//		}
//		if let followersUrlValue = dictionary["followers_url"] as? String{
//			followersUrl = followersUrlValue
//		}
//		if let followingUrlValue = dictionary["following_url"] as? String{
//			followingUrl = followingUrlValue
//		}
//		if let gistsUrlValue = dictionary["gists_url"] as? String{
//			gistsUrl = gistsUrlValue
//		}
//		if let gravatarIdValue = dictionary["gravatar_id"] as? String{
//			gravatarId = gravatarIdValue
//		}
//		if let htmlUrlValue = dictionary["html_url"] as? String{
//			htmlUrl = htmlUrlValue
//		}
//		if let idValue = dictionary["id"] as? Int{
//			id = idValue
//		}
//		if let loginValue = dictionary["login"] as? String{
//			login = loginValue
//		}
//		if let nodeIdValue = dictionary["node_id"] as? String{
//			nodeId = nodeIdValue
//		}
//		if let organizationsUrlValue = dictionary["organizations_url"] as? String{
//			organizationsUrl = organizationsUrlValue
//		}
//		if let receivedEventsUrlValue = dictionary["received_events_url"] as? String{
//			receivedEventsUrl = receivedEventsUrlValue
//		}
//		if let reposUrlValue = dictionary["repos_url"] as? String{
//			reposUrl = reposUrlValue
//		}
//		if let siteAdminValue = dictionary["site_admin"] as? Bool{
//			siteAdmin = siteAdminValue
//		}
//		if let starredUrlValue = dictionary["starred_url"] as? String{
//			starredUrl = starredUrlValue
//		}
//		if let subscriptionsUrlValue = dictionary["subscriptions_url"] as? String{
//			subscriptionsUrl = subscriptionsUrlValue
//		}
//		if let typeValue = dictionary["type"] as? String{
//			type = typeValue
//		}
//		if let urlValue = dictionary["url"] as? String{
//			url = urlValue
//		}
//	}
//
//	/**
//	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
//	 */
//	func toDictionary() -> [String:Any]
//	{
//		var dictionary = [String:Any]()
//		if avatarUrl != nil{
//			dictionary["avatar_url"] = avatarUrl
//		}
//		if eventsUrl != nil{
//			dictionary["events_url"] = eventsUrl
//		}
//		if followersUrl != nil{
//			dictionary["followers_url"] = followersUrl
//		}
//		if followingUrl != nil{
//			dictionary["following_url"] = followingUrl
//		}
//		if gistsUrl != nil{
//			dictionary["gists_url"] = gistsUrl
//		}
//		if gravatarId != nil{
//			dictionary["gravatar_id"] = gravatarId
//		}
//		if htmlUrl != nil{
//			dictionary["html_url"] = htmlUrl
//		}
//		dictionary["id"] = id
//		if login != nil{
//			dictionary["login"] = login
//		}
//		if nodeId != nil{
//			dictionary["node_id"] = nodeId
//		}
//		if organizationsUrl != nil{
//			dictionary["organizations_url"] = organizationsUrl
//		}
//		if receivedEventsUrl != nil{
//			dictionary["received_events_url"] = receivedEventsUrl
//		}
//		if reposUrl != nil{
//			dictionary["repos_url"] = reposUrl
//		}
//		dictionary["site_admin"] = siteAdmin
//		if starredUrl != nil{
//			dictionary["starred_url"] = starredUrl
//		}
//		if subscriptionsUrl != nil{
//			dictionary["subscriptions_url"] = subscriptionsUrl
//		}
//		if type != nil{
//			dictionary["type"] = type
//		}
//		if url != nil{
//			dictionary["url"] = url
//		}
//		return dictionary
//	}
//
//}
//
//extension CodingUserInfoKey {
//   static let context = CodingUserInfoKey(rawValue: "context")
//}
