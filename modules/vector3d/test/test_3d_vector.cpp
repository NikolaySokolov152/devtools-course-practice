// Copyright 2020 Sokolov Nikolai

#include <gtest/gtest.h>

#include "include/vector3D.h"

class Vector3DTest : public ::testing::Test {
protected:
	double epsilon = 0.001;
};

TEST_F(Vector3DTest, Create_Vector3D_With_Default_constructor) {
	// Arrange
	Vector3D v;
	// Act
	// Assert
	ASSERT_NO_THROW(v.getX());
	ASSERT_NO_THROW(v.getY());
	ASSERT_NO_THROW(v.getZ());
}

TEST_F(Vector3DTest, Get_Value_Vector3D_With_Default_constructor) {
	// Arrange
	Vector3D v;
	// Act
	// Assert
	ASSERT_EQ(v.getX(), 0);
	ASSERT_EQ(v.getY(), 0);
	ASSERT_EQ(v.getZ(), 0);
}

TEST_F(Vector3DTest, Create_Vector3D_Constructor_With_One_Parameters) {
	// Arrange
	Vector3D v(2);
	// Act
	// Assert
	ASSERT_NO_THROW(v.getX());
	ASSERT_NO_THROW(v.getY());
	ASSERT_NO_THROW(v.getZ());
}

TEST_F(Vector3DTest, Create_Vector3D_Constructor_With_Two_Parameters) {
	// Arrange
	Vector3D v(2,2);
	// Act
	// Assert
	ASSERT_NO_THROW(v.getX());
	ASSERT_NO_THROW(v.getY());
	ASSERT_NO_THROW(v.getZ());
}

TEST_F(Vector3DTest, Create_Vector3D_Constructor_With_Three_Parameters) {
	// Arrange
	Vector3D v(2,2,2);
	// Act
	// Assert
	ASSERT_NO_THROW(v.getX());
	ASSERT_NO_THROW(v.getY());
	ASSERT_NO_THROW(v.getZ());
}

TEST_F(Vector3DTest, Get_Value_X_Coordinate) {
	// Arrange
	Vector3D v(2,3,4);
	// Act
	// Assert
	ASSERT_EQ(v.getX(), 2);
}

TEST_F(Vector3DTest, Get_Value_Y_Coordinate) {
	// Arrange
	Vector3D v(3,3,4);
	// Act
	// Assert
	ASSERT_EQ(v.getY(), 3);
}

TEST_F(Vector3DTest, Get_Value_Z_Coordinate) {
	// Arrange
	Vector3D v(3,4,6);
	// Act
	// Assert
	ASSERT_EQ(v.getZ(), 6);
}

TEST_F(Vector3DTest, Set_Value_X_Coordinate) {
	// Arrange
	Vector3D v(2, 3, 4);
	// Act
	v.setX(12.2323);
	// Assert
	ASSERT_EQ(v.getX(), 12.2323);
}

TEST_F(Vector3DTest, Set_Value_Y_Coordinate) {
	// Arrange
	Vector3D v(3, 3, 4);
	// Act
	v.setY(21.2);
	// Assert
	ASSERT_EQ(v.getY(), 21.2);
}

TEST_F(Vector3DTest, Set_Value_Z_Coordinate) {
	// Arrange
	Vector3D v(3, 4, 6);
	// Act
	v.setZ(11.2);
	// Assert
	ASSERT_EQ(v.getZ(), 11.2);
}