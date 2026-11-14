square_area(Side,R):- R is Side*Side.
square_perimeter(Side,R):- R is 4*(Side).

rectangle_area(Width,Height,R):- R is Width*Height.
rectangle_perimeter(Width,Height,R):- R is 2*(Width+Height).

triangle_area(Base,Height,R):- R is 0.5* Base * Height.
triangle_perimeter(A,B,C,R):- R is A+B+C.