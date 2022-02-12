//
//  UserProfile+CoreDataProperties.swift
//  GithubUserDetails_SOP
//
//  Created by BhaveshLab Dev on 02/02/22.
//
//

import Foundation
import CoreData


extension UserProfile {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserProfile> {
        return NSFetchRequest<UserProfile>(entityName: "UserProfile")
    }

    @NSManaged public var avatarUrl: NSObject?
    @NSManaged public var bio: NSObject?
    @NSManaged public var blog: NSObject?
    @NSManaged public var company: NSObject?
    @NSManaged public var createdAt: NSObject?
    @NSManaged public var email: NSObject?
    @NSManaged public var eventsUrl: NSObject?
    @NSManaged public var followers: NSObject?
    @NSManaged public var followersUrl: NSObject?
    @NSManaged public var following: NSObject?
    @NSManaged public var followingUrl: NSObject?
    @NSManaged public var gistsUrl: NSObject?
    @NSManaged public var gravatarId: NSObject?
    @NSManaged public var hireable: NSObject?
    @NSManaged public var htmlUrl: NSObject?
    @NSManaged public var uid: NSObject?
    @NSManaged public var location: NSObject?
    @NSManaged public var login: NSObject?
    @NSManaged public var name: NSObject?
    @NSManaged public var nodeId: NSObject?
    @NSManaged public var organizationsUrl: NSObject?
    @NSManaged public var publicRepos: NSObject?
    @NSManaged public var publicGists: NSObject?
    @NSManaged public var receivedEventsUrl: NSObject?
    @NSManaged public var reposUrl: NSObject?
    @NSManaged public var siteAdmin: NSObject?
    @NSManaged public var starredUrl: NSObject?
    @NSManaged public var subscriptionsUrl: NSObject?
    @NSManaged public var twitterUsername: NSObject?
    @NSManaged public var type: NSObject?
    @NSManaged public var updatedAt: NSObject?
    @NSManaged public var url: NSObject?

}

extension UserProfile : Identifiable {

}
