CXX = g++
CXXFLAGS = -O3 -g -Wall

inotify-wrapper: inotify-wrapper.o
	$(CXX) $(CXXFLAGS) $< -o $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

install:
	# do nothing
