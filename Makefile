CC = cc
# remove the pound character to comment one of the following two lines
#FLAG = -DINT
#FLAG = -DCHAR

clean:
	rm -f gen_ascii consume_ascii ascii.data produced.data

gen_ascii: gen_ascii.c Makefile
	$(CC)         $@.c    -o $@

consume_ascii: consume_ascii.c Makefile
	$(CC) $(FLAG) $@.c    -o $@

ascii.data: gen_ascii Makefile
	./gen_ascii > $@

produced.data: ascii.data consume_ascii Makefile
	./consume_ascii < ascii.data > $@

report.summary: produced.data ascii.data Makefile
	wc -c ascii.data produced.data

report.data: produced.data ascii.data Makefile
	od -t x1 ascii.data
	od -t x1 produced.data

