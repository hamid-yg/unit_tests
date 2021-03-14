/*
** EPITECH PROJECT, 2021
** unit_tests
** File description:
** test_is_pair
*/

#include "test_redirect.hpp"

Test(test, simple_test, .init=redirect_stdout) {
    // OSRedirector oss(std::cout);
    // cr_assert_eq(oss.getContent(), "2\n");
    // cr_assert_stderr_eq_str("");
    cr_assert(is_pair(2) == 0);
    cr_assert(is_pair(3) == 1);
}