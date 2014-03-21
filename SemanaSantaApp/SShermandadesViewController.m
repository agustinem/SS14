//
//  SShermandadesTableViewController.m
//  SemanaSantaApp
//
//  Created by Jose Maria on 16/03/14.
//  Copyright (c) 2014 Kometasoft. All rights reserved.
//

#import "SShermandadesViewController.h"
#import "SSAppDelegate.h"
#import "SSdiasViewController.h"
#import "Hermandades.h"
#import "Dias.h"
#import "SSdatosHermandadViewController.h"

@interface SShermandadesViewController ()

@end

@implementation SShermandadesViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    

    self.title = self.dia.nombreDia;
    self.navigationController.navigationBar.topItem.title = @"Días";
    UIView * viewPubli =[[[NSBundle mainBundle] loadNibNamed:@"ViewPublicidad" owner:self options:nil] objectAtIndex:0];
    float alturaPubli = [[UIScreen mainScreen] bounds].size.height -  (self.tabBarController.tabBar.frame.size.height + viewPubli.frame.size.height);
    viewPubli.frame = CGRectMake(0, alturaPubli, viewPubli.frame.size.width, viewPubli.frame.size.height);
    [self.view addSubview: viewPubli];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self loadData];
    [self.tableHdad reloadData];
}

- (void)loadData {
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Hermandades"];
    request.predicate = [NSPredicate predicateWithFormat:@"ANY dias.nombreDia =[cd] %@", self.dia.nombreDia];
    request.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"nombreH" ascending:YES]];
    
    
    SSAppDelegate *appDelegate = (SSAppDelegate *) [UIApplication sharedApplication].delegate;
    self.hermandadess = [appDelegate.managedObjectContext executeFetchRequest:request error:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.hermandadess count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    Hermandades *emp = self.hermandadess[indexPath.row];
    cell.textLabel.text = emp.nombreH;
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.tableHdad deselectRowAtIndexPath:indexPath animated:YES];
    [self performSegueWithIdentifier:@"hermandad" sender:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"hermandad"]) {
        UITableViewCell *cell = sender;
        NSIndexPath *indexPath = [self.tableHdad indexPathForCell:cell];
        Hermandades *hermandad = self.hermandadess[indexPath.row];
        SSdatosHermandadViewController *hermandadesDelDia = segue.destinationViewController;
        hermandadesDelDia.hermandadd = hermandad;
    }
}

@end
