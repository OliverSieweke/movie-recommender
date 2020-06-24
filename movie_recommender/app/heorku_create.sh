# Retrieve environment variables:
cd "$(dirname "$0")" || exit
source ../../.env


# Login if needed:
if ! heroku whoami
then
  heroku login
fi


# Create app if it has not been created yet:
if heroku apps | grep -q "${HEROKU_APP_NAME}"
then
  echo The app \'"${HEROKU_APP_NAME}"\' has already been created.
else
  heroku create "${HEROKU_APP_NAME}"
fi
