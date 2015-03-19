// Author: xiaotian.wu

#ifndef CORE_UTIL_MACRO_HPP_
#define CORE_UTIL_MACRO_HPP_

#define DISALLOW_COPY_AND_ASSIGN(CLASS) \
  CLASS(const CLASS&) = delete;\
  CLASS& operator=(const CLASS&) = delete;

#define STATIC_CLASS(CLASS)\
  CLASS() = delete;\
  CLASS(CLASS&&) = delete;\
  WDISALLOW_COPY_AND_ASSIGN(CLASS);

#define LIKELY(x) (__builtin_expect((x), 1))
#define UNLIKELY(x) (__builtin_expect((x), 0))

#endif
