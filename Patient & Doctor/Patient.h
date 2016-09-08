//
//  Patient.h
//  Patient & Doctor
//
//  Created by Tevin Maker on 2016-09-08.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;

@interface Patient : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSNumber *age;
@property (nonatomic) BOOL hasValidHealthCard;
@property (nonatomic) NSString *symptoms;
@property (nonatomic) NSMutableSet *prescriptions;



-(instancetype) initWithName:(NSString *) name AndAge:(NSNumber *) age;


@end
