package jenkins.authz

default allow = false

allow {
    input.method == "POST"
    input.path = "/job"
    input.headers.authorization[0] == "11e9bd90d34d845a24898335cd4aa002ae"
}

allow {
    input.method == "GET"
    input.path = "/job/*"
    input.headers.authorization[0] == "11e9bd90d34d845a24898335cd4aa002ae"
}
