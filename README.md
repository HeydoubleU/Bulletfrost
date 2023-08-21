# Bulletfrost
Bullet Physics for Bifrost. Created and tested with Bifrost 2.7.1.0 and Maya 2024.1.

<p float="left">
  <img src="https://github.com/HeydoubleU/Bulletfrost/assets/56705510/c1ee999c-cc7a-48f9-8e20-7f9f4d10ed2c" width="400" />
  <img src="https://github.com/HeydoubleU/Bulletfrost/assets/56705510/4bb0f99b-0d4b-4b19-b8c2-d7cff3d49569" width="335" />
</p>

### Features
This initial release focuses on essentials for rigid body simulations, specifically creating collision objects from Bifrost geometry and rigid body constraints.

In addition to further developing the RBD feature set, future feature goals include:
* Diagnostic views for various compounds.
* Soft body dynamics, cloth and lattice simulations.
* Low level utilities, ie. collision query, ray casting, geometry sweep, general purpose bullet operators useful outside of just simulation.
* GPU solver, this part of bullet appears to be experimental and completely undocumented so it is unclear how well this will go.

## Installation
The current release only includes a windows build, but hopefully this will change in the future.

Copy the `Bulletfrost` folder to your user compounds or other preferred location. Set `BIFROST_LIB_CONFIG_FILES` to the location of `BulletfrostPackConfig.json`. This can be done by editing your Maya.env with the following

```
BIFROST_LIB_CONFIG_FILES = <..>/Bulletfrost/BulletfrostPackConfig.json
```

If the environment variable is already set you can append a path with using `;`

```
BIFROST_LIB_CONFIG_FILES = <existing value>;<..>/Bulletfrost/BulletfrostPackConfig.json
```

## Getting Started
Documenting compounds is still a todo, however the library includes a few demo scenes with some explanation of their setup.

![ezgif-5-1d2e0c242e](https://github.com/HeydoubleU/Bulletfrost/assets/56705510/eb76773d-ccfd-4acc-be7c-7864b1574776)
