#############CODING STYLE#############
# Author(s): Ji Na, Mael, Anthony    #
# Version: 1.1                       #
# Version date: June 10, 2020        #
######################################

### INDENTATION ###
4 spaces using tab

### MAX LENGTH ###
standard 79 chars
72 chars for comments

### LINE BREAK ###
# with methods
string.strip()
      .replace()
      .lower()

# with binary operators
income = (gross_wages
	+ taxable_interest
	+ (dividends - qualified_dividends)
	- ira_deduction
	- student_loan_interest)

### COMMENTS ###
standard usage with inline comment starting with #
multiple line comments with """
max length is 72 chars

### DOC STRINGS ###
""" Write docstrings for all public modules, functions,
classes, methods. Docstrings are not necessary for non-
public methods.
The closing chars of a multiline docstring should be on
a line by itself.
"""

### NAMING CONV ###
* Class Names
CapWords convention
* Type Variable Names
CapWords convention
* Global Variable Names
* Function Names
lowercase separated with underscores
* Variable Names
lowercase separated with underscores
* Method Names
lowercase
* Constants
ALL CAPS
* Functions and Methods Args
always use self for the first arg to instance methods
always use cls for the first arg to class methods

### CODING RECO ###
* use ''.join() instead of in-line string concatenations
* use is or is not when comparing to singletons like None
* use is not operator rather than not ... is
* use single quotes and use double quotes when a string 
contains single quote characters
* avoid trailing whitespaces
* surround binary operators with a single space on either side
* don't use spaces around the = sign when used to indicate a 
default value for a function parameter
* avoid putting multi-clause statements or multiple statements 
on the same line (if/for/while)
* derive exceptions from Exception rather than BaseException
* when raising an excepion use raise ValueError('message')
* when catching exceptions, mention specific exceptions 
whenever possible instead of using a bare except: clause
* all return statements in a function should return an 
expression, if no value is returned explicitly return None
* use ''.startswith() or ''.endswith instead of slicing
* object type comparisons with isinstance(obj, type)
* empty sequences (strings, lists, tuples) are False
* don't compare boolean values to True or False using ==

### LIBRARIES ###
import <library>
from <library> import <method>	
re, math, os, sys
