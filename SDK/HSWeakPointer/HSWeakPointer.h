@interface HSWeakPointer : NSObject

/*! 
 * Holds weak reference to an object
 */
@property (nonatomic, weak) id object;

- (BOOL)isValid;

@end