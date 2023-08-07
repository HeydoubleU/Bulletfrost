#ifndef CONSTRAIN_EXPORT_H
#define CONSTRAIN_EXPORT_H

#if defined(_WIN32)
#define CONSTRAIN_EXPORT __declspec(dllexport)
#define CONSTRAIN_IMPORT __declspec(dllimport)
#elif defined(__GNUC__)
#define CONSTRAIN_EXPORT __attribute__((visibility("default")))
#define CONSTRAIN_IMPORT __attribute__((visibility("default")))
#else
#error Unsupported platform.
#endif

#if defined(CONSTRAIN_BUILD_NODEDEF_DLL)
#define CONSTRAIN_DECL CONSTRAIN_EXPORT
#else
#define CONSTRAIN_DECL CONSTRAIN_IMPORT
#endif

#endif
