//
//  UserProfile+CoreDataClass.swift
//  GithubUserDetails_SOP
//
//  Created by BhaveshLab Dev on 02/02/22.
//
//

import Foundation
import CoreData


public class UserProfile: NSManagedObject {

}


//enum CodingKeys: String, CodingKey {
//    case avatarUrl = "avatar_url"
//    case bio = "bio"
//    case blog = "blog"
//    case company = "company"
//    case createdAt = "created_at"
//    case email = "email"
//    case eventsUrl = "events_url"
//    case followers = "followers"
//    case followersUrl = "followers_url"
//    case following = "following"
//    case followingUrl = "following_url"
//    case gistsUrl = "gists_url"
//    case gravatarId = "gravatar_id"
//    case hireable = "hireable"
//    case htmlUrl = "html_url"
//    case uid = "id"
//    case location = "location"
//    case login = "login"
//    case name = "name"
//    case nodeId = "node_id"
//    case organizationsUrl = "organizations_url"
//    case publicGists = "public_gists"
//    case publicRepos = "public_repos"
//    case receivedEventsUrl = "received_events_url"
//    case reposUrl = "repos_url"
//    case siteAdmin = "site_admin"
//    case starredUrl = "starred_url"
//    case subscriptionsUrl = "subscriptions_url"
//    case twitterUsername = "twitter_username"
//    case type = "type"
//    case updatedAt = "updated_at"
//    case url = "url"
//}
//
//
//public func encode(to encoder: Encoder) throws {
//    var values = encoder.container(keyedBy: CodingKeys.self)
//    try values.encode(avatarUrl , forKey: .avatarUrl)
//    try values.encode(bio, forKey: .bio)
//    try values.encode(blog , forKey: .blog)
//    try values.encode(company, forKey: .company)
//    try values.encode(createdAt, forKey: .createdAt)
//    try values.encode(email, forKey: .email)
//    try values.encode(eventsUrl, forKey: .eventsUrl)
//    try values.encode(followers, forKey: .followers)
//    try values.encode(followersUrl, forKey: .followersUrl)
//    try values.encode(following, forKey: .following)
//    try values.encode(followingUrl, forKey: .followingUrl)
//    try values.encode(gistsUrl, forKey: .gistsUrl)
//    try values.encode(gravatarId, forKey: .gravatarId)
//    try values.encode(hireable, forKey: .hireable)
//    try values.encode(htmlUrl , forKey: .htmlUrl)
//    try values.encode(uid, forKey: .uid)
//    try values.encode(location , forKey: .location)
//    try values.encode(login, forKey: .login)
//    try values.encode(name , forKey: .name)
//    try values.encode(nodeId , forKey: .nodeId)
//    try values.encode(organizationsUrl , forKey: .organizationsUrl)
//    try values.encode(publicGists, forKey: .publicGists)
//    try values.encode(publicRepos, forKey: .publicRepos)
//    try values.encode(receivedEventsUrl , forKey: .receivedEventsUrl)
//    try values.encode(reposUrl , forKey: .reposUrl)
//    try values.encode(siteAdmin, forKey: .siteAdmin)
//    try values.encode(starredUrl , forKey: .starredUrl)
//    try values.encode(subscriptionsUrl , forKey: .subscriptionsUrl)
//    try values.encode(twitterUsername , forKey: .twitterUsername)
//    try values.encode(type , forKey: .type)
//    try values.encode(updatedAt , forKey: .updatedAt)
//    try values.encode(url , forKey: .url)
//}
