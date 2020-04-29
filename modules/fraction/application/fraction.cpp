// Copyright 2020 Sokolov Nikolay

#include <stdlib.h>
#include <stdio.h>
#include <string>
#include <iostream>

#include "include/fraction_calculator.h"

int main(int argc, const char** argv) {
    FractionCalculator app;
    std::string output = app(argc, argv);
    printf("%s\n", output.c_str());
    return 0;
}
