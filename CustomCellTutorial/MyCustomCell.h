//
//  MyCustomCell.h
//  CustomCellTutorial
//
//  Created by Musawir Shah on 10/17/13.
//  Copyright (c) 2013 Musawir Shah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *leftLabel;
@property (weak, nonatomic) IBOutlet UILabel *rightLabel;
@property (weak, nonatomic) IBOutlet UILabel *middleLabel;

@end
