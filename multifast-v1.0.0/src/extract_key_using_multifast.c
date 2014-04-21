/*
 * example2.c: This program illustrates how to use ahocorasick library
 * This file is part of multifast.
 *
    Copyright 2010-2012 Kamiar Kanani <kamiar.kanani@gmail.com>

    multifast is free software: you can redistribute it and/or modify
    it under the terms of the GNU Lesser General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    multifast is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public License
    along with multifast.  If not, see <http://www.gnu.org/licenses/>.
*/

#define _GNU_SOURCE
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

//*** 0. Include the header
#include "ahocorasick.h"

//** Include multi_word dictionary
#include "extract_key.c"   //This file is for ncert corpus
//#include "extract-key-dev-corpus.c" //This file is for dev corpus 
//#include "extract-key-tourism-corpus.c"   //This file is for tourism corpus

//char buffer[256];

char buffer[2500];
char input_line [10000];
int word_count=0, offset_count=0, flag=0;
int word_id[1000], offset_no[1000];
FILE *fp1;

/***********************************************************************/

struct sample_param {
	int anum;
	char achar;
};

/***********************************************************************/
//*** Replacing space with underscore in input text. 
//*** Also storing word count and offset count in an array

void replace_space_with_underscore(char inp_text[10000])
{  
   char *p, str[1000], *p1;
   int j=0, len1=0;
   word_count=1; 
   p1=inp_text;
   while(1)
    {
	p=index(inp_text, ' ');
	if(p!=NULL)
	{
           *p='_';
           len1=strcspn(p1+1, "_");
  	   strncpy(str, p1+1, len1);  str[len1]='\0';  p1=p1+len1+1;
	   offset_count=strlen(inp_text)-strlen(p)+1;
//		printf("^^^%d---%d---%d\n", offset_count, strlen(inp_text), strlen(p));
          
           offset_no[j]=offset_count;
	   word_id[j]=word_count;
	   j++; 
	   word_count++; 
        }
	else
	{
	   word_count++;
           break; 
	}
    }
//	   printf("%d\n", strlen(inp_text)); 
}

/****************************************************************************/

//*** 1. Define a call-back function of the MATCH_CALBACK_t type

int match_handler(AC_MATCH_t * m, void * param)
{
	unsigned int j;
	int i=0, k=0;
	char id_count[1000], *p;
	int word_ids, final_ids;

	/* example of sending parameter to call-back function */
	struct sample_param * myp = (struct sample_param *)param;

	if (myp->anum==1) {  
              for(k=0; k<1000 ; k++) {
                if(offset_no[k] == m->position) 
		 {
		   word_ids=word_id[k];
		   break;  
		 }
	      }
	} 
	else
                printf ("At %ld : ", m->position);

	//to get multi word expression
	for (j=0; j < m->match_num; j++) 
	{
		if((p=index(m->patterns[j].rep.stringy, '=')+1))
		 {
			strncpy(id_count, p, strlen(p)); id_count[strlen(p)]='\0'; //word_count 
		  } 
		printf("(eng_cmp_mng-eng_ids\t");

		printf("%s\t%ld\t%ld",  m->patterns[j].astring, m->position - m->patterns[j].length + 1, m-> position);
		fprintf(fp1, "%ld %ld\t", m->position - m->patterns[j].length + 1, m-> position);
		//to get word ids
		for(i=atoi(id_count); i>=1; i--) { 
			final_ids=word_ids-i+1;
		        fprintf(fp1, "%d ", final_ids);
		} 
		printf(")\n");
		fprintf(fp1, "\n"); 
	}
	switch (myp->achar) {
	case 'f': /* find first */
		return 1;
	case 'a': /* find all */
	default:
		return 0;
	}
}

/****************************************************************************/

int main (int argc, char ** argv)
{
	//*** 2. Define AC variables
	AC_AUTOMATA_t * acap;

	AC_TEXT_t input_text = {0, 0};

	#define PATTERN_NUMBER (sizeof(allpattern)/sizeof(AC_PATTERN_t))

	unsigned int i;

	/* Sending parameter to call-back function */
	struct sample_param my_param;
	my_param.anum = 1;
	my_param.achar = 'a'; /* 'a': find all, 'f': find first */

	//*** 3. Get a new automata
	acap = ac_automata_init (match_handler);

	//*** 4. add patterns to automata
	for (i=0; i<PATTERN_NUMBER; i++)
	{
		allpattern[i].length = strlen(allpattern[i].astring);
		ac_automata_add (acap, &allpattern[i]);
	}

	//*** 5. Finalize automata.
	ac_automata_finalize (acap);

	//*** 5.1 Display automata
	//ac_automata_display (acap, 's');

	/* This illustrates how to search big text chunk by chunk
	 * in this example input buffer size is 2500 and input file is pretty
	 * bigger than that. in fact it imitate reading from input file.
	 * in such situations searching must be done inside a loop. the loop
	 * continues until it consumes all input file.
	**/

	FILE *fp;
	char *line;
        size_t len=0;

	fp = fopen(argv[1], "r");
	fp1 = fopen(argv[2], "w");
        if(fp == NULL || fp1 == NULL) printf("File Couldn't Open\n");

	input_line[0]='_'; 
	while(getline(&line, &len, fp)!=-1)
        {  
	   strcpy(input_line+1, line);
	 //  printf("%s", input_line);
	  
	   //calling function replace_space_with_underscore()
           replace_space_with_underscore(input_line);
	   *(input_line+len)='_';  

	   char * chunk_start = input_line;
           //	char * end_of_file = input_line+sizeof(input_line);
	   char * end_of_file = input_line+strlen(input_line);
	   input_text.astring = buffer;

	/* Search loop */
	 while (chunk_start<end_of_file) { 
		//*** 6. Set input text
		input_text.length = (chunk_start<end_of_file)?
				sizeof(buffer):(sizeof(input_line)%sizeof(buffer));
		strncpy(input_text.astring, chunk_start, input_text.length);
        
		//*** 7. Do search
		if(ac_automata_search (acap, &input_text, (void *)(&my_param)))
			break;
		/* according to the return value of ac_automata_search() we decide to
		 * continue or break loop. */

		chunk_start += sizeof(buffer); 
	 }
	    //*** 8. Reset
	   ac_automata_reset(acap); 
	   printf(";~~~~~~~~~~\n");
	   fprintf(fp1, ";~~~~~~~~~~\n");
	}
	//*** 9. Release automata
	ac_automata_release (acap);
	return 0;
}
