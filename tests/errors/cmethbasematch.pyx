# mode: error

cdef class C:
    cdef void f(self):
        pass

cdef class D(C):
    cdef void f(self, int x):
        pass

_ERRORS = u"""
6: 9: Signature not compatible with previous declaration
2: 9: Previous declaration is here
"""
