//
//  MJViewController.m
//  LoremIpsum-iOS
//
//  Created by Martin Jeffers on 05/02/2016.
//  Copyright (c) 2016 Martin Jeffers. All rights reserved.
//

#import "MJViewController.h"
#import "LoremIpsum.h"

typedef enum TableViewSections : NSUInteger {
    kTitleSection,
    kParagraphSection,
    kRandomWordsSection,
    kNumberOfWordsSection,
    kNumberOfParagraphsSection,
    NUM_SECTIONS
} TableViewSections;

@interface MJViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic) UITableView *tableView;

@end

@implementation MJViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.allowsSelection = NO;
    self.tableView.backgroundColor = [UIColor whiteColor];
    
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 44;
    
    
    [self.view addSubview:self.tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableView delegates

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    static NSString *CellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.textLabel.textColor = [UIColor blackColor];
        cell.textLabel.highlightedTextColor = [UIColor whiteColor];
        
        cell.textLabel.numberOfLines = 0;
        cell.backgroundColor = [UIColor clearColor];
        cell.contentView.backgroundColor = [UIColor clearColor];
    }
    
    switch (indexPath.section) {
        case kTitleSection:{
            cell.textLabel.text = [LoremIpsum generateTextForType:Title];
            return cell;
            
        }
        case kParagraphSection:{
            cell.textLabel.text = [LoremIpsum generateTextForType:Paragraph];
            return cell;
        }
            
        case kRandomWordsSection:{
            cell.textLabel.text = [LoremIpsum generateTextForType:Words];
            return cell;
        }
            
        case kNumberOfWordsSection:{
            cell.textLabel.text = [LoremIpsum generateRandomWordsWithLength:10];
            return cell;
        }
            
        case kNumberOfParagraphsSection:{
            cell.textLabel.text = [LoremIpsum generateParagraphsWithLength:2];
            return cell;
        }
            
            
        default:
            return nil;
            
    }
    
    
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return NUM_SECTIONS;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    switch (section) {
        case kTitleSection:
            return @"Title";
        case kParagraphSection:
            return @"Paragraph";
        case kRandomWordsSection:
            return @"Random Length Words";
        case kNumberOfWordsSection:
            return @"10 words";
        case kNumberOfParagraphsSection:
            return @"2 Paragraphs";
        default:
            return nil;
            
    }
}


@end
