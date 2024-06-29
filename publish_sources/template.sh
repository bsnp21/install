# Replace the following variables with your own values
GITHUB_USER="your-github-username"
REPO_NAME="your-repo-name"
ACCESS_TOKEN="your-github-access-token"

# For user/organization sites (using 'main' or 'master' branch)
curl -H "Authorization: token $ACCESS_TOKEN" \
     -X POST \
     -d '{"source":{"branch":"main"}}' \
     https://api.github.com/repos/$GITHUB_USER/$REPO_NAME/pages

# For project sites (using 'gh-pages' branch)
curl -H "Authorization: token $ACCESS_TOKEN" \
     -X POST \
     -d '{"source":{"branch":"gh-pages"}}' \
     https://api.github.com/repos/$GITHUB_USER/$REPO_NAME/pages
