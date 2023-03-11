#include <gtest/gtest.h>

TEST(cat, meow1) { ASSERT_EQ(3, 3); }

TEST(cat, meow2) { ASSERT_EQ(1, 3); }

TEST(cat2, meow3) {
  ASSERT_STRNE("MEOW2", "MEOW2");
  ASSERT_STRCASEEQ("ASCII", "ISCII");
}

TEST(fuck, 3) { ASSERT_EQ(43, 32) << "43 and 32 are unequal"; }
