#include "gtest/gtest.h"

int pullInLibraryLibATest();
static int dummy = pullInLibraryLibATest();

int main(int argc, char **argv)
{
   ::testing::InitGoogleTest(&argc, argv);
   return RUN_ALL_TESTS();
}
