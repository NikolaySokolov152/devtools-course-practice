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

		"  $ " + appname + " <f1_nom> <f1_den> " +
		"<f2_nom> <f2_den> <operation>\n\n" +

		"Where all arguments are double-precision numbers, " +
		"and <operation> is one of '+', '-', '*', '/'.\n";
}

bool FractionCalculator::validateNumberOfArguments(int argc, const char** argv) {
	if (argc == 1) {
		help(argv[0]);
		return false;
	}
	else if (argc != 6) {
		help(argv[0], "ERROR: Should be 5 arguments.\n\n");
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

char parseOperation(const char* arg) {
	char op;
	if (strcmp(arg, "+") == 0) {
		op = '+';
	}
	else if (strcmp(arg, "-") == 0) {
		op = '-';
	}
	else if (strcmp(arg, "*") == 0) {
		op = '*';
	}
	else if (strcmp(arg, "/") == 0) {
		op = '/';
	}
	else {
		throw std::string("Wrong operation format!");
	}
	return op;
}

std::string FractionCalculator::operator()(int argc, const char** argv) {
	Arguments args;

	if (!validateNumberOfArguments(argc, argv)) {
		return message_;
	}
	try {
		args.f1_nom = parseInt(argv[1]);
		args.f1_den = parseInt(argv[2]);
		args.f2_nom = parseInt(argv[3]);
		args.f2_den = parseInt(argv[4]);
		args.operation = parseOperation(argv[5]);
	}
	catch (std::string& str) {
		return str;
	}

	Fraction f1;
	Fraction f2;

	f1.setNominator(args.f1_nom);
	f1.setDenominator(args.f1_den);
	f2.setNominator(args.f2_nom);
	f2.setDenominator(args.f2_den);

	Fraction f;
	std::ostringstream stream;
	switch (args.operation) {
	case '+':
		f = f1 + f2;
		stream << "Nominator = " << f.getNominator() << " "
			<< "Denominator = " << f.getDenominator();
		break;
	case '-':
		f = f1 - f2;
		stream << "Nominator = " << f.getNominator() << " "
			<< "Denominator = " << f.getDenominator();
		break;
	case '*':
		f = f1 * f2;
		stream << "Nominator = " << f.getNominator() << " "
			<< "Denominator = " << f.getDenominator();
		break;
	case '/':
		try {
			f = f1 / f2;
			stream << "Nominator = " << f.getNominator() << " "
				<< "Denominator = " << f.getDenominator();
			break;
		}
		catch (std::string& str) {
			return str;
		}
	}

	message_ = stream.str();

	return message_;
}
