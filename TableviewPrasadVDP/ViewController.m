//
//  ViewController.m
//  TableviewPrasadVDP
//
//  Created by A on 09/04/17.
//  Copyright (c) 2017 mine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,weak)IBOutlet UITableView *tableview;
@property(nonatomic,strong)NSArray *arr;
@property(nonatomic,strong)NSArray *arr1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    self.tableview.delegate=self;
    self.tableview.dataSource=self;
    self.arr=[NSArray arrayWithObjects:@"Himanth",@"Sharan",@"Prasad",@"Suresh", nil];
    self.arr1=[NSArray arrayWithObjects:@"Rakhi",@"Rohith",@"Naveen",@"Pathi", nil];
    


}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section==0) {
        return self.arr.count;
    }
    
    return self.arr1.count;
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.detailTextLabel.text=[self.arr1 objectAtIndex:indexPath.row];
    cell.textLabel.text=[self.arr objectAtIndex:indexPath.row];
    
    return cell;
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
