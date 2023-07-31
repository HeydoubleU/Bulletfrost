#ifndef BULLETFROST_EXPORT_H
#define BULLETFROST_EXPORT_H

#if defined(_WIN32)
#define BULLETFROST_EXPORT __declspec(dllexport)
#define BULLETFROST_IMPORT __declspec(dllimport)
#elif defined(__GNUC__)
#define BULLETFROST_EXPORT __attribute__((visibility("default")))
#define BULLETFROST_IMPORT __attribute__((visibility("default")))
#else
#error Unsupported platform.
#endif

#if defined(BULLETFROST_BUILD_NODEDEF_DLL)
#define BULLETFROST_DECL BULLETFROST_EXPORT
#else
#define BULLETFROST_DECL BULLETFROST_IMPORT
#endif

#endif
