lib/
├── core/                       # Global utilities, errors, generic usecases
│   ├── error/                  # Failures & Exceptions
│   ├── network/                # Network info checkers
│   └── usecases/               # Base UseCase class
├── features/
│   └── [feature_name]/         # e.g., 'inventory', 'auth'
│       ├── data/               # The "How" (Implementation)
│       │   ├── datasources/    # Remote (Firebase) & Local data sources
│       │   ├── models/         # Data Transfer Objects (DTOs), json parsing
│       │   └── repositories/   # Implementation of Domain repositories
│       ├── domain/             # The "What" (Business Logic - Pure Dart)
│       │   ├── entities/       # Core business objects
│       │   ├── repositories/   # Abstract contracts (Interfaces)
│       │   └── usecases/       # Specific actions (e.g., GetItems, AddItem)
│       └── presentation/       # The "Show" (UI & State)
│           ├── bloc/           # Bloc/Cubit files
│           ├── pages/          # Full screens
│           └── widgets/        # Reusable feature-specific widgets
├── injection_container.dart    # Dependency Injection setup (GetIt)
└── main.dart