//
//  SSdiasTableViewController.m
//  SemanaSantaApp
//
//  Created by Jose Maria on 14/03/14.
//  Copyright (c) 2014 Kometasoft. All rights reserved.
//

#import "SSdiasViewController.h"
#import "SShermandadesViewController.h"
#import "Dias.h"
#import "Hermandades.h"
#import "SSAppDelegate.h"

#import <CoreData/CoreData.h>

@interface SSdiasViewController ()

@end

@implementation SSdiasViewController

@synthesize managedObjectContext;


- (void)viewDidLoad
{
    [super viewDidLoad];
    UIView * viewPubli =[[[NSBundle mainBundle] loadNibNamed:@"ViewPublicidad" owner:self options:nil] objectAtIndex:0];
    float alturaPubli = [[UIScreen mainScreen] bounds].size.height -  (self.tabBarController.tabBar.frame.size.height + viewPubli.frame.size.height);
    viewPubli.frame = CGRectMake(0, alturaPubli, viewPubli.frame.size.width, viewPubli.frame.size.height);
    [self.view addSubview: viewPubli];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

-(void)viewWillAppear:(BOOL)animated{
     [self.navigationController setNavigationBarHidden:YES animated:YES];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return [self.diitas count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    Dias *info = [self.diitas objectAtIndex:indexPath.row];
    cell.textLabel.text = info.nombreDia;

    return cell;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self loadData];
    [self.tableDias reloadData];
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.tableDias deselectRowAtIndexPath:indexPath animated:YES];
    [self performSegueWithIdentifier:@"hermandadesDelDia" sender:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"hermandadesDelDia"]) {
        UITableViewCell *cell = sender;
        NSIndexPath *indexPath = [self.tableDias indexPathForCell:cell];
        Dias *dia = self.diitas[indexPath.row];
        SShermandadesViewController *hermandadesDelDia = segue.destinationViewController;
        hermandadesDelDia.dia = dia;
        [self.navigationController setNavigationBarHidden:NO animated:YES];
    }
}

- (void)loadData {
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Dias"];
    
    request.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"ordenDia" ascending:YES]];
    
    SSAppDelegate *appDelegate = (SSAppDelegate *) [UIApplication sharedApplication].delegate;
    self.diitas = [appDelegate.managedObjectContext executeFetchRequest:request error:nil];
    
}




@end
