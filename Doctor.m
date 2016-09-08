//
//  Doctor.m
//  Patient & Doctor
//
//  Created by Tevin Maker on 2016-09-08.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

-(instancetype) initWithName:(NSString *)name AndSpecialization:(NSString *)specialization {
    self = [super init];
    
    if (self) {
        _name = name;
        _specialization = specialization;
        _acceptedPatients = [[NSMutableSet alloc]init];
    }
    
    return self;
}

-(void) acceptPatient:(Patient *) patient {
    
    ExchangeInput *acceptanceExchange = [[ExchangeInput alloc] init];
    
    NSString *validCard = [acceptanceExchange inputForPrompt:@"Do you have a valid health care card?"];
    if ([validCard isEqual:@"yes"]) {
        patient.hasValidHealthCard = YES;
    }
    
    if (patient.hasValidHealthCard) {
        [self.acceptedPatients addObject:patient];
    }
    else {
        NSLog(@"%@ does not have a valid health card", patient.name);
    }

}

-(void) treatPatient:(Patient *) patient {
    ExchangeInput *treatmentExchange = [[ExchangeInput alloc] init];
    
    if (patient.hasValidHealthCard) {
    
    patient.symptoms = [treatmentExchange inputForPrompt:@"What symtoms are you feeling?"];
    
    NSString *meds = [NSString stringWithFormat:@"Medicine for %@", patient.symptoms];
    
    [patient.prescriptions addObject: meds];
    
    NSLog(@"%@ recieved %@", patient.name, meds);
    }
}

-(void) viewPatientsPrescriptions: (Patient *) patient{
    NSLog(@"%@ has been prescribed", patient.name);
    for (NSString *prescriptions in patient.prescriptions) {
        NSLog(@"%@", prescriptions);
    }
}

@end
