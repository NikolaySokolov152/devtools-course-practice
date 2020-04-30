// Copyright 2020 Sokolov Nikolay

#ifndef MODULES_FRACTION_INCLUDE_FRACTION_CALCULATOR_H_
#define MODULES_FRACTION_INCLUDE_FRACTION_CALCULATOR_H_

#include <string>

class FractionCalculator {
public:
    FractionCalculator();
    std::string operator()(int argc, const char** argv);

private:
    void help(const char* appname, const char* message = "");
    bool validateNumberOfArguments(int argc, const char** argv);
    std::string message_;
    typedef struct {
        int f1_nom;
        int f1_den;
        int f2_nom;
        int f2_den;
        char operation;
    } Arguments;
};

#endif  // MODULES_FRACTION_INCLUDE_FRACTION_CALCULATOR_H_
