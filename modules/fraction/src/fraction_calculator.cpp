// Copyright 2020 Sokolov Nikolay

#include "include/fraction.h"
#include "include/fraction_calculator.h"

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <string>
#include <sstream>

FractionCalculator::FractionCalculator() : message_("") {}

void FractionCalculator::help(const char* appname, const char* message) {
    message_ =
        std::string(message) +
        "This is a fraction calculator application.\n\n" +
        "Please provide arguments in the following format:\n\n" +
        "  $ " + appname + "<f1_nom> <f1_den> <operation>\n\n" +
        "Where all arguments are double-precision numbers, " +
        "and <operation> is one of 'd', 'r', '=', '>', '<'.\n\n" +
        "or\n\n" +
        "  $ " + appname + "<f1_nom> <f1_den> <int> <operation>\n\n" +
        "Where all arguments are double-precision numbers, " +
        "and <operation> is one of '+', '-', '*', '/', 'i', '=', '>', '<'.\n"
        "or\n\n" +
        "  $ " + appname + " <f1_nom> <f1_den> "
        + "<f2_nom> <f2_den> <operation>\n\n" +
        "Where all arguments are double-precision numbers, " +
        "and <operation> is one of '+', '-', '*', '/', '=', '>', '<'.\n\n" +

        "Operation: '+' = addition,\n '-' = subtraction,\n" +
        "'*' = multiplication,\n '/' = division,\n " +
        "'d' = double translation,\n 'r' = reduction,\n" +
        "'i' = increase in the numerator and denominator n times\n";
}

bool FractionCalculator::validateNumberOfArguments(int argc,
    const char** argv) {
    if (argc == 1) {
        help(argv[0]);
        return false;
    }else if (argc != 4 && (argc != 6 && argc != 5)) {
        help(argv[0], "ERROR: Should be 3,4 or 5 arguments.\n\n");
        return false;
    }
    return true;
}

int parseInt(const char* arg) {
    char* end;
    int value = strtol(arg, &end, 0);

    if (end[0]) {
        throw std::string("Wrong number format!");
    }

    return value;
}

char parseOperation(int argc, const char* arg) {
    char op;
    //'+', '-', '*', '/', '=', '>', '<'
    if (argc == 6) {      
        if (strcmp(arg, "+") == 0) {
            op = '+';
        } else if (strcmp(arg, "-") == 0) {
            op = '-';
        } else if (strcmp(arg, "*") == 0) {
            op = '*';
        } else if (strcmp(arg, "/") == 0) {
            op = '/';
        } else if (strcmp(arg, "=") == 0) {
            op = '=';
        } else if (strcmp(arg, "<") == 0) {
            op = '<';
        } else if (strcmp(arg, ">") == 0) {
            op = '>';
        } else {
            throw std::string("Wrong operation format!");
        }
        //'+', '-', '*', '/', 'i', '=', '>', '<'
    } else if (argc == 5) {                      
        if (strcmp(arg, "+") == 0) {
            op = '+';
        } else if (strcmp(arg, "-") == 0) {
            op = '-';
        } else if (strcmp(arg, "*") == 0) {
            op = '*';
        } else if (strcmp(arg, "/") == 0) {
            op = '/';
        } else if (strcmp(arg, "=") == 0) {
            op = '=';
        } else if (strcmp(arg, "<") == 0) {
            op = '<';
        } else if (strcmp(arg, ">") == 0) {
            op = '>';
        } else if (strcmp(arg, "i") == 0) {
            op = 'i';
        } else {
            throw std::string("Wrong operation format!");
        }
        // 'd', 'r' '=', '>', '<'
    } else {
        if (strcmp(arg, "d") == 0) {     
            op = 'd';
        } else if (strcmp(arg, "r") == 0) {
            op = 'r';
        } else if (strcmp(arg, "=") == 0) {
            op = '=';
        } else if (strcmp(arg, "<") == 0) {
            op = '<';
        } else if (strcmp(arg, ">") == 0) {
            op = '>';
        } else {
            throw std::string("Wrong operation format!");
        }
    }
    
    return op;
}

std::string FractionCalculator::operator()(int argc, const char** argv) {
    Arguments args;

    if (!validateNumberOfArguments(argc, argv)) {
        return message_;
    }
    try {
        if (argc == 6) {
            args.f1_nom = parseInt(argv[1]);
            args.f1_den = parseInt(argv[2]);
            args.f2_nom = parseInt(argv[3]);
            args.f2_den = parseInt(argv[4]);
            args.operation = parseOperation(argc, argv[5]);
        } else if (argc == 5) {
            args.f1_nom = parseInt(argv[1]);
            args.f1_den = parseInt(argv[2]);
            args.f2_nom = parseInt(argv[3]);

            args.f2_den = 1;

            args.operation = parseOperation(argc, argv[4]);
        } else if (argc == 4) {
            args.f1_nom = parseInt(argv[1]);
            args.f1_den = parseInt(argv[2]);

            args.f2_nom = 0;
            args.f2_den = 1;

            args.operation = parseOperation(argc, argv[3]);
        }
    }
    catch (std::string& str) {
        return str;
    }
        Fraction f1;
        Fraction f2;

        try {
            f1.setNuminator(args.f1_nom);
            f1.setDenominator(args.f1_den);

            f2.setNuminator(args.f2_nom);
            f2.setDenominator(args.f2_den);
        }
        catch (std::string& str) {
        return str;
        }

    Fraction f;
    bool res;
    std::ostringstream stream;

    if (argc == 6) //'+', '-', '*', '/', '=', '>', '<'
    {
        switch (args.operation) {
        case '+':
            f = f1 + f2;
            stream << "Numirator = " << f.getNuminator() << " "
                << "Denominator = " << f.getDenominator();
            break;
        case '-':
            f = f1 - f2;
            stream << "Numirator = " << f.getNuminator() << " "
                << "Denominator = " << f.getDenominator();
            break;
        case '*':
            f = f1 * f2;
            stream << "Numirator = " << f.getNuminator() << " "
                << "Denominator = " << f.getDenominator();
            break;
        case '/':
            try {
                f = f1 / f2;
                stream << "Numirator = " << f.getNuminator() << " "
                    << "Denominator = " << f.getDenominator();
                break;
            }
            catch (std::string& str) {
                return str;
            }
        case '<':
            res = f1 < f2;
            if (res)
                stream << "True";
            else
                stream << "False";
            break;
        case '>':
            res = f1 > f2;
            if (res)
                stream << "True";
            else
                stream << "False";
            break;
        case '=':
            res = f1 == f2;
            if (res)
                stream << "True";
            else
                stream << "False";
            break;
        }
    }
    else if (argc == 5)  //'+', '-', '*', '/', 'i', '=', '>', '<'
    {
        switch (args.operation) {
        case '+':
            f = f1 + args.f2_nom;
            stream << "Numirator = " << f.getNuminator() << " "
                << "Denominator = " << f.getDenominator();
            break;
        case '-':
            f = f1 - args.f2_nom;
            stream << "Numirator = " << f.getNuminator() << " "
                << "Denominator = " << f.getDenominator();
            break;
        case '*':
            f = f1 * args.f2_nom;
            stream << "Numirator = " << f.getNuminator() << " "
                << "Denominator = " << f.getDenominator();
            break;
        case '/':
            try {
                f = f1 / args.f2_nom;
                stream << "Numirator = " << f.getNuminator() << " "
                    << "Denominator = " << f.getDenominator();
                break;
            }
            catch (std::string& str) {
                return str;
            }
        case 'i':
            try {
                f1.increaseByWhole(args.f2_nom);
                stream << "Numirator = " << f1.getNuminator() << " "
                    << "Denominator = " << f1.getDenominator();
                break;
            }
            catch (std::string& str) {
                return str;
            }
        case '<':
            res = f1 < f2;
            if (res)
                stream << "True";
            else
                stream << "False";
            break;
        case '>':
            res = f1 > f2;
            if (res)
                stream << "True";
            else
                stream << "False";
            break;
        case '=':
            res = f1 == f2;
            if (res)
                stream << "True";
            else
                stream << "False";
            break;
        }
    }
    else if (argc == 4)  // 'd', 'r', '=', '>', '<'
    {
        switch (args.operation) {
        case 'r':
            f1.fractionReduction();
            stream << "Numirator = " << f1.getNuminator() << " "
                << "Denominator = " << f1.getDenominator();
            break;
        case 'd':
            try {
                double res = f1.operator double();
                stream << "Double fraction = " << res;
                break;
            }
            catch (std::string& str) {
                return str;
            }
        case '<':
            res = f1.getNuminator() < f1.getDenominator();
            if (res)
                stream << "Denominator is greater than Numerator";
            else
                stream << "Denominator is not greater than Numerator";
            break;
        case '>':
            res = f1.getNuminator() > f1.getDenominator();
            if (res)
                stream << "Numerator is greater than Denominator";
            else
                stream << "Numerator is not greater than Denominator";
            break;
        case '=':
            res = f1.getNuminator() == f1.getDenominator();
            if (res)
                stream << "Numerator is equal to Denominator";
            else
                stream << "Numerator is not equal to Denominator";
            break;
        }
    }

    message_ = stream.str();

    return message_;
}
