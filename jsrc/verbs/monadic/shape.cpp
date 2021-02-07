
#include "array.hpp"
#include "interpreter_utilities.hpp"

/** @file */

/**
 * @brief `$` Shape
 * @details In APL, this is also known as `shape` (⍴).
 * @param jt
 * @param w   Input array
 * @return    Output array
 */
[[nodiscard]] auto
shape(J jt, array w) -> array {
    return make_vector<int64_t>(jt, AR(w), AS(w));
}  // $ y