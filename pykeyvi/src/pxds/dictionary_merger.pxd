from libcpp.string cimport string as libcpp_string
from libcpp.map cimport map as libcpp_map
from libc.string cimport const_char

ctypedef void (*callback_t)(size_t a, size_t b, void* user_data)
        
cdef extern from "dictionary/dictionary_types.h" namespace "keyvi::dictionary":
    cdef cppclass JsonDictionaryMerger:
        JsonDictionaryMerger() except +
        void Add(libcpp_string) except +
        void Merge(libcpp_string) nogil