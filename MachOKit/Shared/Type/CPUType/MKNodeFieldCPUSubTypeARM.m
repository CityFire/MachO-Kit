//----------------------------------------------------------------------------//
//|
//|             MachOKit - A Lightweight Mach-O Parsing Library
//|             MKNodeFieldCPUSubTypeARM.m
//|
//|             D.V.
//|             Copyright (c) 2014-2015 D.V. All rights reserved.
//|
//| Permission is hereby granted, free of charge, to any person obtaining a
//| copy of this software and associated documentation files (the "Software"),
//| to deal in the Software without restriction, including without limitation
//| the rights to use, copy, modify, merge, publish, distribute, sublicense,
//| and/or sell copies of the Software, and to permit persons to whom the
//| Software is furnished to do so, subject to the following conditions:
//|
//| The above copyright notice and this permission notice shall be included
//| in all copies or substantial portions of the Software.
//|
//| THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
//| OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
//| MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
//| IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
//| CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
//| TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
//| SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//----------------------------------------------------------------------------//

#import "MKNodeFieldCPUSubTypeARM.h"
#import "MKInternal.h"
#import "MKNodeDescription.h"

//----------------------------------------------------------------------------//
@implementation MKNodeFieldCPUSubTypeARM

static NSDictionary *s_Types = nil;
static MKEnumerationFormatter *s_Formatter = nil;

MKMakeSingletonInitializer(MKNodeFieldCPUSubTypeARM)

//|++++++++++++++++++++++++++++++++++++|//
+ (void)initialize
{
    if (s_Types != nil && s_Formatter != nil)
        return;
    
    s_Types = [@{
         @((cpu_subtype_t)CPU_SUBTYPE_ARM_ALL): @"CPU_SUBTYPE_ARM_ALL",
         @((cpu_subtype_t)CPU_SUBTYPE_ARM_V4T): @"CPU_SUBTYPE_ARM_V4T",
         @((cpu_subtype_t)CPU_SUBTYPE_ARM_V6): @"CPU_SUBTYPE_ARM_V6",
         @((cpu_subtype_t)CPU_SUBTYPE_ARM_V5TEJ): @"CPU_SUBTYPE_ARM_V5TEJ",
         @((cpu_subtype_t)CPU_SUBTYPE_ARM_XSCALE): @"CPU_SUBTYPE_ARM_XSCALE",
         @((cpu_subtype_t)CPU_SUBTYPE_ARM_V7): @"CPU_SUBTYPE_ARM_V7",
         @((cpu_subtype_t)CPU_SUBTYPE_ARM_V7F): @"CPU_SUBTYPE_ARM_V7F",
         @((cpu_subtype_t)CPU_SUBTYPE_ARM_V7S): @"CPU_SUBTYPE_ARM_V7S",
         @((cpu_subtype_t)CPU_SUBTYPE_ARM_V7K): @"CPU_SUBTYPE_ARM_V7K",
         @((cpu_subtype_t)CPU_SUBTYPE_ARM_V6M): @"CPU_SUBTYPE_ARM_V6M",
         @((cpu_subtype_t)CPU_SUBTYPE_ARM_V7M): @"CPU_SUBTYPE_ARM_V7M",
         @((cpu_subtype_t)CPU_SUBTYPE_ARM_V7EM): @"CPU_SUBTYPE_ARM_V7EM",
         @((cpu_subtype_t)CPU_SUBTYPE_ARM_V8): @"CPU_SUBTYPE_ARM_V8"
    } retain];
    
    MKEnumerationFormatter *formatter = [MKEnumerationFormatter new];
    formatter.name = @"CPU_SUBTYPE_ARM";
    formatter.elements = s_Types;
    s_Formatter = formatter;
}

//◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦//
#pragma mark -  MKNodeFieldEnumerationType
//◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦//

//|++++++++++++++++++++++++++++++++++++|//
- (MKNodeFieldEnumerationElements*)elements
{ return s_Types; }

//◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦//
#pragma mark -  MKNodeFieldType
//◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦◦//

//|++++++++++++++++++++++++++++++++++++|//
- (NSString*)name
{ return @"ARM CPU Subtype"; }

//|++++++++++++++++++++++++++++++++++++|//
- (NSFormatter*)formatter
{ return s_Formatter; }

@end
