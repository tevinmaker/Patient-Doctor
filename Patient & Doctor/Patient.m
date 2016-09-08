//
//  Patient.m
//  Patient & Doctor
//
//  Created by Tevin Maker on 2016-09-08.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(instancetype) initWithName:(NSString *) name AndAge:(NSNumber *) age {
    
   self = [super init];
    
    if (self) {
        _name = name;
        _age = age;
        _prescriptions = [[NSMutableSet alloc] init];
    }
    return self;
}



@end
