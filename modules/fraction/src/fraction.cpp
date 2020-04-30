// Copyright 2020  Baldin Alexey & completed Sokolov Nikolay

#include "include/fraction.h"
#include <string>
#include <iostream>

Fraction::Fraction(const int& nom, const int& den) {
    if (den == 0) {
        denominator_ = 1;
        throw std::string("Denominator can`t be zero. Use denominator = 1");
    } else if (den < 0) {
        nominator_ = -nom;
        denominator_ = -den;
    } else {
        nominator_ = nom;
        denominator_ = den;
    }
}

Fraction::Fraction(const Fraction & f) {
    this->nominator_ = f.getNuminator();
    this->denominator_ = f.getDenominator();
}

int Fraction::getNuminator() const {
    return nominator_;
}

int Fraction::getDenominator() const {
    if (nominator_ == 0) {
        throw std::string("Nominator = 0. Denominator don`t need.");
    } else {
        return denominator_;
    }
}

void Fraction::setNuminator(const int& nom) {
    nominator_ = nom;
}

void Fraction::setDenominator(const int& den) {
    if (den == 0) {
        denominator_ = 1;
        throw std::string("Denominator can`t be zero. Use denominator = 1");
    } else if (den < 0) {
        nominator_ = -nominator_;
        denominator_ = -den;
    } else {
        denominator_ = den;
    }
}

bool Fraction::operator==(const Fraction & f) const {
    Fraction f1(this->getNuminator(), this->getDenominator());
    Fraction f2(f.getNuminator(), f.getDenominator());

    f1.fractionReduction();
    f2.fractionReduction();

    return f1.getNuminator() == f2.getNuminator() &&
           f1.getDenominator() == f2.getDenominator();
}

bool Fraction::operator!=(const Fraction & f) const {
    Fraction f1(this->getNuminator(), this->getDenominator());
    Fraction f2(f.getNuminator(), f.getDenominator());

    f1.fractionReduction();
    f2.fractionReduction();

    return f1.getNuminator() != f2.getNuminator() ||
           f1.getDenominator() != f2.getDenominator();
}

void Fraction::fractionReduction() {
    int nodND = nod(nominator_, denominator_);

    if (nodND != 1) {
        nominator_ = nominator_ / nodND;
        denominator_ = denominator_ / nodND;
    }
}

Fraction Fraction::operator+(const Fraction & f) const {
    int nom = this->getNuminator() * f.getDenominator() +
              this->getDenominator() * f.getNuminator();
    int den = this->getDenominator() * f.getDenominator();

    Fraction sum(nom, den);
    sum.fractionReduction();

    return sum;
}

Fraction Fraction::operator-(const Fraction & f) const {
    int nom = this->getNuminator() * f.getDenominator() -
        this->getDenominator() * f.getNuminator();
    int den = this->getDenominator() * f.getDenominator();

    Fraction dif(nom, den);
    dif.fractionReduction();

    return dif;
}

Fraction Fraction::operator*(const Fraction & f) const {
    int nom = this->getNuminator() * f.getNuminator();
    int den = this->getDenominator() * f.getDenominator();

    Fraction mult(nom, den);
    mult.fractionReduction();

    return mult;
}

Fraction Fraction::operator/(const Fraction & f) const {
    if (f.getNuminator() != 0) {
        int nom = this->getNuminator() * f.getDenominator();
        int den = this->getDenominator() * f.getNuminator();

        Fraction division(nom, den);
        division.fractionReduction();

        return division;
    } else {
        throw std::string("Numerator divider can`t be zero");
    }
    return Fraction();
}

Fraction Fraction::operator+(const int & n) const {
    int nom = this->getNuminator() + this->getDenominator() * n;

    Fraction sum(nom, this->getDenominator());
    sum.fractionReduction();

    return sum;
}

Fraction Fraction::operator-(const int & n) const {
    int nom = this->getNuminator() - this->getDenominator() * n;

    Fraction dif(nom, this->getDenominator());
    dif.fractionReduction();

    return dif;
}

Fraction Fraction::operator*(const int & n) const {
    int nom = this->getNuminator() * n;

    Fraction mult(nom, this->getDenominator());
    mult.fractionReduction();

    return mult;
}

Fraction Fraction::operator/(const int & n) const {
    if (n != 0) {
        int den = this->getDenominator() * n;

        Fraction division(this->getNuminator(), den);
        division.fractionReduction();

        return division;
    }
    else throw std::string("Denominator can`t be zero");
    return Fraction();
}

Fraction& Fraction::operator=(const Fraction & f) {
    this->nominator_ = f.getNuminator();
    this->denominator_ = f.getDenominator();

    return *this;
}

Fraction::operator double() const {
    return static_cast<double>(nominator_) / denominator_;
}

bool Fraction::operator>(const Fraction & f) {
    double f1 = *this;
    double f2 = f;

    return f1 > f2;
}

bool Fraction::operator>=(const Fraction & f) {
    double f1 = *this;
    double f2 = f;

    return f1 >= f2;
}

bool Fraction::operator<(const Fraction & f) {
    double f1 = *this;
    double f2 = f;

    return f1 < f2;
}

bool Fraction::operator<=(const Fraction & f) {
    double f1 = *this;
    double f2 = f;

    return f1 <= f2;
}

int Fraction::changeDenominator(const int & den) {
    if (denominator_ < den && den % denominator_ == 0) {
        denominator_ = den;
        nominator_ *= (den / denominator_);
    } else if (denominator_ > den && denominator_ % den == 0 &&
               nominator_ % (denominator_ / den) == 0) {
        nominator_ /= denominator_ / den;
        denominator_ = den;
    } else {
        throw std::string("Can`t change denominator for this fraction.");
    }
    return 0;
}

void Fraction::increaseByWhole(int n) {
    if (n != 0) {
        nominator_ *= n;
        denominator_ *= n;
    } else {
        throw std::string("Argument is Zero");
    }
}

int nod(int a, int b) {
    if (a < 0) {
        a = -a;
    }
    if (b < 0) {
        b = -b;
    }

    while (a && b) {
        if (a >= b) {
            a = a % b;
        } else {
            b = b % a;
        }
    }

    if (a == 0) {
        return b;
    } else {
        return a;
    }
}

Fraction operator+(const int & n, const Fraction & f) {
    return f + n;
}

Fraction operator-(const int & n, const Fraction & f) {
    int nom = f.getDenominator() * n - f.getNuminator();

    Fraction dif(nom, f.getDenominator());
    dif.fractionReduction();

    return dif;
}

Fraction operator*(const int & n, const Fraction & f) {
    return f * n;
}

Fraction operator/(const int & n, const Fraction & f) {
    int nom = f.getDenominator() * n;

    Fraction division(nom, f.getNuminator());
    division.fractionReduction();

    return division;
}
