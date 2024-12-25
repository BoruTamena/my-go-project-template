# Internal Folder

The `internal/` directory contains the private application code that should not be imported by external projects. This is a key Go convention, ensuring encapsulation and preventing external packages from accessing internal implementations.

---

## Purpose

The `internal/` directory is used to organize the core business logic, application-specific functionality, and other modules that are not intended to be exposed outside this project. 

It typically includes the following subdirectories, adhering to clean architecture principles (like Ports & Adapters):

---

## Folder Structure

```plaintext
internal/
├── constant/       # constant define the internal app logic constant.
                    include: error constant,dto,db and etc
├── glue/           # glue define routes for each  app handler and glue it all together.
├── handler/        # handler  define the app endpoint eg.auth,user and other. it will server the above layer w/c is glue
├── module/         # module  modularize the app features. it contain the app logic .
                     it will be serve the layer above it w/c is handler layer and can directly interact with the peristanace layer.
├── storage/         # storage  contain the persistance layer of the app. serve the above layer w/c is module layer.  eg.persistance,cach
```
