
CC=g++
CFLAGS=-c
LDFLAGS=
SOURCES=main.cpp Circle.cpp Rectangle.cpp Shape.cpp Square.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=engage

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	 $(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@ -Iincludes

#main.o: main.cpp
#	$(CC) $(CFLAGS) main.cpp -Iincludes

#Circle.o: Circle.cpp includes/Circle.hpp
#	$(CC) $(CFLAGS) Circle.cpp -Iincludes

#Rectangle.o: Rectangle.cpp includes/Rectangle.hpp
#	$(CC) $(CFLAGS) Rectangle.cpp -Iincludes

#Shape.o: Shape.cpp includes/Shape.hpp
#	$(CC) $(CFLAGS) Shape.cpp -Iincludes

#Square.o: Square.cpp includes/Square.hpp
#	$(CC) $(CFLAGS) Square.cpp -Iincludes

clean:
	rm *o engage


