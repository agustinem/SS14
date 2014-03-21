//
//  SSdiasTableViewController.h
//  SemanaSantaApp
//
//  Created by Jose Maria on 14/03/14.
//  Copyright (c) 2014 Kometasoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SSdiasViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) NSManagedObjectContext* managedObjectContext;
@property (nonatomic,strong) NSArray* diitas;
@property (nonatomic,strong) IBOutlet UITableView* tableDias;


@end
