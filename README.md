# testsh

test suite for arbitrary programs

## Naming

A file in tests/src should be named: test_PHILOSOPHY_TYPE_name_of_the_test.c

A program in tests/bin should just contain the name: test_PHILOSOPHY_TYPE_name_of_the_test
A expected program (copycat) should be named: expc_test_PHILOSOPHY_TYPE_name_of_the_test

## Type

The following test types are available:

### assert

Runs the test program and checks for a 0 return code. IO is not redirected, so the program logs are visible. This is intended for self-testing, e.g., with the function "assert" that is available in common programming languages.

### return

Executes the program and checks if the return code is 0; otherwise, the test fails.

### diff

Compares the stdout output of an actual and expected behavior.

## Philosophy

A philosophy is a supertype for a test. The following philosophy types are available:

### Standalone

A standalone test is based on a program. The following types are supported:

* assert

### Copycat

A copycat test is based on a source file from which two programs are created (expected behavior and actual behavior). For example, if the source file is named test_copycat_helloworld.c, the program expc_test_copycat_helloworld is used as the expected behavior, and the program test_copycat_helloworld is used as the actual behavior. As the name suggests, it is well-suited for re-implementing existing tools or libraries. The following types are supported:

* return
* diff
