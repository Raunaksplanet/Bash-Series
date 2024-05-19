#!/bin/bash

# githubuser--Given a GitHub username, pulls information about the user
if [ $# -ne 1 ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

# The -s silences curl's normally verbose output.
curl -s "https://api.github.com/users/$1" | \
awk -F'"' '
    /\"login\":/ {
        print $4" is the GitHub username."
    }
    /\"avatar_url\":/ {
        print "Avatar URL: " $4
    }
    /\"html_url\":/ {
        print "GitHub profile URL: " $4
    }
    /\"followers_url\":/ {
        print "Followers URL: " $4
    }
    /\"following_url\":/ {
        print "Following URL: " $4
    }
    /\"repos_url\":/ {
        print "Repositories URL: " $4
    }
    /\"name\":/ {
        print $4" is the name of the GitHub user."
    }
    /\"company\":/ {
        if ($4 == "null") {
            print "No company information available."
        } else {
            print "Works at: " $4
        }
    }
    /\"blog\":/ {
        if ($4 == "") {
            print "No blog provided."
        } else {
            print "Blog: " $4
        }
    }
    /\"location\":/ {
        if ($4 == "null") {
            print "No location information available."
        } else {
            print "Location: " $4
        }
    }
    /\"email\":/ {
        if ($4 == "null") {
            print "No email provided."
        } else {
            print "Email: " $4
        }
    }
    /\"hireable\":/ {
        if ($4 == "null") {
            print "Not currently hireable."
        } else {
            print "Hireable."
        }
    }
    /\"bio\":/ {
        gsub(/\\\"/, "\"", $4)
        print "Bio: " $4
    }
    /\"twitter_username\":/ {
        if ($4 == "null") {
            print "No Twitter username provided."
        } else {
            print "Twitter: @" $4
        }
    }
    /\"public_repos\":/ {
        split($3, a, " ")
        sub(/,/, "", a[2])
        print "Public repositories: "a[2]
    }
    /\"public_gists\":/ {
        split($3, a, " ")
        sub(/,/, "", a[2])
        print "Public gists: "a[2]
    }
    /\"followers\":/ {
        split($3, a, " ")
        sub(/,/, "", a[2])
        print "Followers: "a[2]
    }
    /\"following\":/ {
        split($3, a, " ")
        sub(/,/, "", a[2])
        print "Following: "a[2]
    }
    /\"created_at\":/ {
        print "Account created on " $4
    }
    /\"updated_at\":/ {
        print "Profile last updated on " $4
    }
'


exit 0
