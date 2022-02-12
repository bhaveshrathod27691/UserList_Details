//
//  User+CoreDataProperties.swift
//  GithubUserDetails_SOP
//
//  Created by BhaveshLab Dev on 02/02/22.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var avatarUrl: String?
    @NSManaged public var eventsUrl: String?
    @NSManaged public var followersUrl: String?
    @NSManaged public var followingUrl: String?
    @NSManaged public var gistsUrl: String?
    @NSManaged public var gravatarId: String?
    @NSManaged public var htmlUrl: String?
    @NSManaged public var uid: Int64
    @NSManaged public var login: String?
    @NSManaged public var nodeId: String?
    @NSManaged public var organizationsUrl: String?
    @NSManaged public var receivedEventsUrl: String?
    @NSManaged public var reposUrl: String?
    @NSManaged public var siteAdmin: Bool
    @NSManaged public var starredUrl: String?
    @NSManaged public var subscriptionsUrl: String?
    @NSManaged public var type: String?
    @NSManaged public var url: String?

}

extension User : Identifiable {
    
}
