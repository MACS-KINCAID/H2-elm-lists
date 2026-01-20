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

## List exercises
1. Make a function "isEmpty" that returns if a given String List is empty or not (Bool).
2. Make a function "head" that returns the first Int in a Int list of -100 if it's an empty list.

### Map Exercises
1. Create a function "canBuyAlcohol" that given an array of ages return True or False if is able to buy alcohol (+17)
2. Create a function "allUpperCase" that given an array of names return the same names in uppercase (String.toUpper) 
3. Create a function "approveCourse" that given an array of grades (Float) return if it approve or not the course.

