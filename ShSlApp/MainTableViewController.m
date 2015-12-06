//
//  MainTableViewController.m
//  ShSlApp
//
//  Created by 易 彬锋 on 15/12/6.
//  Copyright © 2015年 bfy. All rights reserved.
//

#import "MainTableViewController.h"

#import "NSDate+DatetoString.h"

#import "UIButton+Setbutton.h"


@interface MainTableViewController ()

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"搞笑视频";
    
    
    UILabel * label = [[UILabel alloc]init];
    
    NSDate *nowdate  = [NSDate date];
    
    label.text = [nowdate datetostring];
    
    label.frame = CGRectMake(0, 10, 100, 20);
    
    self.tableView.tableHeaderView = label;

   
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [button addTarget:self action:@selector(leftbuttonclick:) forControlEvents:UIControlEventTouchUpInside];
    
    [button setbutton];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:button];
    

}

/**
 *  left button cliked
 *
 *  @param button clickedbutton
 */
-(void)leftbuttonclick:(UIButton*)button{
    
    
    
    
    [self.sideMenuViewController presentLeftMenuViewController];
    
    
    
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MovieCell" forIndexPath:indexPath];
   
    
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
