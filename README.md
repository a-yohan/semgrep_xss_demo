1. [Install Semgrep](https://semgrep.dev/docs/getting-started/)
2. run
    ```
    semgrep scan -c semgrep-rules/unescaped-output.yaml .
    ```
3. run
    ```
    semgrep scan -c semgrep-rules/spring-jsp-reflected-xss.yaml .
    ```