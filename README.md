![Unit Tests](https://github.com/DanielEbert/precommit_ci_example/workflows/Unit%20Tests/badge.svg)

### Alternative mypy for pre-commit

~~~
-   repo: local
    hooks:
    -   id: mypy
        name: mypy
        entry: "python -m mypy ."
        # exclude everything, run 'entry' command without any appended files
        exclude: '.*'
        always_run: true
        language: python
        language_version: python3.9
        additional_dependencies: ['mypy', 'types-paramiko', 'types-psutil', '--trusted-host' ,'rb-artifactory.bosch.com']
        # trigger for commits changing Python files
        types: [python]
        # use require_serial so that script
        # is only called once per commit
        require_serial: true
        # print the number of files as a sanity-check
        verbose: true
~~~
