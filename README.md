# Demonstrating getchar() behavior

Which is the way to use the C standard function getchar()

	char c;
	c = getchar();

or

	int i;
	i = getchar();

?


## Usage

Download a copy of this repo somewhere in your system.  It should work on any POSIX system (requires cc, od, make).

The Makefile can be used to do all the work. For instance,

	make report.data

will print a file (ascii.data) that contains the values 0x00-0xFF, and will print a second file (produced.data) that contains the values read from the first file (ascii.data) using the program (consume_ascii).  consume_ascii's source code (consume_ascii) can be compiled in two ways!  One way uses an int to store values from getchar() and the other way uses an char.  The method to choose this in stored in Makefile.  Just uncomment either line 3 or line 4.  But not both.

## Example

	vi Makefile       # uncomment line 3 and check that line 4 is commented out
	make report.summary
	vi Makefile       # uncomment line 4 and check that line 3 is commented out
	make report.summary

The numbers reported are the number of characters in those files.  Since 0x00-0xFF is 256 values, the output from consume_ascii should be 256.

## Examining

	make report.data

This will print the data within ascii.data and produced.data using a hex editor interface.

## Limitations

Uncommenting lines 3 and 4 of Makefile is a logic error.
Commenting both lines 3 and 4 of Makefile will cause compilation errors.
"That's not a bug, that's a feature!"©
