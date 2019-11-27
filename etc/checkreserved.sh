#!/bin/zsh

# check for reserved words that may be valid in (really old) C, but will confuse and break clang-(format|tidy).
# reads from stdin.

rmcpp --stdin | grep --color=always -P '\b(alignas|alignof|and|and_eq|asm|atomic_cancel|atomic_commit|atomic_noexcept|auto|bitand|bitor|catch|class|compl|concept|consteval|constexpr|constinit|const_cast|co_await|co_return|co_yield|decltype|default|delete|dynamic_cast|explicit|export|extern|friend|inline|mutable|namespace|new|noexcept|not|not_eq|nullptr|operator|or|or_eq|private|protected|public|reflexpr|reinterpret_cast|requires|static_assert|static_cast|struct|synchronized|template|this|thread_local|throw|true|try|typedef|typeid|typename|using|virtual|volatile|wchar_t|xor|xor_eq)\b'

