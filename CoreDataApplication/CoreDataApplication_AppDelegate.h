//
//  CoreDataApplication_AppDelegate.h
//  CoreDataApplication
//
//  Created by akio0911 on 09/04/26.
//  Copyright akio0911 2009 . All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface CoreDataApplication_AppDelegate : NSObject 
{
    IBOutlet NSWindow *window;
    
    NSPersistentStoreCoordinator *persistentStoreCoordinator;
    NSManagedObjectModel *managedObjectModel;
    NSManagedObjectContext *managedObjectContext;
}

- (NSPersistentStoreCoordinator *)persistentStoreCoordinator;
- (NSManagedObjectModel *)managedObjectModel;
- (NSManagedObjectContext *)managedObjectContext;

- (IBAction)saveAction:sender;

@end
