//
//  Doctor.h
//  Patient & Doctor
//
//  Created by Tevin Maker on 2016-09-08.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ExchangeInput.h"

@class Patient;

@interface Doctor : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *specialization;
@property (nonatomic) NSMutableSet *acceptedPatients;


-(instancetype) initWithName:(NSString *)name AndSpecialization:(NSString *)specialization;

-(void) acceptPatient:(Patient *) patient;

-(void) treatPatient:(Patient *) patient;

-(void) viewPatientsPrescriptions: (Patient *) patient;



@end
