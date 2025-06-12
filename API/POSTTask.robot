*** Settings ***
Library     RequestsLibrary

*** Variables ***
${BASE_URL}     https://videogamedb.uk:443/
${ENDPOINT}     api/v2/videogame
&{HEADERS}      Content-Type=application/json
&{BODY}         category=Platform    name=Mario     rating=Mature       releaseDate=2012-05-04      reviewScore=85
*** Test Cases ***
Post Request Example
    Create Session    jsonplaceholder    ${BASE_URL}    verify=False
    ${response}=      POST On Session    jsonplaceholder    ${ENDPOINT}    json=${BODY}    headers=${HEADERS}
    Log    ${response.status_code}
    Log    ${response.content}
    Should Be Equal As Numbers    ${response.status_code}    200