//
//  main.m
//  Patient & Doctor
//
//  Created by Tevin Maker on 2016-09-08.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        Doctor *doctor = [[Doctor alloc] initWithName:@"Dr. Smith" AndSpecialization:@"GP"];
        
        Patient *patient = [[Patient alloc] initWithName:@"John Doe" AndAge:@35];
        
        patient.hasValidHealthCard = YES;

        [doctor acceptPatient:patient];
        
        [doctor treatPatient:patient];
        
        Doctor *doctor2 = [[Doctor alloc] initWithName:@"Dr. Steve" AndSpecialization:@"GP"];
        
        [doctor2 viewPatientsPrescriptions:patient];
        
        [doctor2 treatPatient:patient];
    }
    return 0;
}
