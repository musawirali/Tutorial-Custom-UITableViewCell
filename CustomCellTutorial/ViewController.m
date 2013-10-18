//
//  ViewController.m
//  CustomCellTutorial
//
//  Created by Musawir Shah on 10/17/13.
//  Copyright (c) 2013 Musawir Shah. All rights reserved.
//

#import "ViewController.h"
#import "MyCustomCell.h"

@interface ViewController ()

@property (strong, nonatomic) NSArray * items;
@end

@implementation ViewController
@synthesize items = _items;

- (NSArray *)items
{
    if (!_items)
    {
        NSMutableArray * arr = [NSMutableArray arrayWithCapacity:20];
        for (NSInteger i=0; i<20; i++)
            [arr addObject:[NSString stringWithFormat:@"Item%d", i]];
        _items = arr;
    }
    return _items;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.items count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MyCustomCell * cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    if (!cell)
    {
        [tableView registerNib:[UINib nibWithNibName:@"MyCustomCell" bundle:nil] forCellReuseIdentifier:@"myCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(MyCustomCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.leftLabel.text = [self.items objectAtIndex:indexPath.row];
    cell.rightLabel.text = [self.items objectAtIndex:indexPath.row];
    cell.middleLabel.text = [self.items objectAtIndex:indexPath.row];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
