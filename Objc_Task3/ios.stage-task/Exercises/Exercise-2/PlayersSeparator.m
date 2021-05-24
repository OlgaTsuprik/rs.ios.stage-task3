#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
    NSInteger counter = 0;

        if (ratingArray == nil || ratingArray.count < 3) {
            return counter;
        }
        
        NSInteger i = 0;
        NSInteger j = i + 1;
        NSInteger k = j + 1;
        while (i < ratingArray.count - 2) {
            if ((ratingArray[i].intValue < ratingArray[j].intValue && ratingArray[j].intValue < ratingArray[k].intValue) ||
                (ratingArray[i].intValue > ratingArray[j].intValue && ratingArray[j].intValue > ratingArray[k].intValue)) {
                counter++;
            }
            if (j == ratingArray.count - 2) {
                i++; j = i + 1; k = j + 1;
            } else if (k == ratingArray.count - 1) {
                j = j + 1 ; k = j + 1 ;
            } else {
                k++;
            }
        }
        return counter;
}

@end
