# gtrendsR 1.4.3

- Added more options to specify time interval of the search (#289). @JBleher

- Fixed dangling time zone parameters (#290). @JBleher

- Fixed also issues with different results when requests were issued from different time zones and different locale settings.

- Download multiple time ranges for direct comparison.

- Now also an option to only download interest over time is added.

- Showing the returned status code when it is failing (i.e. not 200) (#304).

- Bug fix keyword encoding when there are multiple keywords with '&'. (#300, #301) @ThiesDS

# gtrendsR 1.4.2

- gtrendsR can now be used behind a proxy, see `setHandleParameters()` (#245) @VictorYammouni

- Fixes breaking changes introduced by Google Trends (#273, #274)

- Now able to search with "&" character (#267). `gtrends("A&W", geo = "CA")`

- gtrendsR now depends on R >= 3.2.0 (#264)

- Fixes error when mixing topic and search terms in query (#284) @mamut86

# gtrendsR 1.4.1

- It is now possible to use DMA (`gtrends(keyword="obama",geo="US-AL-630")`) (#238).

- Added missing country codes (#213).

- Can now mix both country and sub country codes (`plot(gtrends("pizza", geo = c("CA", "GB-ENG")))`) (#218).

- New parameter `low_search_volume` allowing low search volume regions (#229). 

- Fixing breaking changes that were introduced by Google Trends (#252) @kevinmager65. 

- Can now search without keywords (`gtrends(geo = c("CA"), category = 20)`).

# gtrendsR 1.4.0

## Major change

- Due to recent changes to Google Trends API, `gtrendsR` has been almost re-written form scratch. One big visible change is that signing into a Google account is no longer required to download data from Google Trends.

## Bug fixes

- Added missing all DMAs within the US (#146).

- gtrendsR now correctly use the `hl` (local) parameter to retrieve data (@antaldaniel).

- Better support for queries using non-ascii keywords (`gtrends("österreich")`).

# gtrendsR 1.3.5

- Added some missing country codes (#94). `data("countries")`.

- Now able to specify for which Google products the request is performed using the `gprop` parameter (#112). Possible values are `froogle` for Google shopping, `new` for Google news, `youtube` for YouTube videos and `images` for Google images.

- Now able to query using Google categories `?gtrends` (#89).

- Returned data is now tidy (#110). The `trend` object now contains `keyword`, `hits` and `location` header (`head(sport_trend$trend)`).

- Fixing a bug where overriding `countries` variable was breaking package's functionalities (#109).

- Correct default fallback for querying for google.user and google.password in gconnect (#121)

# gtrendsR 1.3.4

- Fixing login issue due to backend changes made by Google (#103). Thanks to @MrLoh for initial implementation and suggestions.

- Fixing crash occurring when monthly data was returned (#81).

- `gtrends()` will throw a warning if data is returned monthly (#80).

- `gtrends()` is now correctly detecting when quota limit is reached (#90).

# gtrendsR 1.3.3

- A ggplot2 object can now be returned for further customization. `plot(gtrends("NHL")) + ggtitle("NHL trend") + theme(legend.position="none")`

- Support for hourly and daily data (#67). For example, it is now possible to have hourly data for the last seven days with `gtrends("nhl", geo = "CA", res = "7d")`. Use `?gtrends` for more information about the time resolution supported by the package.

- Support for categories (#46). Ex.: `gtrends("NHL", geo = "US", cat = "0-20")` will search only in the *sport* category.

- Some countries (ex: Hong Kong) were missing from the list (#69).

- Various typos and documentation work.

# gtrendsR 1.3.2

- Added support for sub-countries (#25). Ex.: `gtrends("NHL", geo = "CA-QC")` will return trends data for Québec province in Canada. The list of supported sub-countries can be obtained via `data(countries)`.

- Data parsing should work for any data returned by Google Trends (i.e. countries independent).

- Better support for queries using keywords in different languages (#50, #57). Ex.: `gtrends("蘋果", geo = "TW")`

- Now able to specify up to five countries (#53) via `gtrends("NHL", geo = c("CA", "US"))`

- Fixing issue #51 allowing UK-based queries via `geo = "GB"`

# gtrendsR 1.3.1

- Fixing issue #34 where connection verification was not done properly.
- Now able to use more latin character in query. For example: `gtrends("montréal")`.
- Can now deal with data returned other than in English language.

# gtrendsR 1.3.0

- First version of gtrendsR
