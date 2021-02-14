/*
** EPITECH PROJECT, 2021
** my_strlen
** File description:
** number of char
*/

#include "../include/c.h"

int my_strlen(const char *str)
{
    int i = 0;

    for (; str[i]; i++);
    return (i);
}