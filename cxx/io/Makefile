CC = clang
CXX = clang++

%.o: %.cpp
	$(CXX) -c -o $@ $^

readline: readline.o
	$(CXX) -o $@ $^

all: readline

clean:
	rm *.o readline
