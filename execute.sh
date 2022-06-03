#! /bin/sh

export VENMO_API_KEY="$(cat ~/.secrets/venmo)";
export LUNCH_MONEY_API_KEY="$(cat ~/.secrets/lunch_money_api_key)";

docker build . --tag venmo-to-lunch-money \
&& docker run venmo-to-lunch-money \
--lookback-days 60 \
--venmo-api-key "$VENMO_API_KEY" \
--lunchmoney-api-key "$LUNCH_MONEY_API_KEY"
