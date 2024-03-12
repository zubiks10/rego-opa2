package jenkins.authz

default allow = false

allow {
    input.method == "POST"
    input.path = "/job"
    input.headers.authorization[0] == "Bearer token"
}

allow {
    input.method == "GET"
    input.path = "/job/*"
    input.headers.authorization[0] == "Bearer token"
}
