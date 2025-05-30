//stages of shoe tying-ness
/// Shoes are untied
#define SHOES_UNTIED 0
/// Shoes are tied normally
#define SHOES_TIED 1
/// Shoes have been tied in knots
#define SHOES_KNOTTED 2

/// Shoes aren't fastened with anything
#define SHOES_SLIPON "absence of laces"
/// Shoes are fastened with laces
#define SHOES_LACED "shoelaces"
/// Shoes are fastened with velcro
#define SHOES_VELCRO "velcro straps"
/// Shoes are fastened with buckled straps
#define SHOES_STRAPS "straps"

//suit sensors: sensor_mode defines
/// Suit sensor is turned off
#define SENSOR_OFF 0
/// Suit sensor displays the mob as alive or dead
#define SENSOR_LIVING 1
/// Suit sensor displays the mob damage values
#define SENSOR_VITALS 2
/// Suit sensor displays the mob damage values and exact location
#define SENSOR_COORDS 3

//suit sensors: has_sensor defines
/// Suit sensor has been EMP'd and cannot display any information (can be fixed)
#define BROKEN_SENSORS -1
/// Suit sensor is not present and cannot display any information
#define NO_SENSORS 0
/// Suit sensor is present and can display information
#define HAS_SENSORS 1
/// Suit sensor is present and is forced to display information (used on prisoner jumpsuits)
#define LOCKED_SENSORS 2

/// Wrapper for adding clothing based traits
#define ADD_CLOTHING_TRAIT(mob, trait) ADD_TRAIT(mob, trait, "[CLOTHING_TRAIT]_[REF(src)]")
/// Wrapper for removing clothing based traits
#define REMOVE_CLOTHING_TRAIT(mob, trait) REMOVE_TRAIT(mob, trait, "[CLOTHING_TRAIT]_[REF(src)]")

/// How much integrity does a shirt lose every time we bite it?
#define MOTH_EATING_CLOTHING_DAMAGE 15

/// Allows this clothing item to overslot other items when equipped
#define CLOTHING_MOD_OVERSLOTTING (1<<15)
