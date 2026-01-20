# Commands
These are the four commands that are evaluated, you can run them locally. To solve the errors faster.
- Validate format
```bash
# Linux & Windows
elm-format src/ --validate
```
- Run checks
```bash
# Linux
elm-review --template jfmengels/elm-review-common/example --rules NoMissingTypeAnnotation,NoMissingTypeAnnotationInLetIn
# Windows Powershell
elm-review --template jfmengels/elm-review-common/example --rules "NoMissingTypeAnnotation,NoMissingTypeAnnotationInLetIn"
# Windows cmd
elm-review --template jfmengels/elm-review-common/example --rules NoMissingTypeAnnotation,NoMissingTypeAnnotationInLetIn
```
- Build
```bash
# Linux
elm make src/*
# Windows
elm make src/<file>.elm
```
- Run tests
```bash
# Linux & Windows
elm-test
```

## Prerequisites
- NodeJs
- Elm
- elm-test 
- elm-format
- elm-review
