#include <stdio.h>
#include <math.h>

int main()
{
	int i;
	for ( i = 0
	    ; i < (1 << 8)
	    ; ++i
	    )
	{
		printf("%c", i);
	}
	return 0;
}
