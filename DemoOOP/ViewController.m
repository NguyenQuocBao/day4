//
//  ViewController.m
//  DemoOOP
//
//  Created by techmaster on 10/4/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "ViewController.h"
#import "Tiger.h"
#import "Cat.h"
#import "Lion.h"

@interface ViewController ()
{
    
    __weak IBOutlet UITextField *txtCoint;
    __weak IBOutlet UILabel *lblcointotal;
}
@end

@implementation ViewController
//@synthesize gameManager;


- (void)viewDidLoad
{
    [super viewDidLoad];
	//Khởi tạo GameManager ở đây, bổ xung các Scene. Khi khởi tạo Scene thì phải tạo danh sách các Animal
    GameManager *gamemanager=[[GameManager alloc] initWithCoint:1000];
    
   // NSLog(@"coin=%i", gamemanager.coinAmount);
    
   lblcointotal.text=[NSString stringWithFormat:@"%i", gamemanager.coinAmount];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)demoInit:(id)sender {
    Tiger *siberian_Tiger = [[Tiger alloc] initWithName:@"Siberian Tiger"];
    siberian_Tiger.origin = @"Siberia, Russia";    //Sử dụng dot notation thực khi biên dịch sẽ chuyển thành getter function
    [siberian_Tiger setOrigin:@"Siberia, Russia"]; //Sử dụng hàm setter
    
    siberian_Tiger->_id = @"012445";  //Dùng mũi tên truy xuất biến public của đối tượng có kiểu khác
    
    NSLog(@"Ho keu");
    [siberian_Tiger sound]; //Cho con hổ kêu
    
    
    
    NSLog(@"Su tu keu");
    Lion *lion=[[Lion alloc] initWithName:@"Su tu"];
    [lion sound];

    
    NSLog(@"Meo keu");
    Cat *cat=[[Cat alloc] initWithName:@"Meu nhat"];
    [cat sound];

    
    //NSLog(@"Origin is %@", [siberian_Tiger origin]); //Sử dụng hàm getter
    
}
- (IBAction)buycoint:(UIButton *)sender {
    

    GameManager *gamemanager2=[[GameManager alloc] initWithCoint:1000];
    [gamemanager2 purchaseCoint:[txtCoint.text intValue]];
    lblcointotal.text=[NSString stringWithFormat:@"%i", gamemanager2.coinAmount];

}

@end
