#include "gtest/gtest.h"
#include "foo.h"

namespace {

TEST(FooTest, Bar) {
  Foo foo;
  EXPECT_EQ(0xF00, foo.bar());
}

TEST(FooTest, Baz) {
  Foo foo;
  EXPECT_EQ("baz", foo.baz());
}

} //anonymous namespace
