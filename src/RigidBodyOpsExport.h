#ifndef RIGIDBODY_EXPORT_H
#define RIGIDBODY_EXPORT_H

#if defined(_WIN32)
#define RIGIDBODY_EXPORT __declspec(dllexport)
#define RIGIDBODY_IMPORT __declspec(dllimport)
#elif defined(__GNUC__)
#define RIGIDBODY_EXPORT __attribute__((visibility("default")))
#define RIGIDBODY_IMPORT __attribute__((visibility("default")))
#else
#error Unsupported platform.
#endif

#if defined(RIGIDBODY_BUILD_NODEDEF_DLL)
#define RIGIDBODY_DECL RIGIDBODY_EXPORT
#else
#define RIGIDBODY_DECL RIGIDBODY_IMPORT
#endif

#endif
