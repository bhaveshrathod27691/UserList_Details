//
//  PersistentStorage.swift
//  GithubUserDetails_SOP
//
//  Created by BhaveshLab Dev on 01/02/22.
//

import Foundation
import CoreData
import UIKit


final class PersistentStorage{
    
    private init(){}
    
    static let shared = PersistentStorage()
    
    lazy var persistentContainer: NSPersistentContainer = {
      
        let container = NSPersistentContainer(name: "GithubUserDetails_SOP")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    lazy var context = persistentContainer.viewContext
    // MARK: - Core Data Saving support
    
    func saveContext () {
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    // MARK: - utility routines
    lazy var applicationDocumentsDirectory: URL = {
        let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return urls[urls.count-1]
    }()

    // MARK: - Core Data stack (generic)
    lazy var managedObjectModel: NSManagedObjectModel = {
            let modelURL = Bundle.main.url(forResource: "GithubUserDetails_SOP", withExtension: "xcdatamodeld")!
            return NSManagedObjectModel(contentsOf: modelURL)!
    }()
}

class DatabaseHandler{
    
    private init(){}
    
    static let shared = DatabaseHandler()
    
    func createUser(objUser : UserCodable) {
        let objUserDB = User(context: PersistentStorage.shared.context)
        objUserDB.setValue(objUser.avatarUrl ,  forKey: "avatarUrl")
        objUserDB.setValue(objUser.eventsUrl , forKey: "eventsUrl")
        objUserDB.setValue(objUser.followersUrl , forKey: "followersUrl")
        objUserDB.setValue(objUser.followingUrl , forKey: "followingUrl")
        objUserDB.setValue(objUser.gistsUrl , forKey: "gistsUrl")
        objUserDB.setValue(objUser.gravatarId , forKey: "gravatarId")
        objUserDB.setValue(objUser.htmlUrl , forKey: "htmlUrl")
        objUserDB.setValue(objUser.uid , forKey: "uid")
        objUserDB.setValue(objUser.login , forKey: "login")
        objUserDB.setValue(objUser.nodeId , forKey: "nodeId")
        objUserDB.setValue(objUser.organizationsUrl , forKey: "organizationsUrl")
        objUserDB.setValue(objUser.receivedEventsUrl , forKey: "receivedEventsUrl")
        objUserDB.setValue(objUser.reposUrl , forKey: "reposUrl")
        objUserDB.setValue(objUser.siteAdmin , forKey: "siteAdmin")
        objUserDB.setValue(objUser.starredUrl , forKey: "starredUrl")
        objUserDB.setValue(objUser.subscriptionsUrl , forKey: "subscriptionsUrl")
        objUserDB.setValue(objUser.type , forKey: "type")
        objUserDB.setValue(objUser.url , forKey: "url")
        PersistentStorage.shared.saveContext()
    }
    
    func createUserProfile(objUserProfile : ProfileModel) {
        let objUserDB = UserProfile(context: PersistentStorage.shared.context)
        objUserDB.setValue(objUserProfile.avatarUrl ,  forKey: "avatarUrl")
        objUserDB.setValue(objUserProfile.bio , forKey: "bio")
        objUserDB.setValue(objUserProfile.blog , forKey: "blog")
        objUserDB.setValue(objUserProfile.company , forKey: "company")
        objUserDB.setValue(objUserProfile.createdAt , forKey: "createdAt")
        objUserDB.setValue(objUserProfile.email , forKey: "email")
        objUserDB.setValue(objUserProfile.eventsUrl , forKey: "eventsUrl")
        objUserDB.setValue(objUserProfile.followers , forKey: "followers")
        objUserDB.setValue(objUserProfile.followersUrl , forKey: "followersUrl")
        objUserDB.setValue(objUserProfile.following , forKey: "following")
        objUserDB.setValue(objUserProfile.followingUrl , forKey: "followingUrl")
        objUserDB.setValue(objUserProfile.gistsUrl , forKey: "gistsUrl")
        objUserDB.setValue(objUserProfile.gravatarId , forKey: "gravatarId")
        objUserDB.setValue(objUserProfile.hireable , forKey: "hireable")
        objUserDB.setValue(objUserProfile.htmlUrl , forKey: "htmlUrl")
        objUserDB.setValue(objUserProfile.uid , forKey: "uid")
        objUserDB.setValue(objUserProfile.location , forKey: "location")
        objUserDB.setValue(objUserProfile.login , forKey: "login")
        objUserDB.setValue(objUserProfile.name ,  forKey: "name")
        objUserDB.setValue(objUserProfile.nodeId , forKey: "nodeId")
        objUserDB.setValue(objUserProfile.organizationsUrl , forKey: "organizationsUrl")
        objUserDB.setValue(objUserProfile.publicGists , forKey: "publicGists")
        objUserDB.setValue(objUserProfile.publicRepos , forKey: "publicRepos")
        objUserDB.setValue(objUserProfile.receivedEventsUrl , forKey: "receivedEventsUrl")
        objUserDB.setValue(objUserProfile.reposUrl , forKey: "reposUrl")
        objUserDB.setValue(objUserProfile.siteAdmin , forKey: "siteAdmin")
        objUserDB.setValue(objUserProfile.starredUrl , forKey: "starredUrl")
        objUserDB.setValue(objUserProfile.subscriptionsUrl , forKey: "subscriptionsUrl")
        objUserDB.setValue(objUserProfile.twitterUsername , forKey: "twitterUsername")
        objUserDB.setValue(objUserProfile.type , forKey: "type")
        objUserDB.setValue(objUserProfile.updatedAt , forKey: "updatedAt")
        objUserDB.setValue(objUserProfile.url , forKey: "url")
        PersistentStorage.shared.saveContext()
    }
    
    func fetchUserByID(userID : Int64)->User?{
        
        let context = PersistentStorage.shared.context
        
        let fetchRequest = NSFetchRequest<User>(entityName: "User")
        fetchRequest.fetchLimit = 1
        fetchRequest.predicate = NSPredicate(format: "uid == %d", userID)
    
        do {
            let arrUsers = try context.fetch(fetchRequest)
            if arrUsers.count > 0 {
                guard let objUser = arrUsers.first else { return User() }
                return objUser
            }else{
                return nil
            }
        }  catch {
            fatalError("This was not supposed to happen")
        }
//        return nil
    }
    
    func fetchUserProfileByID(userID : Int64)->UserProfile?{
        
        let context = PersistentStorage.shared.context
        
        let fetchRequest = NSFetchRequest<UserProfile>(entityName: "UserProfile")
        fetchRequest.fetchLimit = 1
        fetchRequest.predicate = NSPredicate(format: "uid == %d", userID)
    
        do {
            let arrUsers = try context.fetch(fetchRequest)
            if arrUsers.count > 0 {
                guard let objUser = arrUsers.first else { return UserProfile() }
                return objUser
            }else{
                return nil
            }
        }  catch {
            fatalError("This was not supposed to happen")
        }
        return nil
    }
}
