extract_credentials () {
    sed -rn '
    s!.*<strong>(.*)</strong>, on port (.*)[.].*!host=\1 port=\2!p
    s!.*The username is <strong>(.*)</strong> and the password is <strong>(.*)</strong>.*!login=\1 password=\2!p'
}

echo game=bandit level=0
curl -slk http://overthewire.org/wargames/bandit/bandit0.html |
        extract_credentials
