// 
//  AmStockGraph.h
//  AmCharts
// 
//  Created by Andrew on 4/28/14.
//  Copyright (c) 2014 Chimp Studios. All rights reserved.
// 

#import "AmStockGraph.h"
#import "AmCategories.h"

@implementation AmStockGraph

- (id)init {
	self = [super init];
	if (self) {
//		self.comparable = false;
//		self.compareFromStart = false;
//		self.compareGraphType = @"line";
//		self.compareGraphVisibleInLegend = true;
//		self.periodValue = @"Close";
//		self.showEventsOnComparedGraphs = false;
//		self.useDataSetColors = true;
	}
	return self;
}

- (NSDictionary *)dictionaryRepresentation {
	NSMutableDictionary *dictRep = [[super dictionaryRepresentation] mutableCopy];

    if (self.comparable) {
       [dictRep setObject:self.comparable forKey:@"comparable"];
    }

	if (self.compareGraphBulletBorderAlpha) {
		[dictRep setObject:self.compareGraphBulletBorderAlpha forKey:@"compareGraphBulletBorderAlpha"];
	}

	if (self.compareGraphBulletBorderColor) {
		[dictRep setObject:self.compareGraphBulletBorderColor forKey:@"compareGraphBulletBorderColor"];
	}

	if (self.compareGraphBulletBorderThickness) {
		[dictRep setObject:self.compareGraphBulletBorderThickness forKey:@"compareGraphBulletBorderThickness"];
	}
    
    if (self.compareGraphBulletColor) {
		[dictRep setObject:self.compareGraphBulletColor forKey:@"compareGraphBulletColor"];
	}

	if (self.compareField) {
		[dictRep setObject:self.compareField forKey:@"compareField"];
	}

    if (self.compareFromStart) {
       [dictRep setObject:self.compareFromStart forKey:@"compareFromStart"];
    }

	if (self.compareGraphBalloonColor) {
		[dictRep setObject:self.compareGraphBalloonColor forKey:@"compareGraphBalloonColor"];
	}

	if (self.compareGraphBalloonFunction) {
		[dictRep setObject:self.compareGraphBalloonFunction forKey:@"compareGraphBalloonFunction"];
	}

	if (self.compareGraphBalloonText) {
		[dictRep setObject:self.compareGraphBalloonText forKey:@"compareGraphBalloonText"];
	}

	if (self.compareGraphBullet) {
		[dictRep setObject:self.compareGraphBullet forKey:@"compareGraphBullet"];
	}

	if (self.compareGraphBulletSize) {
		[dictRep setObject:self.compareGraphBulletSize forKey:@"compareGraphBulletSize"];
	}

	if (self.compareGraphCornerRadiusTop) {
		[dictRep setObject:self.compareGraphCornerRadiusTop forKey:@"compareGraphCornerRadiusTop"];
	}

	if (self.compareGraphDashLength) {
		[dictRep setObject:self.compareGraphDashLength forKey:@"compareGraphDashLength"];
	}

	if (self.compareGraphFillAlphas) {
		[dictRep setObject:self.compareGraphFillAlphas forKey:@"compareGraphFillAlphas"];
	}

	if (self.compareGraphFillColors) {
		[dictRep setObject:self.compareGraphFillColors forKey:@"compareGraphFillColors"];
	}

	if (self.compareGraphLineAlpha) {
		[dictRep setObject:self.compareGraphLineAlpha forKey:@"compareGraphLineAlpha"];
	}
    
    if (self.compareGraphLineColor) {
        [dictRep setObject:self.compareGraphLineColor forKey:@"compareGraphLineColor"];
    }

	if (self.compareGraphLineThickness) {
		[dictRep setObject:self.compareGraphLineThickness forKey:@"compareGraphLineThickness"];
	}

	if (self.compareGraphType) {
		[dictRep setObject:self.compareGraphType forKey:@"compareGraphType"];
	}

    if (self.compareGraphVisibleInLegend) {
        [dictRep setObject:self.compareGraphVisibleInLegend forKey:@"compareGraphVisibleInLegend"];
    }

	if (self.periodValue) {
		[dictRep setObject:self.periodValue forKey:@"periodValue"];
	}

    if (self.showEventsOnComparedGraphs) {
        [dictRep setObject:self.showEventsOnComparedGraphs forKey:@"showEventsOnComparedGraphs"];
    }
	
    if (self.useDataSetColors) {
        [dictRep setObject:self.useDataSetColors forKey:@"useDataSetColors"];
    }

	return dictRep;
}

- (NSString *)javascriptRepresentation {
	NSDictionary *dictRep = [self dictionaryRepresentation];

	NSString *jsonRep = [NSString stringWithFormat:@"\"stockGraph\": %@", [dictRep JSONString]];
	return jsonRep;
}

@end