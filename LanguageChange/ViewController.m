//
//  ViewController.m
//  LanguageChange
//
//  Created by Mobiyun on 2018/12/24.
//  Copyright © 2018年 冀凯旋. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *m_label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *languages = [NSLocale preferredLanguages];
    NSLog(@"%@",languages);
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"en" ofType:@"lproj"];
    NSString *labelString = [[NSBundle bundleWithPath:path] localizedStringForKey:@"label" value:nil table:@"Localizable"];
    NSLog(@"result: %@", labelString);

   NSString *str = NSLocalizedString(@"label", nil);
    self.m_label.text = str;
    NSLog(@"%@", str);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
