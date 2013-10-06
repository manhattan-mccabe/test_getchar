#include <stdio.h>

#if INT
	typedef int  SYMBOL;
#elif CHAR
	typedef char SYMBOL;
#else
#	error hahahaha, see Makefile lines 2-4
#endif

int main()
{
	SYMBOL c;
	while (  EOF
	      != ( c = getchar() )
	      )
	{
		printf("%c", c);
	}
	return 0;
}
